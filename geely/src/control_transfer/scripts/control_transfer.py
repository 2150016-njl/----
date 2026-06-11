#! /home/plusgo/miniconda3/envs/geely/bin/python
import rospy
from ros_interface.msg import ADCTrajectory, TrajectoryPoint, PathPoint, ObuCmd, ObuCmdMsg
from ros_interface.msg import PlanningCmd
from rl_planning.msg import RLPlanningPath


class ControlTransfer:
    def __init__(self):
        rospy.init_node("control_transfer", anonymous=True, log_level=rospy.DEBUG)
        rospy.loginfo("#####################")
        rospy.loginfo("control transfer node processing...")
        rospy.loginfo("#####################\n")

        rospy.Timer(rospy.Duration(0.1), self.publish_adc_path_periodic)

        self.rl_planning_path_sub = rospy.Subscriber(
            "/RL_Planning_Path",
            RLPlanningPath,
            self.rl_planning_path_callback,
            queue_size=10
        )
        self.adc_trajectory_pub = rospy.Publisher(
            "/planning/ADCTrajectory",
            ADCTrajectory,
            queue_size=10
        )
        self.planning_cmd_pub = rospy.Publisher(
            "/planning/PlanningCmd",
            PlanningCmd,
            queue_size=10
        )
        self.obucmdmsg_sub = rospy.Subscriber(
            "/vui_client/ObuCmdMsg",
            ObuCmdMsg, self.ObuCmdCallback,
            queue_size=10)

        self.val = 0
        self.code = 0
        self.mode = 0

        # 创建ADCTrajectory消息
        self.adc_trajectory = ADCTrajectory()

    def ObuCmdCallback(self, obucmd_msg):
        for obucmd in obucmd_msg.obu_cmd_list:
            self.val = obucmd.val
            self.code = obucmd.code

    def rl_planning_path_callback(self, rlplanning_msg):

        adc_trajectory = ADCTrajectory()  # 创建ADCTrajectory消息

        # 设置基本参数
        adc_trajectory.total_path_length = rlplanning_msg.s[-1] - rlplanning_msg.s[0]  # TODO: need to be changed
        adc_trajectory.total_path_time = 5.0  # fixed number
        # adc_trajectory.driving_mode = 0  # 驾驶模式：1 自动驾驶 0 退出自动驾驶

        if self.code == 10001:
            if self.val == 1:
                self.mode = 1
            elif self.val == 2:
                self.mode = 0
        elif self.code == 10042:
            if self.val == 2:
                self.mode = 1
        adc_trajectory.driving_mode = self.mode

        # 转换路点
        trajectory_points = []
        for i in range(500):
            trajectory_point = TrajectoryPoint()
            path_point = PathPoint()
            # 转换坐标
            path_point.x = rlplanning_msg.fx[i]
            path_point.y = rlplanning_msg.fy[i]
            path_point.z = 0.0
            path_point.theta = rlplanning_msg.theta[i]  # 可根据需要计算航向角
            path_point.kappa = rlplanning_msg.kappa[i]  # 可根据需要计算曲率
            path_point.s = rlplanning_msg.s[i] - rlplanning_msg.s[0]  # 可根据需要计算s
            trajectory_point.path_point = path_point
            trajectory_point.a = rlplanning_msg.a[i]
            trajectory_point.v = rlplanning_msg.v[i]
            trajectory_point.relative_time = i * 0.05
            trajectory_point.gear = 1  # 档位
            trajectory_point.is_steer_valid = False

            trajectory_points.append(trajectory_point)

        adc_trajectory.header.stamp = rospy.Time.now()  # 设置Header
        adc_trajectory.trajectory_points = trajectory_points

        self.adc_trajectory = adc_trajectory

        # # 创建并发布PlanningCmd消息
        planning_cmd = PlanningCmd()
        planning_cmd.header.stamp = rospy.Time.now()  # 设置Header
        # # 设置默认值
        # planning_cmd.turn_lamp_ctrl = 0  # 转向灯关闭
        # planning_cmd.high_beam_ctrl = 0  # 远光灯关闭
        # planning_cmd.low_beam_ctrl = 1   # 近光灯开启
        # planning_cmd.horn_ctrl = 0       # 喇叭关闭
        # planning_cmd.position_lamp_ctrl = 1  # 位置灯开启

        self.planning_cmd_pub.publish(planning_cmd)

        # rospy.loginfo_throttle(1.0, "Control Transfer processing...")
        rospy.logdebug("driving mode: %i\n", self.mode)

    def publish_adc_path_periodic(self, event):
        # rospy.loginfo_throttle(0.5, "publishing adc trajectory...")
        # 发布转换后的轨迹
        self.adc_trajectory_pub.publish(self.adc_trajectory)

    def run(self):
        while not rospy.is_shutdown():
            # 发布转换后的轨迹
            rospy.spin()


if __name__ == "__main__":
    ControlTransfer().run()
