#!/home/plusgo/miniconda3/envs/geely/bin/python
# 别忘了修改为绝对路径!!!!
import math
import time
import argparse
# from gym import spaces
# from stable_baselines3 import SAC
from config import cfg, log_config_to_file, cfg_from_list, cfg_from_yaml_file
from agents.local_planner.frenet_optimal_trajectory import FrenetPlanner as MotionPlanner
from agents.local_planner.frenet_optimal_trajectory import velocity_inertial_to_frenet, select_nearest_bv, Frenet_path
from agents.local_planner import cubic_spline_planner
from rl_planning.msg import VehicleInfo, VehicleInfoBatch
from agents.local_planner.decision_making import state_machine
from interface.msg import Global_route
import rospy
from util import *
from scipy.interpolate import interp1d
from scipy.interpolate import splprep, splev
from scipy.signal import savgol_filter

import pickle


def smooth_path(x, y, smoothing_factor=1.0):
    tck, _ = splprep([x, y], s=smoothing_factor)
    x_smooth, y_smooth = splev(np.linspace(0, 1, len(x)), tck)
    return x_smooth, y_smooth


def compute_derivatives(x, y, window_size=5, poly_order=2):
    dx = savgol_filter(x, window_size, poly_order, deriv=1)
    dy = savgol_filter(y, window_size, poly_order, deriv=1)
    ddx = savgol_filter(x, window_size, poly_order, deriv=2)
    ddy = savgol_filter(y, window_size, poly_order, deriv=2)
    return dx, dy, ddx, ddy


def compute_curvature(x, y):
    dx, dy, ddx, ddy = compute_derivatives(x, y)
    numerator = np.abs(dx * ddy - dy * ddx)
    denominator = (dx ** 2 + dy ** 2) ** 1.5
    curvature = numerator / denominator
    return curvature


def compute_heading(x, y):
    """
    计算路径点的航向角（heading）。

    参数:
        x (np.array): 路径点的 x 坐标。
        y (np.array): 路径点的 y 坐标。

    返回:
        heading (np.array): 每个点的航向角，范围在 [-pi, pi]。
    """
    # 计算一阶导数（切向量）
    dx = np.gradient(x)
    dy = np.gradient(y)

    # 计算航向角
    heading = np.arctan2(dy, dx)

    return heading

def frenet_to_inertial(s, d, csp):
    """
    transform a point from frenet frame to inertial frame
    input: frenet s and d variable and the instance of global cubic spline class
    output: x and y in global frame
    """
    ix, iy, iz = csp.calc_position(s)
    iyaw = csp.calc_yaw(s)
    x = ix + d * math.cos(iyaw + math.pi / 2.0)
    y = iy + d * math.sin(iyaw + math.pi / 2.0)
    return x, y, iz, iyaw


def parse_args_cfgs():
    parser = argparse.ArgumentParser()
    # 别忘了修改为绝对路径!!!!
    parser.add_argument('--cfg_file', type=str,
                        default='/home/nie/geely/src/rl_planning/scripts/tools/cfgs/config.yaml')  # 别忘了修改为绝对路径!!!!

    args, unknown = parser.parse_known_args()

    cfg_from_yaml_file(args.cfg_file, cfg)

    cfg.EXP_GROUP_PATH = '/'.join(args.cfg_file.split('/')[1:-1])  # remove 'cfgs' and 'xxxx.yaml'

    return args, cfg


class RLPlanning:
    def __init__(self):
        self.ego_state = None
        args, cfg = parse_args_cfgs()
        self.args = args

        # ego info
        self.ego_pose = None

        # ros msg
        self.global_route_msg = Global_route()
        self.global_route = None
        self.cur_lane_idx = None
        self.tar_lane_idx = None
        self.lane_info = None
        self.vehicle_info = VehicleInfo()
        self.vehicle_info_batch_msg = VehicleInfoBatch()
        self.vehicle_info_batch = self.vehicle_info_batch_msg.vehicle_info_batch
        self.ego_speed_last = 0.0

        # simulation
        self.verbosity = 0
        self.auto_render = False
        self.n_step = 0

        # constraints
        self.targetSpeed = float(cfg.GYM_ENV.TARGET_SPEED)
        self.maxSpeed = float(cfg.GYM_ENV.MAX_SPEED)
        self.minSpeed = float(cfg.GYM_ENV.MIN_SPEED)
        self.maxAcc = float(cfg.GYM_ENV.MAX_ACC)
        self.LANE_WIDTH = float(cfg.GYM_ENV.LANE_WIDTH)
        self.n_obj = 4

        # frenet
        self.csp_idx = 0
        self.f_idx = 0
        self.f_idx_safe = 0
        self.init_s = None  # initial frenet s value - will be updated in reset function
        self.init_d = None
        self.max_s = int(cfg.FRENET.MAX_S)
        self.d_max_s = int(cfg.FRENET.D_MAX_S)
        self.lanechange = False
        self.is_first_path = True
        self.obj_max_vs = int(cfg.TRAFFIC_MANAGER.MAX_SPEED)
        self.obj_min_vs = int(cfg.TRAFFIC_MANAGER.MIN_SPEED)
        self.df_ego = 0.0
        self.last_num_overtake = 0
        self.global_csp_msg = None
        self.global_csp = None

        # RL
        # self.obs_dim = (1, 30)
        # self.observation_space = spaces.Box(-np.inf, np.inf, shape=self.obs_dim, dtype='float32')
        # self.state = np.zeros_like(self.observation_space.sample())
        # self.sac_lanechange_model = SAC.load(
        #     '/home/karim/geely/src/Learning_Based_Replanning/scripts/Trained_Models/SafeRL_Geely_Model.zip')  # 绝对路径
        self.num_collision = 0
        self.num_episode = 0
        self.flag_reset_scene = 1

        self.num_using_rules = 0
        self.num_using_RL = 0
        self.last_df_n = 0.0
        self.last_acc_input = 0.0
        self.travel_distance = 0.0
        self.motionPlanner = MotionPlanner()
        self.defualt_rules_module = state_machine()

        self.dt = 0.05
        self.max_runtime = 0
        self.runtime_steps = 0
        self.runtime = []

        self.kappa_cur = []

    def update_ego_info(self, veh_info):
        ego_info = veh_info[0]
        ego_x = ego_info.actor_pos.x
        ego_y = ego_info.actor_pos.y
        actor_vel = ego_info.actor_vel
        ego_v = [actor_vel.x, actor_vel.y, actor_vel.z]
        ego_phi = ego_info.actor_psi
        actor_a = ego_info.actor_acc
        ego_a = [actor_a.x, actor_a.y, actor_a.z]

        self.ego_pose = EGO_POSE(ego_x, ego_y, ego_v, ego_phi, ego_a)

    def update_global_csp(self):
        s = np.array(self.global_csp_msg.s)
        nx = self.global_csp_msg.nx

        sx = cubic_spline_planner.Spline_from_data(nx,
                                                   self.global_csp_msg.sx_a,
                                                   self.global_csp_msg.sx_b,
                                                   self.global_csp_msg.sx_c,
                                                   self.global_csp_msg.sx_d,
                                                   s,
                                                   self.global_csp_msg.sx_y)

        sy = cubic_spline_planner.Spline_from_data(nx,
                                                   self.global_csp_msg.sy_a,
                                                   self.global_csp_msg.sy_b,
                                                   self.global_csp_msg.sy_c,
                                                   self.global_csp_msg.sy_d,
                                                   s,
                                                   self.global_csp_msg.sy_y)

        sz = cubic_spline_planner.Spline_from_data(nx,
                                                   self.global_csp_msg.sz_a,
                                                   self.global_csp_msg.sz_b,
                                                   self.global_csp_msg.sz_c,
                                                   self.global_csp_msg.sz_d,
                                                   s,
                                                   self.global_csp_msg.sz_y)

        self.motionPlanner.csp = cubic_spline_planner.Spline3D_from_data(s, sx, sy, sz)

    def begin_modules(self):
        self.motionPlanner.start()
        self.global_csp = self.motionPlanner.csp

        cur_s, f_idx = calc_cur_s(self.global_csp, self.ego_pose, 0)
        self.f_idx = f_idx
        cur_s_yaw = self.global_csp.calc_yaw(cur_s)
        cur_s_k = self.global_csp.calc_curvature(cur_s)
        cur_d = calc_cur_d(self.ego_pose, self.global_csp, cur_s)
        cur_s_d = self.ego_pose.speed * math.cos(self.ego_pose.yaw - cur_s_yaw)
        cur_d_d = self.ego_pose.speed * math.sin(self.ego_pose.yaw - cur_s_yaw)
        cur_s_dd = self.ego_pose.acc * math.cos(self.ego_pose.yaw - cur_s_yaw) / (1 - cur_d * cur_s_k)

        self.motionPlanner.reset(cur_s, cur_d, cur_s_d, cur_s_dd, cur_d_d, 0, df_n=0, Tf=3, Vf_n=0, optimal_path=False)

    def obj_info(self):
        """
        Frenet:  [s,d,v_s, v_d, phi_Frenet]
        """

        ###
        # find closest 4 npc vehicle
        idx1, idx2, idx3, idx4 = select_nearest_bv(self.motionPlanner.ob, \
                                                   self.ego_pose.x, self.ego_pose.y)
        nearest_ob = []
        for idx in [idx1, idx2, idx3, idx4]:
            if idx > -1:
                nearest_ob.append(self.motionPlanner.ob[idx])

        ###

        others_s = np.zeros(self.n_obj)
        others_d = np.zeros(self.n_obj)
        others_v_S = np.zeros(self.n_obj)
        others_v_D = np.zeros(self.n_obj)
        others_phi_Frenet = np.zeros(self.n_obj)

        for i, ob in enumerate(nearest_ob):
            ob_state = ob.obstacle_state(self.max_s)
            try:
                ob_fstate, f_idx = self.motionPlanner.estimate_frenet_state_new(ob_state, max(self.f_idx - 25, 0))
            except:
                ob_fstate = np.zeros(5)
                continue
            others_s[i] = ob_fstate[0]
            others_d[i] = ob_fstate[3]
            others_v_S[i] = ob_fstate[1]
            others_v_D[i] = ob_fstate[4]
            others_phi_Frenet[i] = ob_fstate[2]
        obj_info_Mux = np.vstack((others_s, others_d, others_v_S, others_v_D, others_phi_Frenet))
        return obj_info_Mux

    def state_input_vector(self, v_S, v_D, ego_s, ego_d, ego_psi):
        state_vector = np.zeros(30)
        state_vector[0] = ego_s / 200.0
        state_vector[1] = ego_d / (2 * self.LANE_WIDTH)
        state_vector[2] = v_S / self.maxSpeed
        state_vector[3] = v_D
        state_vector[4] = ego_psi

        obj_mat = self.obj_info()
        obj_mat[0, :] = obj_mat[0, :] - ego_s
        obj_sorted_id = np.argsort(abs(obj_mat[0, :]))
        obj_mat_surr = obj_mat[:, obj_sorted_id][:, 0:8]
        for i in range(np.shape(obj_mat)[1]):
            state_vector[5 * i + 5] = obj_mat_surr[0][i] / 100.0
            state_vector[5 * i + 6] = (obj_mat_surr[1][i] - ego_d) / (2 * self.LANE_WIDTH)
            state_vector[5 * i + 7] = (obj_mat_surr[2][i] - v_S) / self.obj_max_vs
            state_vector[5 * i + 8] = obj_mat_surr[3][i] - v_D
            state_vector[5 * i + 9] = obj_mat_surr[4][i]

        return state_vector

    def fpath_interpolate(self, fpath):

        s = fpath.s
        d = fpath.d
        theta = fpath.yaw
        kappa = fpath.c

        dx = np.diff(s)
        dy = np.diff(d)
        dl = np.sqrt(dx ** 2 + dy ** 2)
        l_original = np.zeros(50)
        l_original[1:] = np.cumsum(dl)
        L = l_original[-1]  # 原始轨迹总弧长

        # 弧长参数化插值函数
        f_s = interp1d(l_original, s, kind='linear', fill_value='extrapolate')
        f_d = interp1d(l_original, d, kind='linear', fill_value='extrapolate')

        # 生成目标弧长点（假设需要500个点，间隔0.1米）
        l_target = np.linspace(0, 49.5, 500)  # 总长49.5米

        # 创建布尔掩码区分可插值区域和延伸区域
        mask = l_target <= L  # 标记哪些点需要插值

        # 批量处理插值部分
        s_new = np.zeros_like(l_target)
        d_new = np.zeros_like(l_target)
        theta_new = np.zeros_like(l_target)

        s_new[mask] = f_s(l_target[mask])  # 向量化插值
        d_new[mask] = f_d(l_target[mask])

        # 批量处理延伸部分
        s_new[~mask] = s[-1] + (l_target[~mask] - L)  # 沿s轴延伸
        d_new[~mask] = d[-1]  # 保持侧向位移
        theta_new[~mask] = theta[-1]

        fx = []
        fy = []

        for i in range(len(s_new)):
            x, y, _, _ = frenet_to_inertial(s_new[i], d_new[i], self.global_csp)
            fx.append(x)
            fy.append(y)

        num_points = len(fpath.s) * 10

        fpath_interpolated = Frenet_path()
        fpath_interpolated.s = np.zeros(num_points)
        fpath_interpolated.x = np.zeros(num_points)
        fpath_interpolated.y = np.zeros(num_points)
        fpath_interpolated.yaw = np.zeros(num_points)
        fpath_interpolated.c = np.zeros(num_points)
        fpath_interpolated.v = np.zeros(num_points)
        fpath_interpolated.a = np.zeros(num_points)

        target_speed = fpath.s_d[min(self.f_idx + 14, len(fpath.s_d) - 1)]
        # target_speed = 1.8
        target_a = fpath.a[min(self.f_idx + 14, len(fpath.a) - 1)]
        t1 = time.time()
        x_smooth, y_smooth = smooth_path(fx, fy)
        c = compute_curvature(x_smooth, y_smooth)
        heading = compute_heading(x_smooth, y_smooth)

        t2 = time.time()
        print('t_inter = ', t2 - t1)
        for i in range(num_points):
            fpath_interpolated.s[i] = l_target[i]
            fpath_interpolated.x[i] = x_smooth[i]
            fpath_interpolated.y[i] = y_smooth[i]
            fpath_interpolated.v[i] = target_speed
            fpath_interpolated.a[i] = target_a
            fpath_interpolated.yaw[i] = heading[i]
            fpath_interpolated.c[i] = -c[i]

        # save_path = '/home/yangshuo/geely/catkin_ws/1/kappa_cur_6.pkl'
        # self.kappa_cur.append(fpath_interpolated.c)
        # with open(save_path, 'wb') as f:
        #     pickle.dump(self.kappa_cur, f)
        #     print('saved pkl')

        return fpath_interpolated

    def generate_fpath(self, vehicle_info_batch):
        self.vehicle_info_batch = vehicle_info_batch
        self.update_ego_info(vehicle_info_batch)

        """****** Action Space ******"""

        # df_n = 0.0
        # acc_input = 0.0

        '''******  Planner  ******'''

        ####
        # update backgroud vehicle info
        other_vehicle = []
        for i in range(1, len(vehicle_info_batch)):
            vehicle_info = vehicle_info_batch[i]
            if vehicle_info.id < 0:
                continue
            if vehicle_info.actor_rel_pos.x < self.defualt_rules_module.back_dist or \
                    vehicle_info.actor_rel_pos.x > self.defualt_rules_module.max_distance or \
                    abs(vehicle_info.actor_rel_pos.y) > 25:
                continue
            other_vehicle.append(Obstacles(vehicle_info))

        self.motionPlanner.update_obstacles(other_vehicle)
        ####

        ego_velocity = self.ego_pose.v
        ego_acc = self.ego_pose.a
        temp = [ego_velocity, ego_acc]
        speed = self.ego_pose.speed

        if self.n_step == 0:
            self.ego_speed_last = speed

        acc = self.ego_pose.acc
        ego_psi = self.ego_pose.yaw
        ego_x = self.ego_pose.x
        ego_y = self.ego_pose.y

        self.ego_state = [ego_x, ego_y, speed, acc, ego_psi, temp, self.max_s]

        ego_fstate, f_idx = self.motionPlanner.estimate_frenet_state_new(self.ego_state, self.f_idx)
        self.f_idx = f_idx
        self.ego_pose.s = ego_fstate[0]
        self.ego_pose.s_d = ego_fstate[1]
        self.ego_pose.d = ego_fstate[3]
        ####
        # rl planning
        # learn_mode = False
        # obs = self.state
        # action, _ = self.sac_lanechange_model.predict(obs)
        # net_df = action[0][0] * 0.5
        # acc_input = action[0][1] * 4.0
        # rospy.loginfo(net_df)
        ####

        ####

        cur_s = self.ego_pose.s
        cur_s = 0 if cur_s < 0 else cur_s
        cur_s_d = self.ego_pose.s_d
        TARGET_SPEED = self.targetSpeed

        TARGET_OFFSET = 0.0
        TARGET_V = np.array([0]) + TARGET_SPEED

        # TARGET_D = np.array([-3.5 / 5, 0, 3.5 / 3]) + TARGET_OFFSET
        TARGET_D = np.array([0]) + TARGET_OFFSET
        # if learn_mode:
        #     TARGET_D = np.array([net_df]) + TARGET_OFFSET

        df = TARGET_D
        # df = [0]
        tf = [5]
        vf = TARGET_V
        tar_v = TARGET_SPEED
        tar_d = TARGET_OFFSET
        # tar_d = 0

        ####

        ####
        # lattice planning
        fplist = []
        fplist_infeas = []
        for d in df:
            for t in tf:
                for v in vf:
                    fpath_rl = self.motionPlanner.run_step_new(
                        ego_fstate, self.f_idx, df=d, tf=t, vf=v, tar_d=tar_d, tar_v=tar_v)
                    # print(fpath_rl.d[0], fpath_rl.d[-1])
                    # if (fpath_rl.s[-1] - fpath_rl.s[0]) > 30:
                    # print("\n")
                    # print(v)
                    # print("\n")

                    ####
                    # check fpath
                    col_flag = self.motionPlanner.check_collision(fpath_rl)
                    # print(col_flag)
                    # col_flag = False
                    if not col_flag:
                        fplist.append(fpath_rl)
                    else:
                        fplist_infeas.append(fpath_rl)
                    ####
        # select optimal fpath
        mincost = float("inf")
        bestpath_idx = None
        for i, fp in enumerate(fplist):
            if mincost >= fp.cf:
                mincost = fp.cf
                bestpath_idx = i
        ####

        ####
        # exception
        if bestpath_idx is None:
            rospy.logwarn("No feasible path found!")
            fpath_rl, self.lanechange, _ = self.motionPlanner.run_step_single_path( \
                ego_fstate, self.f_idx, df_n=0.0, Tf=5, Vf_n=0)
            fplist = [fpath_rl]
            bestpath_idx = 0
        ####

        '''******  Longitudinal Controller  ******'''
        # cmdSpeed = self.ego_speed_last + float(acc_input) * self.dt
        '''******  Update State Space  ******'''
        vx_ego = ego_velocity[0]
        vy_ego = ego_velocity[1]
        vz_ego = ego_velocity[2]
        ego_s = ego_fstate[0]
        ego_d = ego_fstate[1]

        # v_S, v_D = velocity_inertial_to_frenet(ego_s, vx_ego, vy_ego, vz_ego, self.motionPlanner.csp)
        # state_vector = self.state_input_vector(v_S, v_D, ego_s, ego_d, ego_psi)
        # for i in range(len(state_vector)):
        #     self.state[0][i] = state_vector[i]

        self.n_step += 1
        fpath = fplist[bestpath_idx]
        self.motionPlanner.last_fpath = fpath
        return fpath
