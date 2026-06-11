#!/usr/bin/env python
import copy
import pickle
import sys
import math
import random

import matplotlib.pyplot as plt
import rospy
import numpy as np
import time
import os
import torch
import sys
# import carla
import logging
from scipy.interpolate import interp1d

from scipy.interpolate import splrep, splev

project_path = os.path.abspath(os.path.join(os.getcwd(), ""))
sys.path.append(project_path)

current_path = os.path.realpath(__file__)
root_path = os.path.dirname(current_path)

from agents.utils import EGO_POSE, closest_wp_idx, preview_point, match_point, \
    calculate_laterror, calc_cur_s, calc_cur_d, get_obs_info, euclidean_distance, find_value_in_2DTable, closest
from agents.low_level_controller.PID_controller import PIDController
from agents import geometry_utils
from agents.local_planner.frenet_optimal_trajectory import FrenetPlanner as MotionPlanner
from agents.config import cfg, log_config_to_file, cfg_from_list, cfg_from_yaml_file
from rl_planning.msg import RLPlanningPath

from agents.safety_policy_improvement.parameter_config import lon_lat_Config
from agents.safety_policy_improvement.spat_joint_optimization_lon_lat_linear import \
    spat_joint_optimization_lon_lat_linear
from Network_Models.Pretrain_model.model import get_model
from Network_Models.SQR_model.model import get_srq_model
from scipy.interpolate import interp1d
from scipy.interpolate import splprep, splev
from scipy.signal import savgol_filter

import sys
import os

# 获取当前脚本所在的绝对路径 (.../scripts)
current_dir = os.path.dirname(os.path.abspath(__file__))

# 向上回溯找到项目根目录
# scripts -> rl_planning -> src -> geely (包含 src 的那个目录)
project_root = os.path.dirname(os.path.dirname(os.path.dirname(current_dir)))

# 将项目根目录加入系统路径，这样 Python 就能找到 'src' 了
if project_root not in sys.path:
    sys.path.append(project_root)

import src.rl_planning.scripts.Network_Models_1.save_load as sl
from src.rl_planning.scripts.Network_Models_1.model import Transformer

lon_lat_Config = lon_lat_Config()
MAX_SPEED = 20  # 最大速度, m/s
POS_NORMALIZATION = 80  # 归一化因子


def smooth_path(x, y, smoothing_factor=1.0):
    # # 打印输入参数的类型和值
    # print(f"x 的类型: {type(x)}")
    # print(f"y 的类型: {type(y)}")
    # print(f"smoothing_factor 的类型: {type(smoothing_factor)}, smoothing_factor 的值: {smoothing_factor}")

    # 检查 x 和 y 数组的长度是否一致
    if len(x) != len(y):
        print("错误: x 和 y 数组的长度必须一致")
        raise ValueError("x 和 y 数组的长度必须一致")

        # 检查 x 和 y 中是否有 NaN 或 inf 值
    x = np.array(x)
    y = np.array(y)
    if np.isnan(x).any() or np.isnan(y).any() or np.isinf(x).any() or np.isinf(y).any():
        print("错误: x 或 y 包含 NaN 或 inf 值")
        raise ValueError("x 或 y 包含 NaN 或 inf 值")

    # 检查是否有重复点
    points = np.column_stack((x, y))
    unique_points, indices = np.unique(points, axis=0, return_inverse=True)
    counts = np.bincount(indices)
    repeated_mask = counts[indices] > 1
    if repeated_mask.any():
        print("警告: 输入数据包含重复点，将添加微小偏移量。")
        # 定义一个极小的偏移量
        offset = 1e-8
        # 为重复点添加偏移量
        points[repeated_mask] += np.random.uniform(-offset, offset, size=points[repeated_mask].shape)
        x = points[:, 0]
        y = points[:, 1]
    try:
        tck, _ = splprep([x, y], s=smoothing_factor)
        x_smooth, y_smooth = splev(np.linspace(0, 1, len(x)), tck)
        return x_smooth, y_smooth
    except ValueError as e:
        print(f"调用 splprep 函数时出错: {e}")
        raise




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


def discretize_df(start, end, df, n):
    # 确定范围和步长

    step = (end - start) / n

    # 生成等分点
    points = [start + i * step for i in range(n + 1)]

    # 找到与 df 最接近的点
    closest_point = min(points, key=lambda x: abs(x - df))
    return closest_point


class SimpleChangeDetector:
    def __init__(self, initial_value):
        self.value = initial_value  # 当前值
        self.previous_value = initial_value  # 上一次的值
        self.has_changed = False  # 是否变化的标志

    def update(self, new_value):
        # 保存上一次的值
        self.previous_value = self.value
        # 更新当前值
        self.value = new_value
        # 判断是否变化
        self.has_changed = (self.value != self.previous_value)


class LBReplaning:
    def __init__(self):

        self.rt_safe_speed = 0.0
        self.opti_df_n = 0.0
        self.opti_vf = 0.0
        self.slow_fpath = None
        self.device = 'cuda'
        self.module_ok = False
        self.vehicle_info_batch = None
        self.f_kappa_pre = None
        self.v_target = 0.0
        self.detector = SimpleChangeDetector(self.v_target)
        self.safe_lat_act = 0.0
        self.safe_lon_act = 0.0
        self.u_last = np.array([0.0, 0.0])
        self.ego_fstate = None
        self.traffic_actor_batch = None
        self.obj_info = None
        self.f_idx_temp = None
        self.f_idx_safe = None
        self.count = 0
        self.last_count = 1
        self.lidar_state_info = None
        self.path_state_info = None
        self.ego_state_info = None
        self.state = None
        self.state_1 = None
        self.obj_process = None
        self.obj_info_batch_msg = None
        self.vehicle_info_batch = None
        self.walker_info_batch = None
        self.global_csp = None
        self.actor_batch = None
        self.walkers_batch = None
        self.perception_data = None
        self.perception_objs = None
        self.obstacles = None
        self.car_length = 4.9
        self.car_width = 1.9
        self.LANE_WIDTH = 3.0

        self.global_csp_msg = None
        self.enable_lat_replan = True

        # ========================================================

        self.preview = 0
        self.fkappa_vector = [0, 0.01, 0.025, 0.04, 0.1]
        # self.speed_vector = [4, 3, 1.2, 1.05, 0.9]
        # self.speed_vector = [4, 3, 2.3, 2.15, 2.0] # 最佳
        # self.speed_vector = [4, 3.4, 2.6, 2.45, 2.0] # 极限
        # self.speed_vector = [8.0, 5.0, 4.0, 3.5, 3.0] # 东风
        self.speed_vector = [8.0, 5.0, 4.0, 3.5, 2.0] # 试车场OK 1218注释
        # self.speed_vector = [4.25, 2.5, 2.0, 1.75, 1.0]
        self.max_v = 10.0
        self.min_v = 0.9
        self.preview_distance = 12.0
        self.longitudinal_pid = PIDController(3.0, 0.0, 0.1)
        self.ego_pose = EGO_POSE(0.0, 0.0, 0.0, 0.0, 0.0)
        self.rt_ego_pose = EGO_POSE(0.0, 0.0, 0.0, 0.0, 0.0)
        self.ego_state = None
        self.rt_ego_state = None

        self.max_s = 3000
        self.f_idx = 0
        self.f_idx_viz = 0
        self.cfg = cfg_from_yaml_file(root_path + '/agents/cfgs/config.yaml', cfg)
        if self.enable_lat_replan:
            self.motionPlanner = MotionPlanner(self.cfg)
            self.motionPlanner_viz = MotionPlanner(self.cfg)
            self.motionPlanner_rt = MotionPlanner(self.cfg)

        PTM_model_path = root_path + '/Network_Models/models/checkpoints/fully_connected_no_epoch_num_120.pth'
        SPI_PTM_model_path = root_path + '/Network_Models/models/checkpoints/fully_connected_SPI_PTM_epoch_num_120.pth'

        model_type = "fully_connected"
        self.PTM_model = get_model(model_type=model_type, input_dim=261, output_dim=2, timesteps=200,
                                   device='cuda')
        self.PTM_model.load_state_dict(torch.load(PTM_model_path))
        self.PTM_model.cuda()
        self.SPI_PTM_model = get_model(model_type=model_type, input_dim=261, output_dim=6, timesteps=200,
                                       device='cuda')
        self.SPI_PTM_model.load_state_dict(torch.load(SPI_PTM_model_path))
        self.SPI_PTM_model.cuda()

        srq_model_type = "transformer"
        device = 'cuda'
        print("部署SRQ模型...")
        self.srq_model = get_srq_model(model_type=srq_model_type, input_dim=240, output_dim=3, timesteps=200,
                                       device=device)
        sqt_model_path = root_path + '/Network_Models/models/checkpoints/transformer_no_epoch_num_80.pth'
        self.srq_model.load_state_dict(torch.load(sqt_model_path))
        self.srq_model.cuda()

        self.lon_lat_param = lon_lat_Config
        self.lon_lat_opti = spat_joint_optimization_lon_lat_linear(self.lon_lat_param)
        self.rt_obj_info_batch = None

        self.all_obj_info = []

        model_path = root_path + '/Network_Models_1/model_pkl/checkpoint/model_1'
        model = Transformer(n_head=16).to('cuda')
        self.expert_net = sl.load_model(model_path, -1, model)

        # ... 在 self.expert_net = sl.load_model(...) 之后添加 ...

        print("\n--- Model Loading Verification ---")
        # 获取第一个参数层的名字和数据
        for name, param in self.expert_net.named_parameters():
            print(f"Layer: {name}")
            print(f"First 5 params: {param.data.view(-1)[:5].cpu().tolist()}")
            print("Model parameters loaded successfully if these values make sense.")
        print("----------------------------------\n")

    # =====================================================

    import numpy as np
    import math
    import os
    import rospy
    '''
    能刹车但是很急
    '''

    # def calc_collision_limit_speed(self):
    #     """
    #     [完整修复版 - 环绕拼接逻辑]
    #     功能：
    #     1. 处理 Index 0 为正前方的雷达数据 (0-40为右前, 200-240为左前)
    #     2. 强制录制 /tmp/lidar_debug
    #     """
    #     # ================= 配置参数 =================
    #     # --- Lidar 参数 ---
    #     MAX_V = 5.0

    #     LIDAR_MAX_RANGE = 50.0
    #     MAX_DECEL = 2.0
    #     SAFE_DIST_BUFFER = 10.0
    #     LATERAL_CHECK_WIDTH = 3.5

    #     # --- Object List 参数 ---
    #     OBJ_LATERAL_CHECK_WIDTH = 3.5
    #     OBJ_SAFE_DIST_BUFFER = 10.0

    #     SMOOTHING_FACTOR = 0.2

    #     # --- 关键雷达几何参数 ---
    #     TOTAL_POINTS = 240
    #     FOV_DEG = 360.0
    #     ANGLE_RES = np.radians(FOV_DEG / TOTAL_POINTS)  # 约 0.026弧度 (1.5度)

    #     # --- 扫描范围设置 (索引) ---
    #     # 右侧: 0 ~ 40 (0度 ~ 60度, 顺时针)
    #     IDX_RIGHT_END = 40
    #     # 左侧: 200 ~ 240 (300度 ~ 360度, 顺时针)
    #     IDX_LEFT_START = 200

    #     # # --- 保存配置 ---
    #     # SAVE_DIR = '/tmp/lidar_debug_777'
    #     # SAVE_PATH = os.path.join(SAVE_DIR, "lidar_speed_data.npy")
    #     # SAVE_INTERVAL = 1
    #     # # ===========================================

    #     # 1. 初始化路径与Buffer
    #     # if not hasattr(self, 'record_buffer'):
    #     #     self.record_buffer = []
    #     #     if not os.path.exists(SAVE_DIR):
    #     #         try:
    #     #             os.makedirs(SAVE_DIR)
    #     #             rospy.logwarn(f"✅ [Init] 目录已创建: {SAVE_DIR}")
    #     #         except Exception as e:
    #     #             rospy.logerr(f"❌ [Init] 无法创建目录: {e}")
    #     #     rospy.logwarn(f"✅ [Init] 录制已开启! 扫描逻辑: Split (0-{IDX_RIGHT_END} & {IDX_LEFT_START}-{TOTAL_POINTS})")

    #     if not hasattr(self, 'last_safe_v'):
    #         self.last_safe_v = MAX_V

    #     target_limit_lidar = MAX_V
    #     target_limit_obj = MAX_V
    #     lidar_debug = None
    #     obj_debug_best = None

    #     debug_info = {
    #         "source": "None",
    #         "raw_dist": 0.0,
    #         "lat_dist": 0.0,
    #         "limit_v": MAX_V,
    #         "detail_id": -1
    #     }

    #     # =======================================================
    #     # Part 1: Lidar 逻辑 (拼接处理)
    #     # =======================================================
    #     lidar_data = self.lidar_state_info

    #     if lidar_data is None:
    #         rospy.logerr_throttle(2.0, "❌ [Lidar] lidar_state_info 是 None!")

    #     if lidar_data is not None and len(lidar_data) == TOTAL_POINTS:
    #         try:
    #             # --- 步骤A: 提取左右两段数据 ---
    #             # 右侧数据 (0 ~ 40)
    #             ranges_right = np.array(lidar_data[0:IDX_RIGHT_END])
    #             indices_right = np.arange(0, IDX_RIGHT_END)
    #             # 右侧角度计算: 顺时针转动 -> 车身坐标系右侧为负Y -> 角度取负
    #             angles_right = -1 * indices_right * ANGLE_RES

    #             # 左侧数据 (200 ~ 240)
    #             ranges_left = np.array(lidar_data[IDX_LEFT_START:TOTAL_POINTS])
    #             indices_left = np.arange(IDX_LEFT_START, TOTAL_POINTS)
    #             # 左侧角度计算: 300~360度 -> 对应车身左侧正角度
    #             # 例如 index 239 (358.5度) -> 距离前方 1.5度 (左)
    #             angles_left = (TOTAL_POINTS - indices_left) * ANGLE_RES

    #             # --- 步骤B: 拼接数组 ---
    #             # 将“左-前-右”拼成一个连续的逻辑数组用于计算
    #             ranges = np.concatenate([ranges_right, ranges_left])
    #             angles = np.concatenate([angles_right, angles_left])
    #             indices = np.concatenate([indices_right, indices_left])

    #             # --- 步骤C: 坐标转换 (Vehicle Frame: X前, Y左) ---
    #             real_dists = ranges * LIDAR_MAX_RANGE

    #             # X = dist * cos(theta) (theta范围大约 -60度 到 +60度, cos皆为正)
    #             dist_x = real_dists * np.cos(angles)
    #             # Y = dist * sin(theta) (左侧theta为正->Y正, 右侧theta为负->Y负)
    #             dist_y = real_dists * np.sin(angles)

    #             # --- 步骤D: 核心过滤 ---
    #             mask_basic = (ranges < 0.99) & (dist_x > 0.1)
    #             mask_in_lane = np.abs(dist_y) < LATERAL_CHECK_WIDTH
    #             valid_mask = mask_basic & mask_in_lane

    #             valid_indices = indices[valid_mask]
    #             valid_lon_dists = dist_x[valid_mask]
    #             valid_lat_dists = dist_y[valid_mask]

    #             if len(valid_lon_dists) > 0:
    #                 min_idx_local = np.argmin(valid_lon_dists)
    #                 min_lon_dist = valid_lon_dists[min_idx_local]
    #                 min_lat_dist = valid_lat_dists[min_idx_local]
    #                 trigger_index = valid_indices[min_idx_local]

    #                 braking_dist = min_lon_dist - SAFE_DIST_BUFFER

    #                 if braking_dist <= 0:
    #                     calc_v = 0.0
    #                 else:
    #                     calc_v = math.sqrt(2 * MAX_DECEL * braking_dist)

    #                 target_limit_lidar = calc_v

    #                 lidar_debug = {
    #                     "dist": min_lon_dist,
    #                     "lat": min_lat_dist,  # 左正, 右负
    #                     "idx": trigger_index
    #                 }
    #         except Exception as e:
    #             rospy.logerr(f"Lidar Math Error: {e}")

    #     # =======================================================
    #     # Part 2: Object List 逻辑
    #     # =======================================================
    #     '''
    #     新增
    #     '''
    #     record_obj_dist_s = 100.0
    #     record_obj_lat_d = 100.0

    #     if (self.obj_info is not None and
    #             'Obj_frenet' in self.obj_info and
    #             self.ego_fstate is not None):

    #         objs_frenet = self.obj_info['Obj_frenet']
    #         objs_actor = self.obj_info['Obj_actor']
    #         ego_s = self.ego_fstate[0]

    #         for i, obj_f in enumerate(objs_frenet):
    #             if objs_actor[i] == -1: continue

    #             o_s, o_d = obj_f[0], obj_f[1]
    #             dist_s = o_s - ego_s - 5.0

    #             if 0 < dist_s < 60.0 and abs(o_d) < OBJ_LATERAL_CHECK_WIDTH:
    #                 braking_dist_obj = dist_s - OBJ_SAFE_DIST_BUFFER
    #                 current_limit = 0.0
    #                 if braking_dist_obj > 0:
    #                     current_limit = math.sqrt(2 * MAX_DECEL * braking_dist_obj)

    #                 if current_limit < target_limit_obj:
    #                     target_limit_obj = current_limit

    #                     # [新增] 记录最危险障碍物的原始位置信息
    #                     record_obj_dist_s = dist_s
    #                     record_obj_lat_d = o_d

    #                     obj_debug_best = {
    #                         "dist": dist_s,
    #                         "lat": o_d,
    #                         "id": objs_actor[i]
    #                     }

    #     # =======================================================
    #     # Part 3: 融合与决策
    #     # =======================================================
    #     if target_limit_lidar < target_limit_obj:
    #         target_limit_final = target_limit_lidar
    #         if lidar_debug is not None:
    #             debug_info["source"] = "Lidar"
    #             debug_info["raw_dist"] = lidar_debug["dist"]
    #             debug_info["lat_dist"] = lidar_debug["lat"]
    #             debug_info["limit_v"] = target_limit_lidar
    #             debug_info["detail_id"] = lidar_debug["idx"]
    #     else:
    #         target_limit_final = target_limit_obj
    #         if obj_debug_best is not None:
    #             debug_info["source"] = "ObjList"
    #             debug_info["raw_dist"] = obj_debug_best["dist"]
    #             debug_info["lat_dist"] = obj_debug_best["lat"]
    #             debug_info["limit_v"] = target_limit_obj
    #             debug_info["detail_id"] = obj_debug_best["id"]

    #     # 平滑滤波
    #     if target_limit_final < self.last_safe_v:
    #         final_v = 0.5 * target_limit_final + 0.5 * self.last_safe_v
    #     else:
    #         final_v = SMOOTHING_FACTOR * target_limit_final + (1 - SMOOTHING_FACTOR) * self.last_safe_v

    #     final_v = min(final_v, MAX_V)
    #     self.last_safe_v = final_v

    #     # =================== 关键 Debug 打印 ===================
    #     is_triggered = (debug_info["source"] != "None") and (target_limit_final < MAX_V * 0.98)

    #     if is_triggered:
    #         src = debug_info["source"]
    #         d_id = debug_info["detail_id"]
    #         dist = debug_info["raw_dist"]
    #         lat = debug_info["lat_dist"]
    #         lim = debug_info["limit_v"]

    #         # 增加方向提示 L/R
    #         dir_str = "LEFT" if lat > 0 else "RIGHT"
    #         # rospy.logwarn(
    #         #     f"🛑 [TRIG] {src} | Idx:{int(d_id)}({dir_str}) | Dist:{dist:.1f}m | Lat:{lat:.1f}m | V_lim:{lim:.1f}")

    #     # # =================== 核心数据录制逻辑 ===================
    #     # try:
    #     #     current_lidar = self.lidar_state_info
    #     #     if current_lidar is not None:
    #     #         current_len = len(current_lidar)
    #     #         if current_len == TOTAL_POINTS:
    #     #             # [修改] 保存结构变更为:
    #     #             # [0~239]: 雷达数据
    #     #             # [240]: Object纵向距离 (record_obj_dist_s)
    #     #             # [241]: Object横向距离 (record_obj_lat_d)
    #     #             # [242]: 最终记录速度 (final_v)
    #     #             record_row = np.concatenate((current_lidar, [record_obj_dist_s, record_obj_lat_d, final_v]))
    #     #             self.record_buffer.append(record_row)

    #     #             count = len(self.record_buffer)
    #     #             if count % SAVE_INTERVAL == 0:
    #     #                 np_data = np.array(self.record_buffer, dtype=np.float32)
    #     #                 np.save(SAVE_PATH, np_data)
    #     #                 msg = f"💾 [REC] 已保存 {count} 帧"
    #     #                 if is_triggered:
    #     #                     rospy.logwarn(msg)
    #     #                 else:
    #     #                     rospy.loginfo(msg)
    #     #         else:
    #     #             rospy.logerr_throttle(1.0, f"❌ [REC Fail] 长度不匹配! {current_len}")
    #     # except Exception as e:
    #     #     rospy.logerr(f"❌ 数据录制崩溃: {e}")

    #     return final_v

    def calc_collision_limit_speed(self):
        """
        [完整修复版 - 环绕拼接逻辑]
        功能：
        1. 处理 Index 0 为正前方的雷达数据 (0-40为右前, 200-240为左前)
        2. 强制录制 /tmp/lidar_debug
        """
        # ================= 配置参数 =================
        # --- Lidar 参数 ---
        MAX_V = 5.0

        LIDAR_MAX_RANGE = 50.0
        MAX_DECEL = 2.0
        SAFE_DIST_BUFFER = 10.0 #10.0
        LATERAL_CHECK_WIDTH = 3.5 #3.5

        # --- Object List 参数 ---
        OBJ_LATERAL_CHECK_WIDTH = 5.0 #5.0 
        OBJ_SAFE_DIST_BUFFER = 12.0 #12.0

        SMOOTHING_FACTOR = 0.2

        # --- 关键雷达几何参数 ---
        TOTAL_POINTS = 240
        FOV_DEG = 360.0
        ANGLE_RES = np.radians(FOV_DEG / TOTAL_POINTS)  # 约 0.026弧度 (1.5度)

        # --- 扫描范围设置 (索引) ---
        # 右侧: 0 ~ 40 (0度 ~ 60度, 顺时针)
        IDX_RIGHT_END = 40 #40
        # 左侧: 200 ~ 240 (300度 ~ 360度, 顺时针)
        IDX_LEFT_START = 200 #200

        # # --- 保存配置 ---
        # SAVE_DIR = '/tmp/lidar_debug_777'
        # SAVE_PATH = os.path.join(SAVE_DIR, "lidar_speed_data.npy")
        # SAVE_INTERVAL = 1
        # # ===========================================

        # 1. 初始化路径与Buffer
        # if not hasattr(self, 'record_buffer'):
        #     self.record_buffer = []
        #     if not os.path.exists(SAVE_DIR):
        #         try:
        #             os.makedirs(SAVE_DIR)
        #             rospy.logwarn(f"✅ [Init] 目录已创建: {SAVE_DIR}")
        #         except Exception as e:
        #             rospy.logerr(f"❌ [Init] 无法创建目录: {e}")
        #     rospy.logwarn(f"✅ [Init] 录制已开启! 扫描逻辑: Split (0-{IDX_RIGHT_END} & {IDX_LEFT_START}-{TOTAL_POINTS})")

        if not hasattr(self, 'last_safe_v'):
            self.last_safe_v = MAX_V

        target_limit_lidar = MAX_V
        target_limit_obj = MAX_V
        lidar_debug = None
        obj_debug_best = None

        debug_info = {
            "source": "None",
            "raw_dist": 0.0,
            "lat_dist": 0.0,
            "limit_v": MAX_V,
            "detail_id": -1
        }

        # =======================================================
        # Part 1: Lidar 逻辑 (拼接处理)
        # =======================================================
        lidar_data = self.lidar_state_info

        if lidar_data is None:
            rospy.logerr_throttle(2.0, "❌ [Lidar] lidar_state_info 是 None!")

        if lidar_data is not None and len(lidar_data) == TOTAL_POINTS:
            try:
                # --- 步骤A: 提取左右两段数据 ---
                # 右侧数据 (0 ~ 40)
                ranges_right = np.array(lidar_data[0:IDX_RIGHT_END])
                indices_right = np.arange(0, IDX_RIGHT_END)
                # 右侧角度计算: 顺时针转动 -> 车身坐标系右侧为负Y -> 角度取负
                angles_right = -1 * indices_right * ANGLE_RES

                # 左侧数据 (200 ~ 240)
                ranges_left = np.array(lidar_data[IDX_LEFT_START:TOTAL_POINTS])
                indices_left = np.arange(IDX_LEFT_START, TOTAL_POINTS)
                # 左侧角度计算: 300~360度 -> 对应车身左侧正角度
                # 例如 index 239 (358.5度) -> 距离前方 1.5度 (左)
                angles_left = (TOTAL_POINTS - indices_left) * ANGLE_RES

                # --- 步骤B: 拼接数组 ---
                # 将“左-前-右”拼成一个连续的逻辑数组用于计算
                ranges = np.concatenate([ranges_right, ranges_left])
                angles = np.concatenate([angles_right, angles_left])
                indices = np.concatenate([indices_right, indices_left])

                # --- 步骤C: 坐标转换 (Vehicle Frame: X前, Y左) ---
                real_dists = ranges * LIDAR_MAX_RANGE

                # X = dist * cos(theta) (theta范围大约 -60度 到 +60度, cos皆为正)
                dist_x = real_dists * np.cos(angles)
                # Y = dist * sin(theta) (左侧theta为正->Y正, 右侧theta为负->Y负)
                dist_y = real_dists * np.sin(angles)

                # --- 步骤D: 核心过滤 ---
                mask_basic = (ranges < 0.99) & (dist_x > 0.1)
                mask_in_lane = np.abs(dist_y) < LATERAL_CHECK_WIDTH
                valid_mask = mask_basic & mask_in_lane

                valid_indices = indices[valid_mask]
                valid_lon_dists = dist_x[valid_mask]
                valid_lat_dists = dist_y[valid_mask]

                if len(valid_lon_dists) > 0:
                    min_idx_local = np.argmin(valid_lon_dists)
                    min_lon_dist = valid_lon_dists[min_idx_local]
                    min_lat_dist = valid_lat_dists[min_idx_local]
                    trigger_index = valid_indices[min_idx_local]

                    braking_dist = min_lon_dist - SAFE_DIST_BUFFER

                    if braking_dist <= 0:
                        calc_v = 0.0
                    else:
                        calc_v = math.sqrt(2 * MAX_DECEL * braking_dist)

                    target_limit_lidar = calc_v

                    lidar_debug = {
                        "dist": min_lon_dist,
                        "lat": min_lat_dist,  # 左正, 右负
                        "idx": trigger_index
                    }
            except Exception as e:
                rospy.logerr(f"Lidar Math Error: {e}")

        # =======================================================
        # Part 2: Object List 逻辑
        # =======================================================
        '''
        新增
        '''
        record_obj_dist_s = 100.0
        record_obj_lat_d = 100.0

        if (self.obj_info is not None and
                'Obj_frenet' in self.obj_info and
                self.ego_fstate is not None):

            objs_frenet = self.obj_info['Obj_frenet']
            objs_actor = self.obj_info['Obj_actor']
            ego_s = self.ego_fstate[0]

            for i, obj_f in enumerate(objs_frenet):
                if objs_actor[i] == -1: continue

                o_s, o_d = obj_f[0], obj_f[1]
                dist_s = o_s - ego_s - 5.0

                if 0 < dist_s < 60.0 and abs(o_d) < OBJ_LATERAL_CHECK_WIDTH:
                    braking_dist_obj = dist_s - OBJ_SAFE_DIST_BUFFER
                    current_limit = 0.0
                    if braking_dist_obj > 0:
                        current_limit = math.sqrt(2 * MAX_DECEL * braking_dist_obj)

                    if current_limit < target_limit_obj:
                        target_limit_obj = current_limit

                        # [新增] 记录最危险障碍物的原始位置信息
                        record_obj_dist_s = dist_s
                        record_obj_lat_d = o_d

                        obj_debug_best = {
                            "dist": dist_s,
                            "lat": o_d,
                            "id": objs_actor[i]
                        }

        # =======================================================
        # Part 3: 融合与决策
        # =======================================================
        if target_limit_lidar < target_limit_obj:
            target_limit_final = target_limit_lidar
            if lidar_debug is not None:
                debug_info["source"] = "Lidar"
                debug_info["raw_dist"] = lidar_debug["dist"]
                debug_info["lat_dist"] = lidar_debug["lat"]
                debug_info["limit_v"] = target_limit_lidar
                debug_info["detail_id"] = lidar_debug["idx"]
        else:
            target_limit_final = target_limit_obj
            if obj_debug_best is not None:
                debug_info["source"] = "ObjList"
                debug_info["raw_dist"] = obj_debug_best["dist"]
                debug_info["lat_dist"] = obj_debug_best["lat"]
                debug_info["limit_v"] = target_limit_obj
                debug_info["detail_id"] = obj_debug_best["id"]

        # 平滑滤波
        if target_limit_final < self.last_safe_v:
            final_v = 0.5 * target_limit_final + 0.5 * self.last_safe_v
        else:
            final_v = SMOOTHING_FACTOR * target_limit_final + (1 - SMOOTHING_FACTOR) * self.last_safe_v

        final_v = min(final_v, MAX_V)
        self.last_safe_v = final_v

        # =================== 关键 Debug 打印 ===================
        is_triggered = (debug_info["source"] != "None") and (target_limit_final < MAX_V * 0.98)

        if is_triggered:
            src = debug_info["source"]
            d_id = debug_info["detail_id"]
            dist = debug_info["raw_dist"]
            lat = debug_info["lat_dist"]
            lim = debug_info["limit_v"]

            # 增加方向提示 L/R
            dir_str = "LEFT" if lat > 0 else "RIGHT"
            # rospy.logwarn(
            #     f"🛑 [TRIG] {src} | Idx:{int(d_id)}({dir_str}) | Dist:{dist:.1f}m | Lat:{lat:.1f}m | V_lim:{lim:.1f}")

        # # =================== 核心数据录制逻辑 ===================
        # try:
        #     current_lidar = self.lidar_state_info
        #     if current_lidar is not None:
        #         current_len = len(current_lidar)
        #         if current_len == TOTAL_POINTS:
        #             # [修改] 保存结构变更为:
        #             # [0~239]: 雷达数据
        #             # [240]: Object纵向距离 (record_obj_dist_s)
        #             # [241]: Object横向距离 (record_obj_lat_d)
        #             # [242]: 最终记录速度 (final_v)
        #             record_row = np.concatenate((current_lidar, [record_obj_dist_s, record_obj_lat_d, final_v]))
        #             self.record_buffer.append(record_row)

        #             count = len(self.record_buffer)
        #             if count % SAVE_INTERVAL == 0:
        #                 np_data = np.array(self.record_buffer, dtype=np.float32)
        #                 np.save(SAVE_PATH, np_data)
        #                 msg = f"💾 [REC] 已保存 {count} 帧"
        #                 if is_triggered:
        #                     rospy.logwarn(msg)
        #                 else:
        #                     rospy.loginfo(msg)
        #         else:
        #             rospy.logerr_throttle(1.0, f"❌ [REC Fail] 长度不匹配! {current_len}")
        # except Exception as e:
        #     rospy.logerr(f"❌ 数据录制崩溃: {e}")

        return final_v
        
    def begin_modules(self):
        self.update_global_csp(self.global_csp_msg)
        cur_s, f_idx = calc_cur_s(self.global_csp, self.ego_pose)
        self.f_idx = f_idx
        self.f_idx_viz = f_idx
        cur_s_yaw = self.global_csp.calc_yaw(cur_s)
        cur_s_k = self.global_csp.calc_curvature(cur_s)
        cur_d = calc_cur_d(self.ego_pose, self.global_csp, cur_s)
        cur_s_d = self.ego_pose.speed * math.cos(self.ego_pose.yaw - cur_s_yaw)
        cur_d_d = self.ego_pose.speed * math.sin(self.ego_pose.yaw - cur_s_yaw)
        cur_s_dd = self.ego_pose.acc * math.cos(self.ego_pose.yaw - cur_s_yaw) / (1 - cur_d * cur_s_k)
        self.motionPlanner.reset(cur_s, cur_d, cur_s_d, cur_s_dd, cur_d_d, 0, df_n=0, Tf=3.0, Vf_n=0,
                                 optimal_path=False)
        self.motionPlanner_viz.reset(cur_s, cur_d, cur_s_d, cur_s_dd, cur_d_d, 0, df_n=0, Tf=3.0, Vf_n=0,
                                     optimal_path=False)
        self.motionPlanner_rt.reset(cur_s, cur_d, cur_s_d, cur_s_dd, cur_d_d, 0, df_n=0, Tf=3.0, Vf_n=0,
                                    optimal_path=False)

    def get_obj_info(self):

        """
        Actor:  [actor_id]
        Frenet:  [s,d,v_s, v_d, phi_Frenet, K_Frenet]
        Cartesian:  [x, y, v_x, v_y, phi, speed, delta_f]
        """

        obj_actor = []
        obj_frenet = []
        obj_cartesian = []
        objs = self.vehicle_info_batch[1:]
        dis = []
        if len(objs) >= 3:
            for obj in objs:
                dis.append(
                    math.sqrt((obj.actor_pos.x - self.ego_pose.x) ** 2 + (obj.actor_pos.y - self.ego_pose.y) ** 2))
            # 根据距离排序
            sorted_indices = sorted(range(len(dis)), key=lambda i: dis[i])
            key_objs = [objs[i] for i in sorted_indices[0:3]]
        elif 0 < len(objs) < 3:
            while len(objs) < 3:
                objs.append(objs[0])
            key_objs = objs
        else:
            # if obj_vehicles is zero
            key_objs = [-1, -1, -1]

        for obj in key_objs:
            if obj != -1:
                obj_actor.append(obj)
                obj_cartesian.append(
                    [obj.actor_pos.x, obj.actor_pos.y, obj.actor_vel.x, obj.actor_vel.y, obj.actor_psi, obj.actor_speed,
                     0.0])

                obj_acc = np.linalg.norm(np.array([obj.actor_acc.x, obj.actor_acc.y]))
                pose_info = EGO_POSE(obj.actor_pos.x, obj.actor_pos.y, obj.actor_speed, obj.actor_psi, obj_acc)

                cur_s, _ = calc_cur_s(self.global_csp, pose_info)
                cur_d = calc_cur_d(pose_info, self.global_csp, cur_s)

                s_yaw = obj.actor_psi -  self.global_csp.calc_yaw(cur_s)

                obj_frenet.append([cur_s, cur_d, s_yaw, obj.actor_speed, 0.0])
            else:
                obj_actor.append(obj)
                obj_cartesian.append([10000, 10000, 10000, 10000, 10000, 10000, 10000])
                obj_frenet.append([10000, 10000, 10000, 10000, 10000])

        obj_info = ({'Obj_actor': obj_actor, 'Obj_frenet': obj_frenet, 'Obj_cartesian': obj_cartesian})

        self.obj_info = obj_info

    def lidar_state(self):
        self.obj_process = self.obj_info
        ego_x = self.ego_state[0]
        ego_y = self.ego_state[1]
        ego_yaw = self.ego_state[4]
        ego_location = geometry_utils.Point(ego_x, ego_y)
        # 定义一些障碍物的参数
        Obj_actor = self.obj_info['Obj_actor']
        objs_extents_x = []
        objs_extents_y = []
        objs_rotations = []
        objs_centers = []
        extend_factor = 1.0

        Obj_cartesian = self.obj_process['Obj_cartesian']
        ego_vehicle_heading = ego_yaw
        if Obj_actor[0] != -1:
            print("========================Objects detected, simulating lidar input...")
            for obj, obj_actor in zip(Obj_cartesian, Obj_actor):
                center = geometry_utils.Point(obj[0], obj[1])
                objs_centers.append(center)
                extent_y, extent_x = obj_actor.width / 2, obj_actor.length / 2
                objs_extents_x.append(extend_factor * extent_x)
                objs_extents_y.append(extend_factor * extent_y)
                objs_rotations.append(obj[4] * 180 / math.pi)

            # 定义传感器参数
            num_points = 240  # 360个径向路径
            path_length = 50  # 每条径向路径的长度

            # 调用simulate_sensor_input函数模拟传感器输入
            distances = geometry_utils.simulate_sensor_input(ego_location, objs_centers, objs_extents_x, objs_extents_y,
                                                             objs_rotations, num_points, path_length,
                                                             ego_vehicle_heading)
            # print("======ego_location",ego_location)
            # print("======objs_centers",objs_centers)
            # print("======objs_extents_x", objs_extents_x)
            # print("======objs_extents_y", objs_extents_y)
            # print("======objs_rotations", objs_rotations)
            # print("======num_points",num_points)
            # print("======path_length",path_length)
            # print("======ego_vehicle_heading",ego_vehicle_heading)
            dis_reverse = distances[::-1]
            # print("======dis_reverse",dis_reverse)
            scale_d = [d / 50.0 for d in dis_reverse]
            self.lidar_state_info = np.array(scale_d)
            print("min_d", min(scale_d))
        else:
            print("==========================No objects detected, setting lidar state to ones.")
            self.lidar_state_info = np.ones(240)

    def path_state(self):
        idx = 0
        path_x = self.global_csp.sx.y[idx:idx + 10]
        path_y = self.global_csp.sy.y[idx:idx + 10]

        extracted_points = np.array([path_x, path_y]).T
        pos = np.array([self.ego_pose.x, self.ego_pose.y])
        normalized_vectors = ((extracted_points - pos) / POS_NORMALIZATION + 1) / 2  # 归一化
        self.path_state_info = normalized_vectors.flatten()

    def ego_info_state(self):

        self.ego_state_info = self.ego_pose.speed / MAX_SPEED

    def state_input(self):
        self.lidar_state()
        self.path_state()
        self.ego_info_state()
        self.state = np.hstack([self.lidar_state_info, self.path_state_info, self.ego_state_info]).astype(np.float32)
    
    def state_input_1(self):
        self.lidar_state()

        self.state_1 = np.array(self.lidar_state_info).astype(np.float32)

    def get_ego_info(self):
        ego_info = self.vehicle_info_batch[0]
        ego_x = ego_info.actor_pos.x
        ego_y = ego_info.actor_pos.y
        ego_phi = ego_info.actor_psi
        ego_v = ego_info.actor_speed
        ego_a = math.sqrt(ego_info.actor_acc.x ** 2 + ego_info.actor_acc.y ** 2)

        self.ego_pose = EGO_POSE(ego_x, ego_y, ego_v, ego_phi, ego_a)

        temp = [self.ego_pose.speed, self.ego_pose.acc]
        self.ego_state = [self.ego_pose.x, self.ego_pose.y, self.ego_pose.speed, self.ego_pose.acc, self.ego_pose.yaw,
                          temp,
                          self.max_s]

    def get_rt_ego_info(self):
        ego_info = self.rt_obj_info_batch[0]
        ego_x = ego_info.actor_pos.x

        ego_y = ego_info.actor_pos.y

        ego_phi = ego_info.actor_psi
        ego_v = ego_info.actor_speed
        ego_a = math.sqrt(ego_info.actor_acc.x ** 2 + ego_info.actor_acc.y ** 2)

        self.rt_ego_pose = EGO_POSE(ego_x, ego_y, ego_v, ego_phi, ego_a)

        temp = [self.rt_ego_pose.speed, self.rt_ego_pose.acc]
        self.rt_ego_state = [self.rt_ego_pose.x, self.rt_ego_pose.y, self.rt_ego_pose.speed, self.rt_ego_pose.acc,
                             self.rt_ego_pose.yaw,
                             temp,
                             self.max_s]

    def get_safety_obj_info(self):
        self.actor_batch = []
        ego_vehicle = self.vehicle_info_batch[0]
        pose_info = EGO_POSE(self.ego_pose.x, self.ego_pose.y, self.ego_pose.speed, self.ego_pose.yaw,
                             self.ego_pose.acc)
        cur_s, _ = calc_cur_s(self.global_csp, pose_info)
        cur_d = calc_cur_d(pose_info, self.global_csp, cur_s)
        ego_s = cur_s
        ego_d = cur_d

        ego_actor_length = euclidean_distance(
            [ego_vehicle.convex_hull.polygon.points[1].x, ego_vehicle.convex_hull.polygon.points[0].y]
            , [ego_vehicle.convex_hull.polygon.points[2].x, ego_vehicle.convex_hull.polygon.points[1].y])

        ego_min_s = ego_s - ego_actor_length
        ego_max_s = ego_s + ego_actor_length
        N_obj_pre = 20
        dt = 0.2

        # [cur_s, cur_d, s_yaw, obj.speed, obj.steering
        for obj_actor, pose_frenet in zip(self.obj_info['Obj_actor'], self.obj_info['Obj_frenet']):
            obj_s = pose_frenet[0]
            obj_d = pose_frenet[1]
            obj_yaw = pose_frenet[2]
            obj_speed = pose_frenet[3]
            print("obj_s:", obj_s, "obj_d:", obj_d, "obj_speed:", obj_speed)
            obj_min_s = obj_s - self.car_length / 2.0
            obj_max_s = obj_s + self.car_length / 2.0
            delta_s = obj_min_s - ego_max_s if obj_s > ego_s else obj_max_s - ego_min_s
            obj_s_pre = np.zeros(N_obj_pre)
            obj_d_pre = np.zeros(N_obj_pre)
            for i in range(N_obj_pre):
                obj_s_pre[i] = obj_s + obj_speed * np.cos(obj_yaw) * dt * i
                obj_d_pre[i] = obj_d + obj_speed * np.sin(obj_yaw) * dt * i
            print("obj_cxzczxcs_pre = ", obj_s_pre)

            print("obj_dsdsdsd_pre = ", obj_d_pre)
            self.actor_batch.append(
                {'traffic_actor': obj_actor, 'obj_pre': [obj_s_pre, obj_d_pre], 's': obj_s, 'd': obj_d,
                 'speed': obj_speed, 'delta_s': delta_s, 'safe_acc': 0.0, 'delta_s_fpath2obj': 0.0})

        # self.all_obj_info.append(self.actor_batch)
        # with open('all_obj_info.pkl', 'wb') as f:
        #     pickle.dump(self.all_obj_info, f)

        self.actor_batch.append({'ego_frenet_info': [ego_s, ego_d]})

    def limit_speed_fcn(self, fkappa_pre):
        Vref = np.interp(fkappa_pre, self.fkappa_vector, self.speed_vector)
        Vref = np.clip(Vref, self.min_v, self.max_v)


        return Vref

    def fpath_interpolate(self, fpath):
        s = fpath.s
        d = fpath.d
        theta = fpath.yaw
        dx = np.diff(s)
        dy = np.diff(d)
        dl = np.sqrt(dx ** 2 + dy ** 2)
        l_original = np.zeros(20)
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

        num_points = len(fpath.s) * 25

        fpath_interpolated = RLPlanningPath()
        fpath_interpolated.s = np.zeros(num_points)
        fpath_interpolated.fx = np.zeros(num_points)
        fpath_interpolated.fy = np.zeros(num_points)
        fpath_interpolated.theta = np.zeros(num_points)
        fpath_interpolated.kappa = np.zeros(num_points)
        fpath_interpolated.v = np.zeros(num_points)
        fpath_interpolated.a = np.zeros(num_points)
        x_smooth, y_smooth = smooth_path(fx, fy)
        c = compute_curvature(x_smooth, y_smooth)

        try:

            # print("11111",c)
            v_lim = self.limit_speed_fcn(abs(c[5]))
        except Exception as e:
            print(f"发生错误：{e}")
            v_lim = 3.0

        #1225新增
        v_collision_safe = self.calc_collision_limit_speed()

        #1224注释
        # print("v_lim = ", v_lim)jjjjjjjjjjjjjjjjj
        # print("self.v_target = ", self.v_target)
        print("v_collision_safe = ", v_collision_safe)
        # print("self.rt_safe_speed = ", self.rt_safe_speed)
        '''
        中期
        '''
        #lidar
        # self.state_input_1()
        # state_1 = torch.Tensor(self.state_1).float().unsqueeze(dim=-1).unsqueeze(dim=0).cuda()
        # action = self.expert_net(state_1).squeeze(dim=0)
        # #speed
        # v_target_network = (action.item() + 1.0) * 10.0 / 3.6
        # print("v_target_network = ", v_target_network)
        print("v_lim = ", v_lim)
        print("rt_safe_speed",self.rt_safe_speed)
        # target_speed = min(v_target_network,v_lim) #min(self.v_target self.rt_safe_speed, v_lim),慢，快，曲率限速
        # target_speed = min(self.v_target, v_lim)
        # target_speed = min(self.v_target, v_lim)
        target_speed = min(v_lim,v_collision_safe,self.rt_safe_speed)
        # target_speed = v_collision_safe
        # if self.v_target == -1:
        #     target_speed = self.rt_safe_speed
        # else:
        #     target_speed = min(self.v_target, self.rt_safe_speed, v_lim)


        # if self.v_target == -1:
        #     target_speed = self.rt_safe_speed
        # else:
        #     target_speed = min(self.v_target, self.rt_safe_speed, v_lim)

        target_a = (fpath.s_d[min(14, len(fpath.s_d) - 1)] - fpath.s_d[
            min(14, len(fpath.s_d) - 1)]) / 0.1

        # target_a = (fpath.s_d[min(18, len(fpath.s_d) - 1)] - fpath.s_d[
        #     min(18, len(fpath.s_d) - 1)]) / 0.1

        if target_speed < 0.8:
            target_speed = 0.0
            target_a = -1.0

        # print("2222",c)
        heading = compute_heading(x_smooth, y_smooth)

        for i in range(num_points):
            fpath_interpolated.s[i] = l_target[i]
            fpath_interpolated.fx[i] = x_smooth[i]
            fpath_interpolated.fy[i] = y_smooth[i]
            fpath_interpolated.v[i] = target_speed
            fpath_interpolated.a[i] = target_a
            fpath_interpolated.theta[i] = heading[i]
            fpath_interpolated.kappa[i] = -c[i]

        return fpath_interpolated

    def calc_safe_acc(self, Tc):

        # safe_s = max(self.ego_pose.speed * 3.0, 15.0)
        # safe_s = max(self.ego_pose.speed * 4.0, 45.0)
        safe_s = max(self.ego_pose.speed * 3.0, 15.0)  # 车辆安全距离
        # 获取当前自车信息
        ego_info = self.actor_batch[-1]
        # 获取其他车辆信息
        self.traffic_actor_batch = self.actor_batch[:-1]

        # exp_fac_lon = 2.0
        # exp_fac_lat = 1.4

        # 设置膨胀系数
        exp_fac_lon = 0.0
        exp_fac_lat = 0.0
        # 设置预测步数和时间间隔

        N_ego_pre = 45
        dt = 0.2

        ego_s = ego_info['ego_frenet_info'][0]
        ego_d = ego_info['ego_frenet_info'][1]
        ego_yaw = self.ego_fstate[6] 
        ego_speed = self.ego_fstate[1] + 2.0
        # ego_speed = 15.0

        obj_s_pre = np.zeros(N_ego_pre)
        obj_d_pre = np.zeros(N_ego_pre)
        # 初始化自车和交通参与者的预测轨迹
        for i in range(N_ego_pre):
            obj_s_pre[i] = ego_s + ego_speed * np.cos(ego_yaw) * dt * i
            obj_d_pre[i] = ego_d + ego_speed * np.sin(ego_yaw) * dt * i

        # print("obj_s_pre = ", obj_s_pre)
        # print("obj_d_pre = ", obj_d_pre)
        # 遍历交通参与者并计算其预测轨迹
        for i, actor in enumerate(self.traffic_actor_batch):

            for j in range(len(obj_s_pre)):

                ego_path_s = obj_s_pre[j]
                ego_path_d = obj_d_pre[j]
                ego_s_min = ego_path_s - self.car_length * exp_fac_lon
                ego_s_max = ego_path_s + self.car_length * exp_fac_lon 
                ego_d_min = ego_path_d - self.car_width * exp_fac_lat 
                ego_d_max = ego_path_d + self.car_width * exp_fac_lat 
                
                # 计算交通参与者的碰撞检测范围
                for k in range(len(actor['obj_pre'][0])):

                    traffic_path_s = actor['obj_pre'][0][k]
                    traffic_path_d = actor['obj_pre'][1][k]
                    if actor['traffic_actor'] != -1:
                        traffic_s_min = traffic_path_s - actor['traffic_actor'].length * exp_fac_lon / 2.0
                        traffic_s_max = traffic_path_s + actor['traffic_actor'].length * exp_fac_lon / 2.0
                        traffic_d_min = traffic_path_d - actor['traffic_actor'].width * exp_fac_lat / 2.0
                        traffic_d_max = traffic_path_d + actor['traffic_actor'].width * exp_fac_lat / 2.0
                        # 判断两个矩形是否相交
                        # 判断是否发生碰撞
                        s_overlap = (ego_s_min <= traffic_s_max) and (ego_s_max >= traffic_s_min)
                        d_overlap = (ego_d_min <= traffic_d_max) and (ego_d_max >= traffic_d_min)
                        # 判断是否相交
                        if s_overlap and d_overlap:
                            # 取两个中心点的中点作为交点
                            intersection_s = (ego_s + traffic_path_s) / 2.0
                            delta_s = intersection_s - ego_s
                            actor['safe_acc'] = 2 * (delta_s - delta_s / abs(delta_s) * safe_s + Tc * (
                                    actor['speed'] - self.ego_pose.speed)) / (Tc ** 2)
                            print("================================actor['safe_acc']", actor['safe_acc'])

    

    def check_collision_risk_lat(self, df_safenet, df_n):
        collision_risk_lat = False
        safe_lat_act = df_n
        ego_info = self.actor_batch[-1]
        ego_d = ego_info['ego_frenet_info'][1]
        df_ego = ego_d
        for actor in self.traffic_actor_batch:
            if actor != -1:
                if actor['safe_acc'] < -2 or actor['safe_acc'] > 2:
                    collision_risk_lat = True
                    safe_lat_act = df_ego

        return collision_risk_lat, safe_lat_act

    def check_collision_risk_lon(self, acc_input):
        collision_risk_lon = False
        safe_lon_act = acc_input

        for actor in self.traffic_actor_batch:
            if actor['safe_acc'] < -2 or actor['safe_acc'] > 2:
                collision_risk_lon = True
                safe_lon_act = actor['safe_acc']

        return collision_risk_lon, safe_lon_act

    def check_collision_risk(self, df_safenet, df_n, acc_input, Tf, Tc):
        collision_risk_lat, safe_lat_act = self.check_collision_risk_lat(df_safenet, df_n)

        # overwrite key actor by safe lat action
        fpath_temp = self.generate_fpath_temp(lat_ter=safe_lat_act, lon_ter=acc_input, Tf=Tf)
        self.calc_safe_acc(Tc)

        collision_risk_lon, safe_lon_act = self.check_collision_risk_lon(acc_input)

        collision_risk_flag = collision_risk_lat or collision_risk_lon
        # if collision_risk_flag:
        #     print('collision_risk_flag', collision_risk_flag)

        return collision_risk_flag, safe_lat_act, safe_lon_act

    def update_global_csp(self, global_csp_msg):
        """Update the global CSP (Constraint Satisfaction Problem) for motion planning."""
        self.motionPlanner.update_global_csp(global_csp_msg)
        self.motionPlanner_viz.update_global_csp(global_csp_msg)
        self.motionPlanner_rt.update_global_csp(global_csp_msg)
        self.global_csp = self.motionPlanner.csp

    def rt_opti_replanning_process(self, df_n, vf_n, Tf=3.0):

        fpath_rt = self.generate_rt_opti_fpath(df_n, vf_n, Tf)
        return fpath_rt

    def rt_replanning_process(self, lat_ter, lon_ter, Tf=3.0):
        safe_lan_act = lat_ter
        safe_lon_act = lon_ter
        fpath_rt = self.generate_rt_fpath(safe_lan_act, safe_lon_act, Tf)

        return fpath_rt

    def replanning_process(self, obj_msg):

        print('=============================================')
        t0 = time.time()

        self.update_global_csp(self.global_csp_msg)

        # self.vehicle_info_batch = obj_msg.vehicle_info_batch
        self.vehicle_info_batch = copy.deepcopy(self.rt_obj_info_batch)

        self.get_ego_info()
        self.get_obj_info()

        self.get_safety_obj_info()
        self.state_input()
        # print(self.f_idx)
        if not self.module_ok:
            self.begin_modules()
            self.module_ok = False
        self.count += 1

        # ===================================================
        # 给出神经网络输出结果
        obs = torch.tensor(self.state).cuda()
        obs = obs.to(self.device)
        lidar_obs = torch.tensor(self.lidar_state_info).cuda()
        self.PTM_model.eval()
        self.SPI_PTM_model.eval()
        self.srq_model.eval()
        PTM_action = self.PTM_model(obs)
        SPI_PTM_action = self.SPI_PTM_model(obs)
        #
        a = SPI_PTM_action[0:2]
        lamda_1 = (SPI_PTM_action[2] + 1.0) / 2
        lamda_2 = (SPI_PTM_action[3] + 1.0) / 2
        mix_a1 = PTM_action[0] * (1 - lamda_1) + a[0] * lamda_1
        mix_a2 = PTM_action[1] * (1 - lamda_2) + a[1] * lamda_2
        action = [mix_a1, mix_a2, SPI_PTM_action[4]]

        lat_ter = action[0].item()
        lon_ter = action[1].item()
        dis_f = action[2].item()

        # ===================================================
        # 计算安全量化结果
        srq_state = torch.tensor(lidar_obs, dtype=torch.float32, device='cpu').unsqueeze(dim=0).unsqueeze(dim=-1)
        srq_a = self.srq_model(srq_state.cuda())
        sqr_a_array = srq_a.detach().cpu().numpy()[0]
        Tf_act_min = -1.0
        Tf_act_max = 1.0
        Tf_max = 4.0
        Tf_min = 2.0
        k_tf = (Tf_max - Tf_min) / (Tf_act_max - Tf_act_min)
        Tf_c = k_tf * (sqr_a_array[2] - Tf_act_min) + Tf_min
        Tc_max = 5.0
        Tc_min = 3.0
        k_Tf2Tc = (Tc_max - Tc_min) / (Tf_max - Tf_min)
        Tc = k_Tf2Tc * (Tf_c - Tf_min) + Tc_min
        SRQ_value = (sqr_a_array[2] + 1) * 50.0
        # print('=====================')
        # print('SRQ_value', SRQ_value)

        action_min = -1.0
        action_max = 1.0

        current_lane_num = 1

        if current_lane_num == 1:
            dfn_real_min = 0.0
            dfn_real_max = 0.0
        elif current_lane_num == 2:
            dfn_real_min = -2.0
            dfn_real_max = 0.0
        else:
            dfn_real_min = 0.0
            dfn_real_max = 0.0

        dis_factor = (max(min(dis_f, 1.0), -1.0) + 1.0) * 10.0 + 3.0

        k_action2dfn = (dfn_real_max - dfn_real_min) / (action_max - action_min)
        df = k_action2dfn * (lat_ter - action_min) + dfn_real_min
        # df_n = discretize_df(-2.0, 0.0, df, int(np.floor(dis_factor))) # 注释1209
        # lon_ter = 1.0
        # vf_n = (lon_ter + 1.0) * 6.0
        # vf_n = (lon_ter + 1.0) * 3.0 # 注释1209
        # vf_n = (lon_ter + 1.0) * 3.0
        # Tf = 2.0 # 注释1209

        # =======================================
        # vf_n = 4.0 # 之前
        # vf_n = 10.0 # 20251212
        vf_n = (lon_ter + 1.0) * 5.0
        df_n = 0.0
        Tf = 2.0
        # =======================================



        fpath_rl = self.generate_fpath(df_n, vf_n, Tf)
        # print("fpath_rl x:", fpath_rl.x[:10])
        # print("fpath_rl y:", fpath_rl.y[:10])
        # print("fpath_rl s_d:", fpath_rl.s_d[:10])
        # print("fpath_rl d:", fpath_rl.d[:10])


        # =======================================
        # 计算fpath_safe_rl
        df_safenet = df_n

        t0 = time.time()

        self.calc_safe_acc(Tc)

        acc_input = (vf_n - self.ego_pose.speed) / (Tf + 1e-8)
        collision_risk_flag, safe_lat_act, safe_lon_act = self.check_collision_risk(df_safenet, df_n, acc_input, Tf=Tf,
                                                                                    Tc=Tc)

        fpath_safe_rl = self.generate_fpath_safe_rl(lat_ter=safe_lat_act, lon_ter=safe_lon_act, Tf=Tf)


        self.safe_lon_act = safe_lon_act
        self.safe_lat_act = safe_lat_act

        preview_position = preview_point(self.ego_pose.x, self.ego_pose.y, self.ego_pose.yaw, 5.0)
        match_point_control_par = match_point(fpath_safe_rl.x, fpath_safe_rl.y,
                                              preview_position.update_xvehicle,
                                              preview_position.update_yvehicle)
        idx = match_point_control_par.find_match_point()
        safe_speed = fpath_safe_rl.s_d[len(fpath_safe_rl.s_d) - 1]  # 怠速 #1223注释
        # safe_speed = fpath_safe_rl.s_d[min(self.f_idx + 6, len(fpath_safe_rl.s_d) - 1)]  # 怠速 #1223新改,慢系统安全速度，和东风一致

        # fpath, Input = self.spat_joint_opti(copy.deepcopy(fpath_rl), safe_speed, self.lidar_state_info)

        # fpath_safe_rl = fpath # 注释1209

        # self.opti_vf = Input[0][0]
        self.opti_df_n = fpath_safe_rl.d[-1]

        # time.sleep(random.uniform(0.1, 0.3))

        # safe_speed = fpath_safe_rl.s_d[min(self.f_idx + 18, len(fpath_safe_rl.s_d) - 1)]  # 怠速


        # self.v_target = Input[0][0] # 注释1209
        self.v_target = safe_speed
        # print("self.v_target = ", self.v_target)

        # ===================

        fpath_safe_rl = fpath_rl
        # self.v_target = 4.0

        # ==================


        print("collision_risk_flag", collision_risk_flag)
        self.slow_fpath = fpath_safe_rl
        t2 = time.time()
        print('time:', t2 - t0)

        return self.v_target, fpath_safe_rl, collision_risk_flag, SRQ_value

    def generate_fpath(self, df_n, vf_n, Tf):

        temp = [self.ego_pose.speed, self.ego_pose.acc]
        self.ego_state = [self.ego_pose.x, self.ego_pose.y, self.ego_pose.speed, self.ego_pose.acc, self.ego_pose.yaw,
                          temp,
                          self.max_s]
        # print('ego_state:', self.ego_state)
        self.ego_fstate, f_idx = self.motionPlanner.estimate_frenet_state_new(self.ego_state, self.f_idx)
        # print("ego_fstate:", self.ego_fstate)
        # print("f_idx:", f_idx)

        # # no safe net
        fpath_rl = self.motionPlanner.run_step_single_path(self.ego_fstate, self.f_idx,
                                                           df_n=df_n, Tf=Tf,
                                                           Vf_n=vf_n)

        self.motionPlanner.last_fpath = fpath_rl
        return fpath_rl

    def generate_rt_fpath(self, lat_ter, lon_ter, Tf):

        rt_ego_fstate, self.f_idx = self.motionPlanner_rt.estimate_frenet_state_new(self.rt_ego_state, self.f_idx)
        # print(self.f_idx)
        # # no safe net
        Tf_n = Tf
        Vf_n = np.clip(self.ego_pose.speed + lon_ter * Tf, 0.0, 5.556)  # v0 + a*t
        fpath_rt = self.motionPlanner_rt.run_step_single_path(rt_ego_fstate, self.f_idx,
                                                              df_n=lat_ter, Tf=Tf_n,
                                                              Vf_n=Vf_n)

        # fpath_rt = self.motionPlanner_rt.run_step_single_path(rt_ego_fstate, self.f_idx,
        #                                                       df_n=0.0, Tf=Tf_n,
        #                                                       Vf_n=3.0)

        self.motionPlanner_rt.last_fpath = fpath_rt

        return fpath_rt

    def generate_rt_opti_fpath(self, df_n, Vf_n, Tf):

        rt_ego_fstate, self.f_idx = self.motionPlanner_rt.estimate_frenet_state_new(self.rt_ego_state, self.f_idx)
        # print(self.f_idx)
        # # no safe net
        Tf_n = Tf
        fpath_rt = self.motionPlanner_rt.run_step_single_path(rt_ego_fstate, self.f_idx,
                                                              df_n=df_n, Tf=Tf_n,
                                                              Vf_n=Vf_n)

        self.motionPlanner_rt.last_fpath = fpath_rt

        return fpath_rt

    def generate_fpath_temp(self, lat_ter, lon_ter, Tf=4.0):
        temp = [self.ego_pose.speed, self.ego_pose.acc]
        ego_state = [self.ego_pose.x, self.ego_pose.y, self.ego_pose.speed, self.ego_pose.acc, self.ego_pose.yaw, temp,
                     self.max_s]
        ego_fstate_temp, f_idx_temp = self.motionPlanner.estimate_frenet_state_new(ego_state, self.f_idx_temp)

        Vf_n = np.clip(self.ego_pose.speed + lon_ter * Tf, 0.0, 10.0)  # v0 + a*t
        Tf_n = Tf
        fpath_temp = self.motionPlanner.run_step_single_path(ego_fstate_temp, self.f_idx_temp,
                                                             df_n=lat_ter, Tf=Tf_n,
                                                             Vf_n=Vf_n)

        self.motionPlanner.last_fpath = fpath_temp
        return fpath_temp

    def generate_fpath_safe_rl(self, lat_ter, lon_ter, Tf=4.0):
        temp = [self.ego_pose.speed, self.ego_pose.acc]
        ego_state = [self.ego_pose.x, self.ego_pose.y, self.ego_pose.speed, self.ego_pose.acc, self.ego_pose.yaw, temp,
                     self.max_s]
        ego_fstate_safe, f_idx_safe = self.motionPlanner.estimate_frenet_state_new(ego_state, self.f_idx_safe)

        Vf_n = np.clip(self.ego_pose.speed + lon_ter * Tf, 0.0, 10.0)  # v0 + a*t

        Tf_n = Tf
        fpath_safe_rl = self.motionPlanner.run_step_single_path(ego_fstate_safe, self.f_idx_safe,
                                                                df_n=lat_ter, Tf=Tf_n,
                                                                Vf_n=Vf_n)

        self.motionPlanner.last_fpath = fpath_safe_rl
        return fpath_safe_rl

    def rt_generate_fpath_viz(self, lat_ter, lon_ter, Tf=3.0):

        self.motionPlanner_viz.last_fpath = None
        rt_ego_fstate, f_idx = self.motionPlanner_viz.estimate_frenet_state_new(self.rt_ego_state, self.f_idx_viz)

        Tf_n = Tf
        Vf_n = np.clip(self.ego_pose.speed + lon_ter * Tf, 0.0, 5.556)  # v0 + a*t
        fpath_viz = self.motionPlanner_viz.run_step_single_path(rt_ego_fstate, f_idx,
                                                                df_n=lat_ter, Tf=Tf_n,
                                                                Vf_n=Vf_n)

        return fpath_viz

    def spat_joint_opti(self, fpath, safe_speed, cloud_points):
        lane_num = 1.0

        # try:
        # Calculate input using lon_lat_opti.calc_input method
        input_params = {
            'x_current': [self.ego_fstate[0], self.ego_fstate[3], self.ego_fstate[6]],
            'safe_speed': safe_speed,
            'obj_info': self.obj_info,
            'cloud_points': cloud_points,
            'fpath_info': fpath,
            'u_last': self.u_last,
            'csp': self.motionPlanner.csp,
            'fpath': fpath,
            'lane_num': lane_num
        }
        Input, MPC_solved, x_m = self.lon_lat_opti.calc_input(**input_params)

        if MPC_solved:
            self.u_last = Input
            for i in range(len(fpath.s)):
                fpath.s[i] = x_m[i, 0]
                fpath.d[i] = x_m[i, 1]
                fpath.x[i], fpath.y[i], _, _ = frenet_to_inertial(fpath.s[i], fpath.d[i], self.global_csp)

            s_d = [(fpath.s[i + 1] - fpath.s[i]) / 0.1 for i in range(len(fpath.s) - 1)]
            s_d.append(s_d[-1])  # 或者 s_d.append(s_d[-1]) 根据你的需求
            d_d = [(fpath.d[i + 1] - fpath.d[i]) / 0.1 for i in range(len(fpath.d) - 1)]
            d_d.append(d_d[-1])  # 或者 s_d.append(s_d[-1]) 根据你的需求
            fpath.s_d = s_d
            fpath.d_d = d_d
        else:
            # 如果无解，则紧急停车
            df_n = 0.0
            Vf_n = 0.0
            fpath = self.motionPlanner.run_step_single_path(self.ego_fstate, self.f_idx,
                                                            df_n=df_n, Tf=2.0,
                                                            Vf_n=Vf_n)
            Input = [[-1.0], [-1.0]]
            print("oh no", Input)

        # except Exception as e:
        #     # Log the error with detailed information
        #     logging.error(f"An error occurred: {e}", exc_info=True)
        #     print("An error occurred. Please check the logs for more information.")

        return fpath, Input
