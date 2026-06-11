"""

Frenet optimal trajectory generator

author: Atsushi Sakai (@Atsushi_twi)

Ref:

- [Optimal Trajectory Generation for Dynamic Street Scenarios in a Frenet Frame](https://www.researchgate.net/profile/Moritz_Werling/publication/224156269_Optimal_Trajectory_Generation_for_Dynamic_Street_Scenarios_in_a_Frenet_Frame/links/54f749df0cf210398e9277af.pdf)

- [Optimal trajectory generation for dynamic street scenarios in a Frenet Frame](https://www.youtube.com/watch?v=Cj6tAQe7UCY)

"""

import numpy as np
import copy
import math
import os
from agents.local_planner import cubic_spline_planner
from agents.config import cfg
from agents.utils import calc_cur_s, calc_cur_fpath_s, EGO_POSE
import pickle

folder_path = os.path.dirname(os.path.abspath(__file__))


def folder_has_files(folder_path):
    return any(os.path.isfile(os.path.join(folder_path, item)) for item in os.listdir(folder_path))


def euclidean_distance(v1, v2):
    return math.sqrt(sum([(a - b) ** 2 for a, b in zip(v1, v2)]))


def closest(lst, K):
    """
    Find closes value in a list
    """
    return lst[min(range(len(lst)), key=lambda i: abs(lst[i] - K))]


def normalize(vector):
    if sum(vector) == 0:
        return [0 for _ in range(len(vector))]
    return vector / np.sqrt(sum([n ** 2 for n in vector]))


def magnitude(vector):
    return np.sqrt(sum([n ** 2 for n in vector]))


def calc_s(csp, x, y):
    # 初始化s的值
    s = 0.0
    min_distance_to_wp = 100.0
    min_idx = 0

    # 遍历参考路径上的点，找到离障碍车最近的点
    for i in range(len(csp.sx.y)):
        xi = csp.sx.y[i]
        yi = csp.sy.y[i]
        distance_to_wp = math.sqrt((x - xi) ** 2 + (y - yi) ** 2)
        if distance_to_wp < min_distance_to_wp:
            min_distance_to_wp = distance_to_wp
            min_idx = i

    # 计算线段(xi, yi)--(xi1, yi1)的方向角  rad
    xi = csp.sx.y[min_idx]
    yi = csp.sy.y[min_idx]
    xi1 = csp.sx.y[min_idx + 1]
    yi1 = csp.sy.y[min_idx + 1]
    segment_direction = np.arctan2(yi1 - yi, xi1 - xi)

    # 计算点(x, y)到线段的垂直距离
    distance_to_segment = np.abs((x - xi) * np.cos(segment_direction) + (y - yi) * np.sin(segment_direction))

    # 计算点(x, y)的s
    for i in range(min_idx):
        xi = csp.sx.y[i]
        yi = csp.sy.y[i]
        xi1 = csp.sx.y[i + 1]
        yi1 = csp.sy.y[i + 1]
        segment_length = np.sqrt((xi1 - xi) ** 2 + (yi1 - yi) ** 2)
        s += segment_length

    return s


def velocity_inertial_to_frenet(s, v_x, v_y, v_z, csp):
    """
    transform vx, vy from frenet frame to inertial frame
    input: s, vx and vy in global frame
    output: vS and vD
    """
    s_yaw = csp.calc_yaw(s)

    s_norm = normalize([-np.sin(s_yaw), np.cos(s_yaw)])

    # ----------------------------UPDATE S_D D_D --------------------------------------- #

    speed = math.sqrt(v_x ** 2 + v_y ** 2 + v_z ** 2)
    a_v_norm = normalize([v_x, v_y])
    angle_vel = np.arccos(np.clip(np.dot(a_v_norm, s_norm), -1.0, 1.0))
    v_S = np.sin(angle_vel) * speed
    v_D = np.cos(angle_vel) * speed

    return v_S, v_D


# ------------------------- UPDATING D VALUE -------------------------------- #
# after we update s value now we can update d value based on new coordinate

def update_d(s, location_x, loction_y, csp):
    s_yaw = csp.calc_yaw(s)
    s_norm = normalize([-np.sin(s_yaw), np.cos(s_yaw)])
    s_x, s_y, s_z = csp.calc_position(s)
    v1 = [location_x - s_x, loction_y - s_y]
    v1_norm = normalize(v1)
    angle = np.arccos(np.clip(np.dot(s_norm, v1_norm), -1.0, 1.0))
    d = np.cos(angle) * magnitude(v1)
    return d


def get_obj_S_yaw(obj_yaw, s, csp):
    s_yaw = csp.calc_yaw(s)
    psi_Frenet = obj_yaw - s_yaw

    return psi_Frenet


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


def update_frenet_coordinate(fpath, loc):
    """
    Finds best Frenet coordinates (s, d) in the path based on current position
    """

    min_e = float('inf')
    min_idx = -1
    for i in range(len(fpath.t)):
        e = euclidean_distance([fpath.x[i], fpath.y[i]], loc)
        if e < min_e:
            min_e = e
            min_idx = i

    if min_idx <= len(fpath.t) - 2:
        min_idx += 2  # +2 because if next wp gets too close to the ego, lat controller oscillates

    s, s_d, s_dd = fpath.s[min_idx], fpath.s_d[min_idx], fpath.s_dd[min_idx]
    d, d_d, d_dd = fpath.d[min_idx], fpath.d_d[min_idx], fpath.d_dd[min_idx]

    return s, s_d, s_dd, d, d_d, d_dd


class quintic_polynomial:

    def __init__(self, xs, vxs, axs, xe, vxe, axe, T):
        # calc coefficient of quintic polynomial
        self.xs = xs
        self.vxs = vxs
        self.axs = axs
        self.xe = xe
        self.vxe = vxe
        self.axe = axe

        self.a0 = xs
        self.a1 = vxs
        self.a2 = axs / 2.0

        A = np.array([[T ** 3, T ** 4, T ** 5],
                      [3 * T ** 2, 4 * T ** 3, 5 * T ** 4],
                      [6 * T, 12 * T ** 2, 20 * T ** 3]])
        b = np.array([xe - self.a0 - self.a1 * T - self.a2 * T ** 2,
                      vxe - self.a1 - 2 * self.a2 * T,
                      axe - 2 * self.a2])
        x = np.linalg.solve(A, b)

        self.a3 = x[0]
        self.a4 = x[1]
        self.a5 = x[2]

    def calc_point(self, t):
        # print("t:", t)
        # print("self.a0:", self.a0)
        # print("self.a1:", self.a1)
        # print("self.a2:", self.a2)
        # print("self.a3:", self.a3)
        # print("self.a4:", self.a4)
        # print("self.a5:", self.a5)
        xt = self.a0 + self.a1 * t + self.a2 * t ** 2 + \
             self.a3 * t ** 3 + self.a4 * t ** 4 + self.a5 * t ** 5

        return xt

    def calc_first_derivative(self, t):
        xt = self.a1 + 2 * self.a2 * t + \
             3 * self.a3 * t ** 2 + 4 * self.a4 * t ** 3 + 5 * self.a5 * t ** 4

        return xt

    def calc_second_derivative(self, t):
        xt = 2 * self.a2 + 6 * self.a3 * t + 12 * self.a4 * t ** 2 + 20 * self.a5 * t ** 3

        return xt

    def calc_third_derivative(self, t):
        xt = 6 * self.a3 + 24 * self.a4 * t + 60 * self.a5 * t ** 2

        return xt


class quartic_polynomial:

    def __init__(self, xs, vxs, axs, vxe, axe, T):
        # calc coefficient of quintic polynomial
        self.xs = xs
        self.vxs = vxs
        self.axs = axs
        self.vxe = vxe
        self.axe = axe

        self.a0 = xs
        self.a1 = vxs
        self.a2 = axs / 2.0

        A = np.array([[3 * T ** 2, 4 * T ** 3],
                      [6 * T, 12 * T ** 2]])
        b = np.array([vxe - self.a1 - 2 * self.a2 * T,
                      axe - 2 * self.a2])
        x = np.linalg.solve(A, b)

        self.a3 = x[0]
        self.a4 = x[1]

    def calc_point(self, t):
        xt = self.a0 + self.a1 * t + self.a2 * t ** 2 + \
             self.a3 * t ** 3 + self.a4 * t ** 4

        return xt

    def calc_first_derivative(self, t):
        xt = self.a1 + 2 * self.a2 * t + \
             3 * self.a3 * t ** 2 + 4 * self.a4 * t ** 3

        return xt

    def calc_second_derivative(self, t):
        xt = 2 * self.a2 + 6 * self.a3 * t + 12 * self.a4 * t ** 2

        return xt

    def calc_third_derivative(self, t):
        xt = 6 * self.a3 + 24 * self.a4 * t

        return xt


class Frenet_path:
    def __init__(self):
        self.id = None
        self.t = []
        self.d = []
        self.d_d = []
        self.d_dd = []
        self.d_ddd = []
        self.s = []
        self.s_d = []
        self.s_dd = []
        self.s_ddd = []
        self.cd = 0.0
        self.cv = 0.0
        self.cf = 0.0

        self.x = []
        self.y = []
        self.z = []
        self.yaw = []
        self.ds = []
        self.c = []

        self.v = []  # speed


def calc_frenet_state_from_ego(ego_state, s_x, s_y, s_yaw, estimated_s):
    """
    从车辆状态计算 Frenet 状态
    :param ego_state: 车辆状态
    :param s_x: 参考点 x 坐标
    :param s_y: 参考点 y 坐标
    :param s_yaw: 参考点航向
    :param estimated_s: 估计的 s 值
    :return: Frenet 状态 [s, s_d, s_dd, d, d_d, d_dd]
    """
    v1 = [ego_state[0] - s_x, ego_state[1] - s_y]
    d = np.sqrt(v1[0] ** 2 + v1[1] ** 2) * np.sign(v1[1] * np.cos(s_yaw) - v1[0] * np.sin(s_yaw))
    s_d = ego_state[2] * math.cos(ego_state[4] - s_yaw)
    d_d = ego_state[2] * math.sin(ego_state[4] - s_yaw)
    f_state_yaw = ego_state[4] - s_yaw
    return [estimated_s, s_d, 0, d, d_d, 0, f_state_yaw]  # s_dd 和 d_dd 默认为 0


def find_closest_point_index(ego_x, ego_y, last_fpath):
    """
    找到车辆位置与历史路径的最小距离点索引
    :param ego_x: 车辆 x 坐标
    :param ego_y: 车辆 y 坐标
    :param last_fpath: 历史路径
    :return: 最小距离点索引
    """
    dis_mux = [
        (ego_x - last_fpath.x[i]) ** 2 + (ego_y - last_fpath.y[i]) ** 2
        for i in range(len(last_fpath.x))
    ]
    return dis_mux.index(min(dis_mux))


class FrenetPlanner:
    def __init__(self, cfg):

        self.dt = 0.1
        self.map_info = 'SSSSSSSSSSSSSS'
        # Parameters
        self.MAX_SPEED = 150.0 / 3.6  # maximum speed [m/s]
        self.MAX_ACCEL = 4.0  # maximum acceleration [m/ss]  || Tesla model 3: 6.878
        self.MAX_CURVATURE = 1.0  # maximum curvature [1/m]
        self.LANE_WIDTH = float(cfg.GYM_ENV.LANE_WIDTH)
        self.MAXT = 6.0  # max prediction time [m]
        self.MINT = 3.0  # min prediction time [m]
        self.D_T = 3.0  # prediction timestep length (s)
        self.D_T_S = 5.0 / 3.6  # target speed sampling length [m/s]
        self.N_S_SAMPLE = 1  # sampling number of target speed
        self.ROBOT_RADIUS = 2.0  # robot radius [m]
        self.MAX_DIST_ERR = 4.0  # max distance error to update frenet states based on ego states

        # cost weights
        self.KJ = 0.1
        self.KT = 0.1
        self.KD = 1.0
        self.KLAT = 1.0
        self.KLON = 1.0

        self.path = None  # current frenet path
        self.ob = []  # n obstacles [[x1, y1, z1], [x2, y2, z2], ... ,[xn, yn, zn]]
        self.csp = None  # cubic spline for global rout
        self.steps = 0  # planner steps
        self.last_fpath = None

        self.targetSpeed = float(cfg.GYM_ENV.TARGET_SPEED)

        min_speed = float(cfg.GYM_ENV.MIN_SPEED)
        max_speed = float(cfg.GYM_ENV.MAX_SPEED)
        self.speed_center = (max_speed + min_speed) / 2
        self.speed_radius = (max_speed - min_speed) / 2
        self.last_f_state = None

    def update_global_route(self, global_route):
        """
        fit an spline to the updated global route in inertial frame
        """
        wx = []
        wy = []
        wz = []
        for p in global_route:
            wx.append(p[0])
            wy.append(p[1])
            wz.append(p[2])

        wx_np = np.array(wx)
        wy_np = np.array(wy)
        wz_np = np.array(wz)
        self.csp = cubic_spline_planner.Spline3D(wx_np, wy_np, wz_np)

    def update_global_csp(self, global_csp):

        s = np.array(global_csp.s)
        nx = global_csp.nx
        sx = cubic_spline_planner.Spline_from_data(nx,
                                                   global_csp.sx_a,
                                                   global_csp.sx_b,
                                                   global_csp.sx_c,
                                                   global_csp.sx_d,
                                                   s,
                                                   global_csp.sx_y)

        sy = cubic_spline_planner.Spline_from_data(nx,
                                                   global_csp.sy_a,
                                                   global_csp.sy_b,
                                                   global_csp.sy_c,
                                                   global_csp.sy_d,
                                                   s,
                                                   global_csp.sy_y)

        sz = cubic_spline_planner.Spline_from_data(nx,
                                                   global_csp.sz_a,
                                                   global_csp.sz_b,
                                                   global_csp.sz_c,
                                                   global_csp.sz_d,
                                                   s,
                                                   global_csp.sz_y)

        self.csp = cubic_spline_planner.Spline3D_from_data(s, sx, sy, sz)

    def update_obstacles(self, ob):
        self.ob = ob

    def estimate_frenet_state_new(self, ego_state, idx):

        """
                估计 Frenet 状态
                :param ego_state: 车辆状态 [x, y, yaw, v, heading, ...]
                :param idx: 当前索引
                :return: Frenet 状态 [s, s_d, s_dd, d, d_d, d_dd], 当前索引
                """
        f_state = np.zeros(6)

        # 提取车辆状态
        ego_pose = EGO_POSE(ego_state[0], ego_state[1], ego_state[2], ego_state[4], ego_state[3])

        # 计算当前 s 值
        cur_s, f_idx = calc_cur_s(self.csp, ego_pose)
        estimated_s = cur_s % ego_state[6]  # 假设 ego_state[6] 是路径总长度

        # 计算参考点的位置和航向
        s_yaw = self.csp.calc_yaw(estimated_s)

        s_x, s_y, s_z = self.csp.calc_position(estimated_s)

        # 如果没有历史路径，直接计算 Frenet 状态
        if self.last_fpath is None:
            f_state = calc_frenet_state_from_ego(ego_state, s_x, s_y, s_yaw, estimated_s)
            # print('========================zhijie')
        else:
            # 计算车辆位置与历史路径的最小距离点
            min_index = find_closest_point_index(ego_state[0], ego_state[1], self.last_fpath)
            # print(f"Closest point index: {min_index}")
            # print('========================find')
            # 使用历史路径中的 Frenet 状态
            f_state = [
                estimated_s,
                self.last_fpath.s_d[min_index],
                self.last_fpath.s_dd[min_index],
                self.last_fpath.d[min_index],
                self.last_fpath.d_d[min_index],
                self.last_fpath.d_dd[min_index],
                ego_state[4] - s_yaw
            ]

        return f_state, f_idx

    def generate_single_frenet_path(self, f_state, df=0, Tf=4, Vf=30 / 3.6):
        """
        generate a single frenet path based on the current and terminal frenet state values
        input: ego's current frenet state and terminal frenet values (lateral displacement, time of arrival, and speed)
        output: single frenet path
        """
        s, s_d, s_dd, d, d_d, d_dd = f_state[:-1]
        # print('===============ddasdada', s, s_d, s_dd, d, d_d, d_dd)
        fp = Frenet_path()
        fp.t = np.arange(0.0, Tf, self.dt)
        fp.d = np.zeros([len(fp.t)])
        fp.d_d = np.zeros([len(fp.t)])
        fp.d_dd = np.zeros([len(fp.t)])
        fp.d_ddd = np.zeros([len(fp.t)])
        fp.s = np.zeros([len(fp.t)])
        fp.s_d = np.zeros([len(fp.t)])
        fp.s_dd = np.zeros([len(fp.t)])
        fp.s_ddd = np.zeros([len(fp.t)])
        lat_qp = quintic_polynomial(d, d_d, d_dd, df, 0.0, 0.0, Tf)
        lon_qp = quartic_polynomial(s, s_d, s_dd, Vf, 0.0, Tf)

        # print("fp.t:", fp.t)
        fp.d[:] = lat_qp.calc_point(fp.t[:])
        # print("d:", fp.d)
        fp.d_d[:] = lat_qp.calc_first_derivative(fp.t[:])
        # print("d_d:", fp.d_d)
        fp.d_dd[:] = lat_qp.calc_second_derivative(fp.t[:])
        # print("d_dd:", fp.d_dd)
        fp.d_ddd[:] = lat_qp.calc_third_derivative(fp.t[:])
        # print("d_ddd:", fp.d_ddd)
        fp.s[:] = lon_qp.calc_point(fp.t[:])
        # print("s:", fp.s)
        fp.s_d[:] = lon_qp.calc_first_derivative(fp.t[:])
        # print("s_d:", fp.s_d)
        fp.s_dd[:] = lon_qp.calc_second_derivative(fp.t[:])
        # print("s_dd:", fp.s_dd)
        fp.s_ddd[:] = lon_qp.calc_third_derivative(fp.t[:])
        # print("s_ddd:", fp.s_ddd)

        fp = self.calc_global_paths([fp])[0]

        return fp

    def calc_frenet_paths(self, f_state, change_lane=0, target_speed=30 / 3.6):
        """
        generate lattices - discretized candidate frenet paths
        input: ego's current frenet state and actions
        output: list of candidate frenet paths
        """
        s, s_d, s_dd, d, d_d, d_dd = f_state

        # clip for feasible target lane numbers
        target_d = np.clip(d + change_lane * self.LANE_WIDTH, -self.LANE_WIDTH, 2 * self.LANE_WIDTH)
        frenet_paths = []

        # generate path to each offset goal
        path_id = 0
        for di in [d, target_d]:

            # Lateral motion planning
            for Ti in np.arange(self.MINT, self.MAXT + self.D_T, self.D_T):
                fp = Frenet_path()
                lat_qp = quintic_polynomial(d, d_d, d_dd, di, 0.0, 0.0, Ti)

                for t in np.arange(0.0, Ti, self.dt):
                    fp.t.append(t)
                    fp.d.append(lat_qp.calc_point(t))
                    fp.d_d.append(lat_qp.calc_first_derivative(t))
                    fp.d_dd.append(lat_qp.calc_second_derivative(t))
                    fp.d_ddd.append(lat_qp.calc_third_derivative(t))

                # Longitudinal motion planning (Velocity keeping)
                for tv in np.arange(target_speed - self.D_T_S * self.N_S_SAMPLE,
                                    target_speed + self.D_T_S * self.N_S_SAMPLE, self.D_T_S):
                    tfp = copy.deepcopy(fp)
                    tfp.id = path_id
                    path_id += 1

                    lon_qp = quartic_polynomial(s, s_d, s_dd, tv, 0.0, Ti)

                    for t in tfp.t:
                        tfp.s.append(lon_qp.calc_point(t))
                        tfp.s_d.append(lon_qp.calc_first_derivative(t))
                        tfp.s_dd.append(lon_qp.calc_second_derivative(t))
                        tfp.s_ddd.append(lon_qp.calc_third_derivative(t))

                    Jp = sum(np.power(tfp.d_ddd, 2))  # square of jerk
                    Js = sum(np.power(tfp.s_ddd, 2))  # square of jerk

                    # square of diff from target speed
                    ds = (target_speed - tfp.s_d[-1]) ** 2

                    tfp.cd = self.KJ * Jp + self.KT * Ti + self.KD * (tfp.d[-1] - target_d) ** 2
                    tfp.cv = self.KJ * Js + self.KT * Ti + self.KD * ds
                    tfp.cf = self.KLAT * tfp.cd + self.KLON * tfp.cv

                    frenet_paths.append(tfp)
        return frenet_paths

    def calc_global_paths(self, fplist):
        """
        transform paths from frenet frame to inertial frame
        input: path list
        output: path list
        """
        for fp in fplist:

            for i in range(len(fp.s)):
                # print("==============fp.s:", fp.s)
                ix, iy, iz = self.csp.calc_position(fp.s[i]) # 这里有问题
                # print("ix:", ix)
                # print("iy:", iy)
                # print("iz:", iz)
                if ix is None:
                    break
                iyaw = self.csp.calc_yaw(fp.s[i])
                di = fp.d[i]
                fx = ix + di * math.cos(iyaw + math.pi / 2.0)
                fy = iy + di * math.sin(iyaw + math.pi / 2.0)
                fz = iz
                fp.x.append(fx)
                fp.y.append(fy)
                fp.z.append(fz)
                fp.yaw.append(iyaw)
            # print("fp.x:", fp.x)
            # print("fp.y:", fp.y)
            # print("fp.z:", fp.z)
            # print("fp.yaw:", fp.yaw)

        return fplist

    def calc_curvature_paths(self, fplist):
        """
        transform paths from frenet frame to inertial frame
        input: path list
        output: path list
        """
        for fp in fplist:

            # find curvature
            # source: http://www.kurims.kyoto-u.ac.jp/~kyodo/kokyuroku/contents/pdf/1111-16.pdf
            # and https://math.stackexchange.com/questions/2507540/numerical-way-to-solve-for-the-curvature-of-a-curve
            fp.c.append(0.0)
            for i in range(1, len(fp.t) - 1):
                a = np.hypot(fp.x[i - 1] - fp.x[i], fp.y[i - 1] - fp.y[i])
                b = np.hypot(fp.x[i] - fp.x[i + 1], fp.y[i] - fp.y[i + 1])
                c = np.hypot(fp.x[i + 1] - fp.x[i - 1], fp.y[i + 1] - fp.y[i - 1])

                # Compute inverse radius of circle using surface of triangle (for which Heron's formula is used)
                k = np.sqrt((a + (b + c)) * (c - (a - b)) * (c + (a - b)) * (
                        a + (b - c))) / 4  # Heron's formula for triangle's surface
                den = a * b * c  # Denumerator; make sure there is no division by zero.
                if den == 0.0:  # Very unlikely, but just to be sure
                    fp.c.append(0.0)
                else:
                    fp.c.append(4 * k / den)
            fp.c.append(0.0)

        return fplist

    def check_collision(self, fp, ob):
        """
        check if a frenet path makes collision with obstacles
        input: frenet path
        output: True/False
        """
        if len(ob) == 0:
            return True
        for i in range(len(ob)):
            d = [euclidean_distance([x, y, z], ob[i]) for (x, y, z) in zip(fp.x, fp.y, fp.z)]
            collision = any([di <= self.ROBOT_RADIUS ** 2 for di in d])

            if collision:
                return False

        return True

    def check_paths(self, fplist):
        """
        check for collisions
        input: list of frenet paths
        output: list of frenet paths - removed the infeasible ones
        """
        okind = []
        for i in range(len(fplist)):
            if any([v > self.MAX_SPEED for v in fplist[i].s_d]):  # Max speed check
                print('speed')
                continue
            elif any([abs(a) > self.MAX_ACCEL for a in fplist[i].s_dd]):  # Max accel check
                print('acc')
                continue
            elif any([abs(c) > self.MAX_CURVATURE for c in fplist[i].c]):  # Max curvature check
                print('cur')
                continue
            elif not self.check_collision(fplist[i], self.ob):
                print('col')
                continue

            okind.append(i)

        return [fplist[i] for i in okind]

    def frenet_optimal_planning(self, f_state, change_lane=0, target_speed=30 / 3.6):
        """
        input: current frenet state and actions
        output: candidate frenet paths and index of the optimal path
        process:
                - generate candidate frenet paths
                - calculate the inertial (global) trajectories
                - remove infeasible paths (those who make collisions)
                - find the optimal path based on cost values
        """

        fplist = self.calc_frenet_paths(f_state, change_lane=change_lane, target_speed=target_speed)
        fplist = self.calc_global_paths(fplist)
        fplist = self.calc_curvature_paths(fplist)
        fplist = self.check_paths(fplist)

        # find minimum cost path
        mincost = float("inf")
        bestpath_idx = None
        for i, fp in enumerate(fplist):
            if mincost >= fp.cf:
                mincost = fp.cf
                bestpath_idx = i

        return bestpath_idx, fplist

    def start(self, route):
        self.steps = 0
        self.update_global_route(route)

    def reset(self, s, d, s_d=0, s_dd=0, d_d=0, d_dd=0, df_n=0, Tf=4, Vf_n=0, optimal_path=True):
        # module_world reset should be executed beforehand to update the initial s and d values
        f_state = [s, s_d, s_dd, d, d_d, d_dd, 0.0]
        self.last_f_state = [s, s_d, s_dd, d, d_d, d_dd, 0.0]
        if optimal_path:
            best_path_idx, fplist = self.frenet_optimal_planning(f_state)
            self.path = fplist[best_path_idx]
        else:
            # convert action values from range (-1, 1) to the desired range
            df = np.clip(np.round(df_n) * self.LANE_WIDTH + d, -self.LANE_WIDTH, 2 * self.LANE_WIDTH).item()

            speedRange = 10 / 3.6
            Vf = Vf_n * speedRange + self.targetSpeed
            self.path = self.generate_single_frenet_path(f_state, df=df, Tf=Tf, Vf=Vf)

    def run_step(self, ego_state, idx, change_lane=0, target_speed=30 / 3.6):
        """
        change lane: -1: go to left lane; 0: stay in current lane; 1: go to right lane;
        """
        self.steps += 1
        # t0 = time.time()

        f_state = self.estimate_frenet_state_new(ego_state, idx)

        # Frenet motion planning
        best_path_idx, fplist = self.frenet_optimal_planning(f_state, change_lane=change_lane,
                                                             target_speed=target_speed)
        self.path = fplist[best_path_idx]
        # print('trajectory planning time: {} s'.format(time.time() - t0))
        return self.path, fplist

    def run_step_single_path(self, ego_fstate, idx, df_n=0, Tf=4, Vf_n=0):
        """
        input: ego states, current frenet path's waypoint index, actions
        output: frenet path
        actions: final values for frenet lateral displacement (d), time, and speed
        """
        self.steps += 1

        Vf = Vf_n
        self.path = self.generate_single_frenet_path(ego_fstate, df=df_n, Tf=Tf, Vf=Vf)

        return self.path
