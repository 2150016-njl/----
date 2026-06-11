#!/home/plusgo/miniconda3/envs/geely/bin/python
# coding=utf-8

import numpy as np
import rospy
import sys
import time
from threading import Thread
from rl_planning.msg import VehicleInfo, VehicleInfoBatch, CSP
from Learning_based_replanning_process import LBReplaning
from rl_planning.msg import RLPlanningPath
# from rl_planning.msg import PlanningPath
from util import Lane
from interface.msg import Global_route, Lanes

project_path = '/home/nie/geely'
sys.path.append(project_path)


class Learning_based_replanning(LBReplaning):

    def __init__(self):
        super().__init__()

        self.SRQ_value = 0.0
        self.collision_risk = False
        self.global_route_msg = None
        self.obj_msg = None

        self.obj_info_batch_msg = None

        self.planning_path_msg = RLPlanningPath()
        self.planning_traj_msg = RLPlanningPath()

        self.fpath_pub = rospy.Publisher('/RL_Planning_Path', RLPlanningPath, queue_size=2)
        self.fpath_traj_pub = rospy.Publisher('/RL_Planning_Traj', RLPlanningPath, queue_size=2)
        # 更新全局路径csp
        rospy.Subscriber('/global_csp', CSP, self.update_global_csp_callback)

        rospy.Subscriber('/vehicle_info_batch', VehicleInfoBatch, self.generate_control_callback)
        # 更新全局路径
        rospy.Subscriber('/rt_Obj_info_batch', VehicleInfoBatch, self.update_rt_obj_info)
        rospy.Subscriber('/global_route_info', Global_route, self.update_global_route_callback)

    def update_global_csp_callback(self, global_csp_msg):
        self.global_csp_msg = global_csp_msg

    def generate_control_callback(self, obj_msg):

        self.obj_msg = obj_msg
        if self.global_csp_msg is None:
            # print("waiting for global csp")
            return

        _, _, self.collision_risk, self.SRQ_value = self.replanning_process(self.obj_msg)

    def update_rt_obj_info(self, obj_msg):
        self.rt_obj_info_batch = obj_msg.vehicle_info_batch
        # rospy.loginfo("Updating rt_obj_info...")

    def publish_planning_path_peoridic(self, event):
        rospy.loginfo_once("publishing rl planning path...")

        if self.motionPlanner_rt.csp is not None:
            self.get_rt_ego_info()

            Tf = 2.0
            safe_lon_act = self.safe_lon_act
            safe_lat_act = self.safe_lat_act
            # safe_lon_act = 1.0
            # safe_lat_act = 0.0
            fpath_rt = self.rt_replanning_process(lat_ter=safe_lat_act, lon_ter=safe_lon_act, Tf=Tf)
            self.rt_safe_speed = fpath_rt.s_d[min(14, len(fpath_rt.s_d) - 1)]  # 怠速 #1223注释
            # self.rt_safe_speed = fpath_rt.s_d[min(self.f_idx+14, len(fpath_rt.s_d) - 1)] # ????1223新增，和东风一致，快系统安全速度
            # print("safe_lon_act = ", safe_lon_act)
            # print("safe_lat_act = ", safe_lat_act)

            # vf = self.opti_vf
            # df_n = self.opti_df_n
            # fpath_rt = self.rt_opti_replanning_process(df_n, vf, Tf=Tf)

            path_rl = self.fpath_interpolate(fpath_rt)

            traj_num = len(fpath_rt.x)

            try:
                # print("使用慢规划结果发布轨迹")
                self.planning_traj_msg.fx[:traj_num] = self.slow_fpath.x
                # print("slow_fpath.x:", self.slow_fpath.x)
                self.planning_traj_msg.fy[:traj_num] = self.slow_fpath.y
                self.planning_traj_msg.theta[:traj_num] = self.slow_fpath.yaw
                self.planning_traj_msg.s[:traj_num] = self.slow_fpath.s
            except Exception as e:
                print(f"发生错误：{e}")
                self.planning_traj_msg.fx[:traj_num] = fpath_rt.x
                # print("fpath_rt.x:", fpath_rt.x)
                self.planning_traj_msg.fy[:traj_num] = fpath_rt.y
                self.planning_traj_msg.theta[:traj_num] = fpath_rt.yaw
                self.planning_traj_msg.s[:traj_num] = fpath_rt.s

            self.planning_path_msg.fx = path_rl.fx
            self.planning_path_msg.fy = path_rl.fy
            self.planning_path_msg.v = path_rl.v
            self.planning_path_msg.a = path_rl.a
            self.planning_path_msg.theta = path_rl.theta
            self.planning_path_msg.kappa = path_rl.kappa
            self.planning_path_msg.s = path_rl.s
            self.planning_path_msg.collision_risk = self.collision_risk
            self.planning_path_msg.SRQ_value = self.SRQ_value
        print('p')
        self.fpath_pub.publish(self.planning_path_msg)
        self.fpath_traj_pub.publish(self.planning_traj_msg)

    def global_route_periodic_update(self, event):

        if len(self.global_route_msg.routes) == 0:
            return
        if self.global_csp_msg is None:
            return
        if self.ego_pose is None:
            return
        if self.module_ok:
            return

        rospy.logwarn("updating planning global route...\n")

    def update_global_route_callback(self, msg_global_route):
        self.global_route_msg = msg_global_route

    def run(self):
        rospy.init_node('Learning_based_replanning_Node', anonymous=True, log_level=rospy.DEBUG)
        rospy.loginfo("#####################")
        rospy.loginfo("Learning_based_replanning node processing...")
        rospy.loginfo("#####################\n")
        rospy.Timer(rospy.Duration(1.0), self.global_route_periodic_update)
        rospy.Timer(rospy.Duration(0.1), self.publish_planning_path_peoridic)

        rospy.spin()

    def shutdown(self):
        rospy.loginfo("Stopping the RL_node...")
        # 可以做一些清理工作
        rospy.loginfo("Stopped the RL_node.")


if __name__ == '__main__':
    rl_planning_node = Learning_based_replanning()
    rl_planning_node.run()
