from __future__ import division
import numpy as np
import casadi as ca
import time
import math
import numba
import matplotlib.pyplot as plt


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


class spat_joint_optimization_lon_lat_nonlinear:

    def __init__(self, param):
        self.lbx = []
        self.ubx = []
        self.rou = None
        self.ru = None
        self.rdu = None
        self.S = None
        self.q = None
        self.Q1 = None
        self.Q2 = None
        self.Ru = None
        self.Rdu = None
        self.solver = None
        self.param = param
        self.T = self.param.T
        self.L = self.param.L
        self.Length = self.param.Length
        self.Width = self.param.Width
        self.Height = self.param.Height
        self.N = self.param.N
        self.Nx = self.param.mpc_Nx
        self.Nu = self.param.mpc_Nu
        self.Ny = self.param.mpc_Ny
        self.Np = self.param.mpc_Np
        self.Nc = self.param.mpc_Nc
        self.Cy = self.param.mpc_Cy
        self.Lane = self.param.lanewidth
        self.stop_line = self.param.dstop
        self.vehicle_nums = 6

        # 横纵向约束
        self.v_min = 0.0
        self.v_max = 70 / 3.6
        self.delta_f_min = -0.388
        self.delta_f_max = 0.388

        self.d_v_min = -4 / 1
        self.d_v_max = 3 / 1
        self.d_delta_f_min = -0.082 * 3
        self.d_delta_f_max = 0.082 * 3

        self.delta_a_min = -3
        self.delta_a_max = 3
        self.delta_d_delta_f_min = -0.0082
        self.delta_d_delta_f_max = 0.0082
        self.e_min = 0  # 松弛因子的约束
        # self.e_max = 0.02
        self.e_max = 2

        # ref矩阵
        self.obj_length = np.zeros((self.Np, 1))
        self.obj_width = np.zeros((self.Np, 1))
        self.obj_Mux = []
        self.obj_x_ref = np.zeros((self.Np, 1))
        self.obj_y_ref = np.zeros((self.Np, 1))
        self.obj_phi_ref = np.zeros((self.Np, 1))
        self.obj_actor_id = np.zeros((self.Np, 1))
        self.obj_pos = np.zeros((self.Np, 1))

        self.next_states = np.zeros((self.Nx, self.Np)).copy().T
        self.u0 = np.array([0, 0] * self.Nc).reshape(-1, 2).T

        self.model_ocp()
        self.cons_g()

    def solve_obj(self, obj_info):
        self.obj_Mux = []
        # 预测时域内的obj矩阵
        for j in range(np.size(obj_info['Obj_actor'])):
            obj_actor = obj_info['Obj_actor'][j]
            if obj_actor == -1:
                obj_length = 10
                obj_width = 10
                # 当周围没有车时，传入默认值
            else:
                obj_length = obj_actor.LENGTH
                obj_width = obj_actor.WIDTH

            obj_x = obj_info['Obj_cartesian'][j][0]
            obj_y = obj_info['Obj_cartesian'][j][1]
            obj_phi = obj_info['Obj_cartesian'][j][4]
            obj_speed = obj_info['Obj_cartesian'][j][5]
            obj_delta_f = obj_info['Obj_cartesian'][j][6]
            for i in range(self.Np):
                self.obj_x_ref[i] = obj_x + obj_speed * np.cos(obj_phi) * self.T * i
                self.obj_y_ref[i] = obj_y + obj_speed * np.sin(obj_phi) * self.T * i
                self.obj_phi_ref[i] = obj_phi + obj_delta_f * self.T * i

                self.obj_actor_id[i] = 0
                self.obj_length[i] = obj_length
                self.obj_width[i] = obj_width
                self.obj_pos[i] = 0  # 'not vehicle_around'

            self.obj_Mux.append(np.concatenate(
                (self.obj_length.T, self.obj_width.T, self.obj_x_ref.T, self.obj_y_ref.T, self.obj_phi_ref.T,
                 self.obj_actor_id.T, self.obj_pos.T)))

    def cons_g(self):
        # 状态约束
        self.lbg = []
        self.ubg = []

        # g1
        for _ in range(self.Np):
            self.lbg.append(0)
            self.lbg.append(0)
            self.lbg.append(0)
            self.ubg.append(0)
            self.ubg.append(0)
            self.ubg.append(0)

        # g2
        for _ in range(self.Nc):
            self.lbg.append(self.d_v_min)
            self.lbg.append(self.d_delta_f_min)
            self.ubg.append(self.d_v_max)
            self.ubg.append(self.d_delta_f_max)

        # g3
        for i in range(self.Np):
            for _ in range(self.vehicle_nums * 4):
                self.lbg.append(4 * ((self.Length / 4) ** 2 + (self.Width / 2) ** 2))
                self.ubg.append(np.inf)

    def model_ocp(self):
        # 根据数学模型建模
        # 系统状态
        x = ca.SX.sym('x')
        y = ca.SX.sym('y')
        phi = ca.SX.sym('theta')
        states = ca.vcat([x, y, phi])

        # 控制输入
        v = ca.SX.sym('v')
        delta_f = ca.SX.sym('delta_f')
        controls = ca.vertcat(v, delta_f)

        # dynamic_model
        state_trans = ca.vcat([v * ca.cos(phi), v * ca.sin(phi), v * ca.tan(delta_f) / self.L])

        # function
        f = ca.Function('f', [states, controls], [state_trans], ['states', 'control_input'], ['state_trans'])

        # 开始构建MPC
        # 相关变量，格式(状态长度， 步长)
        U = ca.SX.sym('U', self.Nu, self.Nc)  # 控制输出
        X = ca.SX.sym('X', self.Nx, self.Np)  # 系统状态
        C_R = ca.SX.sym('C_R', self.Nu + self.Nx + self.Nx + self.vehicle_nums * self.Np * 5)  # 构建问题的相关参数
        # dU constraint + dynamic constraint + ter_cost + obj_info

        # 这里给定当前/初始位置，目标终点(本车道/左车道)位置

        # 权重矩阵
        self.q = 1
        self.ru = 0.1
        self.rdu = 0.05
        self.S = 0.1  # Obstacle avoidance function coefficient
        self.Q1 = self.q * np.eye(self.Nx)  # ego_lane: lane_2
        self.Q2 = (1 - self.q) * np.eye(self.Nx)  # left_lane: lane_1
        self.Ru = self.ru * np.eye(self.Nu)
        self.Rdu = self.rdu * np.eye(self.Nu)

        # cost function
        obj = 0  # 初始化优化目标值

        # U dU cost function
        for i in range(self.Nc):
            if i == 0:
                dU_cost = 0
            else:
                dU_cost = ca.mtimes([(U[:, i] - U[:, i - 1]).T, self.Rdu, (U[:, i] - U[:, i - 1])])
            U_cost = ca.mtimes([U[:, i].T, self.Ru, U[:, i]])
            obj = obj + U_cost + dU_cost

        # Terminal cost function
        Ref_ter = ca.mtimes([(X[:, -1] - C_R[5:8]).T, self.Q1, X[:, -1] - C_R[5:8]])
        obj = obj + Ref_ter

        g1 = []  # 用list来存储优化目标的向量
        g2 = []
        g3 = []
        # constraint 1: dynamic constraint
        g1.append(X[:, 0] - C_R[2:5])
        for i in range(self.Np - 1):
            if i in range(self.Nc):
                x_next_ = f(X[:, i], U[:, i]) * self.T + X[:, i]
            else:
                x_next_ = f(X[:, i], U[:, self.Nc - 1]) * self.T + X[:, i]
            g1.append(X[:, i + 1] - x_next_)

        # constraint 2: dU constraint
        for i in range(self.Nc):
            if i == 0:
                g2.append((U[0, 0] - C_R[0]) / self.T)
                g2.append((U[1, 0] - C_R[1]) / self.T)
            else:
                g2.append((U[:, i] - U[:, i - 1]) / self.T)

        # # constraint 3: Obstacle avoidance
        for i in range(self.Np):
            vehicle_ego_center1_x = X[0, i] - self.Length / 4 * np.cos(X[2, i])
            vehicle_ego_center1_y = X[1, i] - self.Length / 4 * np.sin(X[2, i])
            vehicle_ego_center2_x = X[0, i] + self.Length / 4 * np.cos(X[2, i])
            vehicle_ego_center2_y = X[1, i] + self.Length / 4 * np.sin(X[2, i])
            # self.Nu + self.Nx + self.Nx + self.vehicle_nums * self.Np * 5
            for j in range(self.vehicle_nums):
                k = self.Nu + self.Nx + self.Nx + self.Np * j * 5
                vehicle_obs_center1_x = C_R[k + 2 + i * 5] - C_R[k + i * 5] / 4 * np.cos(C_R[k + 4 + i * 5])
                vehicle_obs_center1_y = C_R[k + 3 + i * 5] - C_R[k + i * 5] / 4 * np.sin(C_R[k + 4 + i * 5])
                vehicle_obs_center2_x = C_R[k + 2 + i * 5] + C_R[k + i * 5] / 4 * np.cos(C_R[k + 4 + i * 5])
                vehicle_obs_center2_y = C_R[k + 3 + i * 5] + C_R[k + i * 5] / 4 * np.sin(C_R[k + 4 + i * 5])
                g3.append((vehicle_ego_center1_x - vehicle_obs_center1_x) ** 2 + (
                        vehicle_ego_center1_y - vehicle_obs_center1_y) ** 2)
                g3.append((vehicle_ego_center1_x - vehicle_obs_center2_x) ** 2 + (
                        vehicle_ego_center1_y - vehicle_obs_center2_y) ** 2)
                g3.append((vehicle_ego_center2_x - vehicle_obs_center1_x) ** 2 + (
                        vehicle_ego_center2_y - vehicle_obs_center1_y) ** 2)
                g3.append((vehicle_ego_center2_x - vehicle_obs_center2_x) ** 2 + (
                        vehicle_ego_center2_y - vehicle_obs_center2_y) ** 2)

        # 定义优化问题
        # 输入变量，这里需要同时将系统状态X也作为优化变量输入，
        # 根据CasADi要求，必须将它们都变形为一维向量
        opt_variables = ca.vertcat(ca.reshape(U, -1, 1), ca.reshape(X, -1, 1))

        # 定义NLP问题，'f'为目标函数，'x'为需寻找的优化结果（优化目标变量），'p'为系统参数，'g'为约束条件
        # 需要注意的是，用SX表达必须将所有表示成标量或者是一维矢量的形式
        nlp_prob = {'f': obj, 'x': opt_variables, 'p': C_R, 'g': ca.vertcat(*g1, *g2, *g3)}
        # nlp_prob = {'f': obj, 'x': opt_variables, 'p': C_R, 'g': ca.vertcat(*g1, *g2)}

        # ipopt设置
        opts_setting = {'ipopt.max_iter': 100, 'ipopt.print_level': 0, 'print_time': 0,
                        'ipopt.acceptable_tol': 1e-6, 'ipopt.acceptable_obj_change_tol': 1e-6}

        # 最终目标，获得求解器
        self.solver = ca.nlpsol('solver', 'ipopt', nlp_prob, opts_setting)

    def calc_input(self, x_current, obj_info, cloud_points, fpath_info, u_last, csp, fpath):

        ref = np.array([fpath_info.x[-1], fpath_info.y[-1], fpath_info.yaw[-1], fpath_info.s[-1], fpath_info.d[-1]])
        self.solve_obj(obj_info)
        obj_Mux = self.obj_Mux

        #  obs_list:  1. 车的数目  2. x y phi num 3.self.Np
        obs_list = []
        index = [0, 1, 2, 3, 4]
        for i in range(self.vehicle_nums):
            for j in range(self.Np):
                for k in index:
                    obs_list.append(obj_Mux[i][k][j])

        # 初始化优化参数

        C_R = np.concatenate((u_last.reshape(-1), x_current, ref[:3], obs_list))
        self.lbx = []
        self.ubx = []
        for _ in range(self.Nc):
            self.lbx.append(self.v_min)
            self.lbx.append(self.delta_f_min)
            self.ubx.append(self.v_max)
            self.ubx.append(self.delta_f_max)

        cloud_points_xy = []
        for m in range(0, int(360 / 1.5)):
            angle = m * 1.5
            x = cloud_points[m] * math.cos(math.radians(angle)) * 50.0
            y = cloud_points[m] * math.sin(math.radians(angle)) * 50.0
            cloud_points_xy.append(np.array([x, y]))
            # 车辆坐标系下

        filtered_points = [point for point in cloud_points_xy if -0.75 <= point[1] <= 0.75]

        min_positive_x = 50.0
        for point in filtered_points:
            if point[0] > 0 and (min_positive_x is None or point[0] < min_positive_x):
                min_positive_x = point[0]

        for i in range(self.Np):
            y_min = frenet_to_inertial(fpath.s[i], - 3.5 - 3.5 - 0.7, csp)[1]
            y_max = frenet_to_inertial(fpath.s[i], + 3.5 + 0.7, csp)[1]

            self.lbx.append(-np.inf)
            self.lbx.append(y_min)
            self.lbx.append(-np.inf)
            self.ubx.append(min_positive_x + x_current[0] - self.stop_line)
            # self.ubx.append(np.inf)
            self.ubx.append(y_max)
            self.ubx.append(np.inf)

        # 初始化优化目标变量
        init_control = np.concatenate((self.u0.reshape(-1, 1), self.next_states.reshape(-1, 1)))

        res = self.solver(x0=init_control, p=C_R, lbg=self.lbg,
                          lbx=self.lbx, ubg=self.ubg, ubx=self.ubx)

        # the feedback is in the series [u0, x0, u1, x1, ...]
        # 获得最优控制结果estimated_opt，u0，x_m
        estimated_opt = res['x'].full()
        u0 = estimated_opt[:self.Nc * self.Nu].reshape(self.Nc, self.Nu)
        x_m = estimated_opt[self.Nc * self.Nu:].reshape(self.Np, self.Nx)
        self.next_states = np.concatenate((x_m[1:], x_m[-1:]), axis=0)

        self.u0 = np.concatenate((u0[1:], u0[-1:]))

        MPC_unsolved = False
        return np.array([estimated_opt[0], estimated_opt[1]]), MPC_unsolved, x_m
