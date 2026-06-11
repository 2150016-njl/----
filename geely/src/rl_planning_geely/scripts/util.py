#!/home/karim/.conda/envs/dongfeng/bin/python

# from __future__ import division
import math
import numpy as np
from collections import namedtuple
from shapely.geometry import Polygon as ShapelyPolygon


class EGO_POSE:
    def __init__(self, x, y, v, yaw, a, s=0, s_d=0, d=0):
        self.x = x
        self.y = y
        self.v = v
        self.speed = np.sqrt(v[0] ** 2 + v[1] ** 2 + v[2] ** 2)
        self.yaw = yaw
        self.a = a
        self.acc = np.sqrt(a[0] ** 2 + a[1] ** 2 + a[2] ** 2)
        self.s = s
        self.s_d = s_d
        self.d = d


# class Obstacles:
#     def __init__(self, perception_data):
#         objects_num = perception_data.num
#         perception_objects = perception_data.Perceptionobjects
#         self.id = []
#         self.position_x = []
#         self.position_y = []
#         self.relative_x = []
#         self.relative_y = []
#         self.velocity_x = []
#         self.velocity_y = []
#         self.theta = []
#         self.type = []
#         for object in perception_objects:
#             self.id.append(object.ID)
#             self.position_x.append(object.xg)
#             self.position_y.append(object.yg)
#             self.relative_x.append(object.x)
#             self.relative_y.append(object.y)
#             self.velocity_x.append(object.v_xg)
#             self.velocity_y.append(object.v_yg)
#             self.theta.append(object.heading)
#             self.type.append(object.type)

class Obstacles:
    def __init__(self, vehicle_info, s=0, s_d=0, d=0):
        self.id = vehicle_info.id
        self.position_x = vehicle_info.actor_pos.x
        self.position_y = vehicle_info.actor_pos.y
        self.relative_x = vehicle_info.actor_rel_pos.x
        self.relative_y = vehicle_info.actor_rel_pos.y
        self.vel = vehicle_info.actor_vel
        self.velocity_x = self.vel.x
        self.velocity_y = self.vel.y
        self.acc = vehicle_info.actor_acc
        self.acc_x = self.acc.x
        self.acc_y = self.acc.y
        self.acc_z = self.acc.z
        self.acceleration = np.sqrt(self.acc_x ** 2 + self.acc_y ** 2 + self.acc_z ** 2)
        self.theta = vehicle_info.actor_psi
        self.speed = vehicle_info.actor_speed
        # self.length = vehicle_info.length if vehicle_info.length >= vehicle_info.width else vehicle_info.width
        # self.width = vehicle_info.width if vehicle_info.length >= vehicle_info.width else vehicle_info.length
        self.points = vehicle_info.convex_hull.polygon.points
        self.obr_points = self.polygon_to_obr(self.points)
        self.height = vehicle_info.height
        self.s = s
        self.s_d = s_d
        self.d = d

    def obstacle_state(self, max_s):
        ob_vel = [self.vel.x, self.vel.y, self.vel.z]
        ob_acc = [self.acc.x, self.acc.y, self.acc.z]
        obstacle_state = [self.position_x, self.position_y, self.speed, self.acceleration,
                          self.theta, [ob_vel, ob_acc], max_s]
        # s = self.estimate_s(self.s, obstacle_state[0], obstacle_state[1], obstacle_state[-2], global_csp)
        # d = update_d(s, obstacle_state[0], obstacle_state[1], global_csp)
        # v_S, v_D = velocity_inertial_to_frenet(s, obstacle_state[-1].x, obstacle_state[-1].y, obstacle_state[-1].z,
        #                                        global_csp)
        # psi_frenet = get_obj_S_yaw(obstacle_state[-2], s, global_csp)
        # obj_frenet_state = [s, d, v_S, v_D, psi_frenet]
        # self.s = s
        # return obj_frenet_state
        return obstacle_state

    def polygon_to_obr(self, points):
        obs_points = [(p.x, p.y) for p in points]

        # def area(a, b, c):
        #     return abs((a[0] - c[0]) * (b[1] - a[1]) - (a[0] - b[0]) * (c[1] - a[1]))

        # def dist(a, b):
        #     return (a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2

        # def next_point(points, p):
        #     q = (p + 1) % len(points)
        #     for r in range(len(points)):
        #         if np.cross(points[q] - points[p], points[r] - points[p]) < 0:
        #             q = r
        #     return q

        # points = np.array([(p.x, p.y) for p in points])
        # points = points[::-1]  # Reverse order to be counter-clockwise

        # min_rectangle = None
        # min_area = float('inf')

        # j = next_point(points, -1)
        # for i in range(len(points)):
        #     while area(points[i], points[j], points[next_point(points, j)]) > \
        #             area(points[i], points[j], points[(j - 1) % len(points)]):
        #         j = next_point(points, j)

        #     if min_area > dist(points[i], points[j]):
        #         min_area = dist(points[i], points[j])
        #         min_rectangle = (points[i], points[j], points[(j - 1) % len(points)],
        #                         points[(i + 1) % len(points)])

        # return min_rectangle

        # Create a Shapely Polygon
        obs_points = list(set(obs_points))
        obs_polygon = ShapelyPolygon(obs_points)
        obs_bounding_box = obs_polygon.minimum_rotated_rectangle

        obs_obr = [[obs_bounding_box.exterior.coords.xy[0][i],
                    obs_bounding_box.exterior.coords.xy[1][i]] \
                   for i in range(len(obs_bounding_box.exterior.coords.xy[0]) - 1)]
        return obs_obr


class Lane:
    def __init__(self, lane_msg):
        self.exist = False if lane_msg.lane_idx == 0 else True
        self.idx = lane_msg.lane_idx
        self.left_traverse = lane_msg.left_traverse_flag
        self.right_traverse = lane_msg.right_traverse_flag
        self.width = lane_msg.lane_width

        self.occ = 1
        self.obs_id = -1
        self.obs_s = 150
        self.obs_d = 0

    def add_info(self, *args):
        self.occ = args[0]
        self.obs_id = args[1]
        self.obs_s = args[2]
        self.obs_s_d = args[3]


def driving_area(lane_data, ego_pose):
    lane_info = [120, 120, 1, 1, 0]
    return lane_info, 3


def calc_max_curv(csp, ego_pose_s):
    min_index = 1
    max_c = 0
    s_index = int(max(0, np.floor(ego_pose_s / 2) - 2))
    for i in range(s_index, len(csp.s)):
        if csp.s[i] - ego_pose_s >= -10:
            min_index = i
            for j in range(min_index, len(csp.s)):
                if csp.s[j] - ego_pose_s <= 50:
                    c_j = calc_curvature(csp, csp.s[j])
                    if abs(c_j) > max_c:
                        max_c = abs(c_j)
                else:
                    break
            return max_c
    return max_c


def get_obs(obstacles, obs_id):
    for obs in obstacles:
        if obs.id == obs_id:
            return obs
    return None


def get_obs_info(ego_pose, obstacles, csp, obs_index):
    obs_x = obstacles.position_x[obs_index]
    obs_y = obstacles.position_y[obs_index]
    obs_v = math.sqrt(obstacles.velocity_x[obs_index] ** 2 + obstacles.velocity_y[obs_index] ** 2)
    obs_yaw = obstacles.theta[obs_index]
    min_dist = float("inf")
    min_index = 1
    for j in range(len(csp.s)):
        x, y = calc_position(csp, csp.s[j])
        dist = np.sqrt((obs_x - x) ** 2 + (obs_y - y) ** 2)
        if dist < min_dist:
            min_dist = dist
            min_index = j

    rx, ry = calc_position(csp, csp.s[min_index])
    rtheta = calc_yaw(csp, csp.s[min_index])
    rkappa = calc_curvature(csp, csp.s[min_index])
    s, s_d, d, d_d = cartesian_to_frenet3D(csp.s[min_index], rx, ry, rtheta, rkappa, obs_x, obs_y, obs_v, obs_yaw)

    obs_s = s - ego_pose.s
    obs_s_d = s_d

    return obs_s, obs_s_d


def cartesian_to_frenet3D(rs, rx, ry, rtheta, rkappa, x, y, v, theta):
    dx = x - rx
    dy = y - ry
    cos_theta_r = math.cos(rtheta)
    sin_theta_r = math.sin(rtheta)
    cross_rd_nd = cos_theta_r * dy - sin_theta_r * dx
    d = np.sqrt(dx * dx + dy * dy) * np.sign(cross_rd_nd)
    delta_theta = theta - rtheta
    sin_delta_theta = np.sin(delta_theta)
    cos_delta_theta = np.cos(delta_theta)

    one_minus_kappa_r_d = 1 - rkappa * d
    d_d = v * sin_delta_theta

    s = rs + np.dot([dx, dy], [np.cos(rtheta), np.sin(rtheta)])
    s_d = v * cos_delta_theta / one_minus_kappa_r_d

    return s, s_d, d, d_d


def frenet_to_cartesian3D(rs, rx, ry, rtheta, rkappa, rdkappa, s_condition, d_condition):
    if abs(rs - s_condition[0]) >= 1.0e-6:
        print("The reference point s and s_condition[0] don't match")

    a = 0
    theta = 0
    kappa = 0

    cos_theta_r = math.cos(rtheta)
    sin_theta_r = math.sin(rtheta)

    x = rx - sin_theta_r * d_condition[0]
    y = ry + cos_theta_r * d_condition[0]

    one_minus_kappa_r_d = 1 - rkappa * d_condition[0]
    # tan_delta_theta = d_condition[1] / one_minus_kappa_r_d
    # delta_theta = math.atan2(d_condition[1], one_minus_kappa_r_d)
    # cos_delta_theta = math.cos(delta_theta)

    # theta = NormalizeAngle(delta_theta + rtheta)
    # kappa_r_d_prime = rdkappa * d_condition[0] + rkappa * d_condition[1]

    # kappa = ((((d_condition[2] + kappa_r_d_prime * tan_delta_theta) * cos_delta_theta**2) /
    #           one_minus_kappa_r_d + rkappa) * cos_delta_theta / one_minus_kappa_r_d)

    d_dot = d_condition[1] * s_condition[1]

    v = math.sqrt(one_minus_kappa_r_d * one_minus_kappa_r_d * s_condition[1] * s_condition[1] + d_dot * d_dot)

    # delta_theta_prime = one_minus_kappa_r_d / cos_delta_theta * kappa - rkappa
    # a = (s_condition[2] * one_minus_kappa_r_d / cos_delta_theta + s_condition[1] * s_condition[1] /
    #      cos_delta_theta * (d_condition[1] * delta_theta_prime - kappa_r_d_prime))

    return x, y, v, a, theta, kappa


def calc_min_index(X, Y, ego_pose):
    index = 0
    min_dist = np.inf
    for i in range(np.size(X) - 5):
        dist = math.sqrt((X[i] - ego_pose.x) ** 2 + (Y[i] - ego_pose.y) ** 2)
        if dist < min_dist:
            min_dist = dist
            index = i

    return index


def calc_distance(x1, y1, x2, y2):
    y = np.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)
    return y


# def calc_cur_s(csp, ego_pose, index):
#     min_dist = np.inf
#     min_index = 0
#     increase_count = 0
#     dist_tmp = np.inf
#     for i in range(index, len(csp.s)):
#         global_x, global_y = calc_position(csp, csp.s[i])
#         dist = calc_distance(ego_pose.x, ego_pose.y, global_x, global_y)
#         if dist > dist_tmp:
#             increase_count = increase_count + 1
#         if increase_count > 5:
#             break
#         if dist < min_dist:
#             min_dist = dist
#             min_index = i
#         dist_tmp = dist
#
#     s_match = csp.s[min_index]
#     yaw_match = calc_yaw(csp, s_match)
#     x_match, y_match = calc_position(csp, s_match)
#
#     delta_x = ego_pose.x - x_match
#     delta_y = ego_pose.y - y_match
#     delta_s = np.dot([delta_x, delta_y], [np.cos(yaw_match), np.sin(yaw_match)])
#
#     s = np.round(s_match + delta_s, 2)
#
#     return s, min_index

def calc_cur_s(csp, ego_pose, index):
    min_dist = np.inf
    min_index = 0
    increase_count = 0
    dist_tmp = np.inf
    dist_mux = []
    for i in range(index, len(csp.s)):
        global_x, global_y = calc_position(csp, csp.s[i])

        dist = calc_distance(ego_pose.x, ego_pose.y, global_x, global_y)
        dist_mux.append(dist)

    min_index = dist_mux.index(min(dist_mux))
    s_match = csp.s[min_index]
    yaw_match = calc_yaw(csp, s_match)
    x_match, y_match = calc_position(csp, s_match)
    delta_x = ego_pose.x - x_match
    delta_y = ego_pose.y - y_match
    delta_s = np.dot([delta_x, delta_y], [np.cos(yaw_match), np.sin(yaw_match)])

    s = max(0.01, np.round(s_match + delta_s, 2))

    return s, min_index


# def calc_cur_s(csp, ego_pose, index):
#     min_dist = np.inf
#     min_index = 0
#     increase_count = 0
#     dist_tmp = np.inf
#     dist_mux = []
#
#     for i in range(index, len(csp.s)):
#         global_x, global_y = calc_position(csp, csp.s[i])
#         dist = calc_distance(ego_pose.x, ego_pose.y, global_x, global_y)
#         dist_mux.append(dist)
#
#     min_index = dist_mux.index(min(dist_mux))
#     s_match = csp.s[min_index]
#     yaw_match = calc_yaw(csp, s_match)
#     x_match, y_match = calc_position(csp, s_match)
#
#     delta_x = ego_pose.x - x_match
#     delta_y = ego_pose.y - y_match
#     delta_s = np.dot([delta_x, delta_y], [np.cos(yaw_match), np.sin(yaw_match)])
#
#     s = max(0.01, np.round(s_match + delta_s, 2))
#
#     return s, min_index

def calc_cur_fpath_s(fpath, ego_pose, index):
    min_dist = np.inf
    min_index = 0
    increase_count = 0
    dist_tmp = np.inf
    for i in range(index, len(fpath.s)):
        global_x, global_y = fpath.x[i], fpath.y[i]
        dist = calc_distance(ego_pose.x, ego_pose.y, global_x, global_y)
        if dist > dist_tmp:
            increase_count = increase_count + 1
        if increase_count > 5:
            break
        if dist < min_dist:
            min_dist = dist
            min_index = i
        dist_tmp = dist

    s_match = fpath.s[min_index]
    yaw_match = fpath.yaw[min_index]
    x_match, y_match = fpath.x[min_index], fpath.y[min_index]

    delta_x = ego_pose.x - x_match
    delta_y = ego_pose.y - y_match
    delta_s = np.dot([delta_x, delta_y], [np.cos(yaw_match), np.sin(yaw_match)])

    s = np.round(s_match + delta_s, 2)

    return s, min_index


# calc lateral error
def calc_cur_d(ego_pose, csp, cur_s):
    x_ref, y_ref = calc_position(csp, cur_s)
    yaw_ref = calc_yaw(csp, cur_s)

    delta_x = ego_pose.x - x_ref
    delta_y = ego_pose.y - y_ref
    cur_d = np.sqrt(delta_x ** 2 + delta_y ** 2) * np.sign(delta_y * np.cos(yaw_ref) - delta_x * np.sin(yaw_ref))

    return cur_d


# normalize angle
def NormalizeAngle(theta):
    a = (theta + np.pi) % (2 * np.pi)
    if a < 0:
        a += 2 * np.pi
    normalized_ang = a - np.pi
    return normalized_ang


# get everage curv from front global route within 50m
def calc_curv_50(csp, localization):
    min_dist = float("inf")
    min_index = 1
    ave_c = 0
    ego_poses = namedtuple('ego_poses', ['x', 'y'])
    ego_pose = ego_poses(localization.lon, localization.lat)
    for i in range(len(csp.s)):
        global_x, global_y = calc_position(csp, csp.s[i])
        dist = calc_distance(ego_pose.x, ego_pose.y, global_x, global_y)

        if dist < min_dist:
            min_dist = dist
            min_index = i

    i = min_index

    while i < len(csp['s']) - 1:
        if csp.s[i] - csp.s[min_index] > 50:
            break
        ave_c += calc_curvature(csp, csp.s[i])
        i += 1

    if i > min_index:
        ave_c /= (i - min_index + 1)

    return ave_c


def calc_index(ego_d, width):
    index = 0
    if abs(ego_d) <= width / 2:
        index = 0
    elif ego_d < -width / 2:
        index = -1
    elif ego_d > width / 2:
        index = 1
    return index


# Spline2D function
def calc_position(csp, s):
    # calc positon
    x = calc(csp.sx, s)
    y = calc(csp.sy, s)
    return x, y


def calc_curvature(csp, s):
    dx = calcd(csp.sx, s)
    ddx = calcdd(csp.sx, s)
    dy = calcd(csp.sy, s)
    ddy = calcdd(csp.sy, s)

    denominator = (dx ** 2 + dy ** 2) ** 1.5
    k = (ddy * dx - ddx * dy) / denominator

    return k


def calc_d_curvature(csp, s):
    dx = calcd(csp.sx, s)
    ddx = calcdd(csp.sx, s)
    dddx = calcddd(csp.sx, s)
    dy = calcd(csp.sy, s)
    ddy = calcdd(csp.sy, s)
    dddy = calcddd(csp.sy, s)

    a = dx * ddy - dy * ddx
    b = dx * dddy - dy * dddx
    c = dx * ddx + dy * ddy
    d = dx * dx + dy * dy

    dk = (b * d - 3.0 * a * c) / (d ** 3)

    return dk


def calc_yaw(csp, s):
    dx = calcd(csp.sx, s)
    dy = calcd(csp.sy, s)
    delta = 0
    if dx <= 0:
        if dy <= 0:
            dx = -dx
            dy = -dy
            delta = -np.pi
        else:
            delta = np.pi

    yaw = np.arctan(dy / dx) + delta

    return yaw


# Spline function
def calc(sp, t):
    if t < sp.x[0]:
        result = sp.a[0]
        # i = search_index(sp, t)
        # dx = t - sp.x[i]
        # result = sp.a[i] + sp.b[i] * dx + sp.c[i] * dx**2 + sp.d[i] * dx**3
    elif t > sp.x[-1]:

        result = sp.a[-1]
    else:
        i = search_index(sp, t)
        dx = t - sp.x[i]
        result = sp.a[i] + sp.b[i] * dx + sp.c[i] * dx ** 2 + sp.d[i] * dx ** 3

    return result


def calcd(sp, t):
    if t < sp.x[0]:
        result = sp.b[0]
        # i = search_index(sp, t)
        # dx = t - sp.x[i]
        # result = sp.b[i] + 2.0 * sp.c[i] * dx + 3.0 * sp.d[i] * dx**2
    elif t > sp.x[-1]:
        result = sp.b[-1]
    else:
        i = search_index(sp, t)
        dx = t - sp.x[i]
        result = sp.b[i] + 2.0 * sp.c[i] * dx + 3.0 * sp.d[i] * dx ** 2

    return result


def calcdd(sp, t):
    if t < sp.x[0]:
        result = None
        # i = search_index(sp, t)
        # dx=t-sp.x[i]
        # result = 2.0 * sp.c[i] + 6.0 * sp.d[i] * dx
    elif t > sp.x[-1]:
        result = None
    else:
        i = search_index(sp, t)
        dx = t - sp.x[i]
        result = 2.0 * sp.c[i] + 6.0 * sp.d[i] * dx

    return result


def calcddd(sp, t):
    if t < sp.x[0]:
        result = None
        # i = search_index(sp, t)
        # result = 6.0 * sp.d[i]
    elif t > sp.x[-1]:
        result = None
    else:
        i = search_index(sp, t)
        result = 6.0 * sp.d[i]

    return result


def search_index(sp, x):
    min_i = 0
    max_i = len(sp.x) - 2
    index = -1  # 初始化为-1，表示未找到
    count = 1.0  # 计数器，用于限制循环次数
    mid_i = 0

    if max_i == -1:
        return 0
    elif min_i == max_i:
        return 0

    # min_i = int(max(0, math.floor(x / 2) - 2))
    # max_i = int(min(min_i + 5, max_i))

    while min_i <= max_i and count <= len(sp.x):  # 添加循环退出条件
        count += 1
        mid_i = (min_i + max_i) // 2

        if x < sp.x[mid_i]:
            max_i = mid_i - 1  # 更新最大索引为 mid_i - 1
        elif x > sp.x[mid_i]:
            min_i = mid_i + 1  # 更新最小索引为 mid_i + 1
        else:
            break
    index = mid_i
    return index
