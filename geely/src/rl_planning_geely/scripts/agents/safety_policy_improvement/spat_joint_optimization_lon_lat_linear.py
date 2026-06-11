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


class spat_joint_optimization_lon_lat_linear:

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
        self.vehicle_nums = 3

        # 横纵向约束
        self.v_min = 0.0
        self.v_max = 70 / 3.6
        self.delta_f_min = -0.588
        self.delta_f_max = 0.588

        self.d_v_min = -3 / 0.1
        self.d_v_max = 6 / 0.1
        self.d_delta_f_min = -0.082 * 4
        self.d_delta_f_max = 0.082 * 4

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
                obj_length = obj_actor.length
                obj_width = obj_actor.width

            obj_x = obj_info['Obj_frenet'][j][0]
            obj_y = obj_info['Obj_frenet'][j][1]
            obj_phi = obj_info['Obj_frenet'][j][2]
            obj_speed = obj_info['Obj_frenet'][j][3]
            obj_delta_f = obj_info['Obj_frenet'][j][4]
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

            # plt.plot(self.obj_x_ref, self.obj_y_ref, 'o-', label=f'Obstacle {j + 1}')

        # plt.xlim(0, 800)  # 设置 x 轴范围，留出 5 的边距
        # plt.ylim(-100, 100)  # 设置 y 轴范围，留出 5 的边距
        # plt.xlabel('X Position')
        # plt.ylabel('Y Position')
        # plt.title('Obstacle Trajectory Prediction')
        # plt.legend()
        # plt.grid(True)
        # plt.gca().set_aspect('equal', adjustable='box')  # 设置横纵坐标比例为1:1
        # plt.pause(0.1)  # 暂停一小段时间以更新图表
        # plt.clf()  # 清除当前图表

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
            for _ in range(self.vehicle_nums):
                self.lbg.append(-np.inf)
                self.ubg.append(0)

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
        C_R = ca.SX.sym('C_R', self.Nu + self.Nx + self.Nx + self.Nx + self.vehicle_nums * self.Np * 7)  # 构建问题的相关参数
        # dU constraint + dynamic constraint + ter_cost + obj_info

        # 这里给定当前/初始位置，目标终点(本车道/左车道)位置

        # 权重矩阵
        self.q = 1.0
        self.ru = 0.1
        self.rdu = 0.1
        # self.ru = 0.0
        # self.rdu = 0.0
        self.Q1 = self.q * np.eye(self.Nx)  # ego_lane: lane_2
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
        mid_id = X.shape[1] // 2
        Ref_ter_mid = ca.mtimes([(X[:, mid_id] - C_R[5:8]).T, self.Q1, X[:, mid_id] - C_R[5:8]])
        Ref_ter = ca.mtimes([(X[:, -1] - C_R[8:11]).T, self.Q1, X[:, -1] - C_R[8:11]])

        obj = obj + Ref_ter + Ref_ter_mid
        # obj = obj + Ref_ter
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
                g2.append((U[:, 0] - C_R[0:2]) / self.T)

            else:
                g2.append((U[:, i] - U[:, i - 1]) / self.T)

        # (self.obj_length.T, self.obj_width.T, self.obj_x_ref.T, self.obj_y_ref.T, self.obj_phi_ref.T,
        # constraint 3: Obstacle avoidance
        for i in range(self.Np):
            for j in range(self.vehicle_nums):
                k = self.Nu + self.Nx + self.Nx + self.Nx + self.Np * j * 7
                if i == 0:
                    cons_obs_h = X[1, i] - C_R[k + 3 + i * 7] + C_R[k + 5 + i * 7] * 0.5 * (
                            self.Width + C_R[k + 1 + i * 7])
                else:
                    cons_obs_h = X[1, i] + (X[0, i] - X[0, i - 1]) * X[2, i] - C_R[k + 3 + i * 7] + C_R[
                        k + 5 + i * 7] * 0.5 * (self.Width + C_R[k + 1 + i * 7])
                g3.append(C_R[k + 5 + i * 7] * cons_obs_h + C_R[k + 6 + i * 7])

        # 定义优化问题
        # 输入变量，这里需要同时将系统状态X也作为优化变量输入，
        # 根据CasADi要求，必须将它们都变形为一维向量
        opt_variables = ca.vertcat(ca.reshape(U, -1, 1), ca.reshape(X, -1, 1))

        # 定义NLP问题，'f'为目标函数，'x'为需寻找的优化结果（优化目标变量），'p'为系统参数，'g'为约束条件
        # 需要注意的是，用SX表达必须将所有表示成标量或者是一维矢量的形式
        # 创建初始控制量约束表达式
        # 构建完整的约束向量
        all_constraints = ca.vertcat(*g1, *g2, *g3)

        nlp_prob = {'f': obj, 'x': opt_variables, 'p': C_R, 'g': all_constraints}

        # ipopt设置
        opts_setting = {'ipopt.max_iter': 120, 'ipopt.print_level': 0, 'print_time': 0,
                        'ipopt.acceptable_tol': 1e-6, 'ipopt.acceptable_obj_change_tol': 1e-6}

        # 最终目标，获得求解器
        self.solver = ca.nlpsol('solver', 'ipopt', nlp_prob, opts_setting)

    def calc_input(self, x_current, safe_speed, obj_info, cloud_points, fpath_info, u_last, csp, fpath, lane_num):
        # u_last = np.array([0, 0])

        ego_f = np.zeros(self.Np)
        ego_r = np.zeros(self.Np)
        current_x_list = np.zeros(self.Np)
        current_y_list = np.zeros(self.Np)
        for i in range(self.Np):
            current_x_list[i] = x_current[0] + u_last[0] * np.cos(x_current[2]) * self.T * i
            current_y_list[i] = x_current[1] + u_last[0] * np.sin(x_current[2]) * self.T * i
            current_phi_list = x_current[2] + u_last[1] * self.T * i

            ego_x_fl = current_x_list[i] - self.Width / 2 * np.sin(current_phi_list) + self.Length / 2 * np.cos(
                current_phi_list)
            ego_x_fr = current_x_list[i] + self.Width / 2 * np.sin(current_phi_list) + self.Length / 2 * np.cos(
                current_phi_list)
            ego_x_rl = current_x_list[i] - self.Width / 2 * np.sin(current_phi_list) - self.Length / 2 * np.cos(
                current_phi_list)
            ego_x_rr = current_x_list[i] + self.Width / 2 * np.sin(current_phi_list) - self.Length / 2 * np.cos(
                current_phi_list)
            ego_f[i] = max(ego_x_fl, ego_x_fr)
            ego_r[i] = min(ego_x_rl, ego_x_rr)

        ref = np.array([fpath_info.s[-1], fpath_info.d[-1], fpath_info.yaw[-1], fpath_info.s[-1], fpath_info.d[-1]])
        mid_id = len(fpath_info.s) // 2
        ref_mid = np.array([fpath_info.s[mid_id], fpath_info.d[mid_id], fpath_info.yaw[mid_id], fpath_info.s[mid_id],
                            fpath_info.d[mid_id]])
        self.solve_obj(obj_info)
        obj_Mux = self.obj_Mux

        #  obs_list:  1. 车的数目  2. x y phi num 3.self.Np
        obs_list = []
        index = [0, 1, 2, 3, 4]
        for i in range(self.vehicle_nums):
            for j in range(self.Np):
                for k in index:
                    obs_list.append(obj_Mux[i][k][j])
                obs_list.append(1 if current_y_list[j] < obj_Mux[i][3][j] else -1)
                obs_list.append(
                    0 if ego_f[j] > (obj_Mux[i][2][j] - self.Length / 2) and ego_r[j] < (
                            obj_Mux[i][2][j] + self.Length) else -1e5)

        # 初始化优化参数
        C_R = np.concatenate((u_last.reshape(-1), x_current, ref_mid[:3], ref[:3], obs_list))
        # handler.save_to_pickle(C_R)
        self.lbx = []
        self.ubx = []
        for _ in range(self.Nc):
            self.lbx.append(self.v_min)
            self.lbx.append(self.delta_f_min)
            self.ubx.append(min(safe_speed, self.v_max))
            # self.ubx.append(self.v_max)
            self.ubx.append(self.delta_f_max)

        min_distance = None
        for m in range(0, int(360 / 1.5)):
            angle = m * 1.5  # 当前角度
            # 转换为笛卡尔坐标
            x = cloud_points[m] * math.cos(math.radians(angle)) * 50.0
            y = cloud_points[m] * math.sin(math.radians(angle)) * 50.0
            # 判断是否在正前方 -0.75m 到 0.75m 范围内
            if -0.75 <= y <= 0.75 and x > 0:
                # 如果是第一个符合条件的点，或者比当前最小距离更近，则更新最小距离
                if min_distance is None or x < min_distance:
                    min_distance = x

        # print(min_distance)
        min_positive_x = min_distance
        # 初始化存储变量
        lbx_mux_list = []
        ubx_mux_list = []

        for i in range(self.Np):
            if lane_num == 3:
                y_min = -3.5 - 0.4
                y_max = +3.5 + 0.4
            if lane_num == 1:
                # y_min = -1.75 + 1.35
                # y_max = 1.75 - 1.35
                y_min = -1.75 + 1.70
                y_max = 1.75 - 1.70
            else:
                y_min = -3.5 - 3.5 - 0.4
                y_max = +3.5 + 0.4

            # 设置 lbx 和 ubx
            self.lbx.append(-np.inf)
            self.lbx.append(y_min)
            self.lbx.append(-np.inf)
            self.ubx.append(min_positive_x + x_current[0] - self.stop_line)
            # self.ubx.append(np.inf)
            self.ubx.append(y_max)
            self.ubx.append(np.inf)

            # 记录 lbx_mux 和 ubx_mux
            lbx_mux_list.append(y_min)
            ubx_mux_list.append(y_max)

        # 初始化优化目标变量

        init_control = np.concatenate((self.u0.reshape(-1, 1), self.next_states.reshape(-1, 1)))

        res = self.solver(x0=init_control, p=C_R, lbg=self.lbg,
                          lbx=self.lbx, ubg=self.ubg, ubx=self.ubx)
        # the feedback is in the series [u0, x0, u1, x1, ...]
        # 获得最优控制结果estimated_opt，u0，x_m
        estimated_opt = res['x'].full()
        u0 = estimated_opt[:self.Nc * self.Nu].reshape(self.Nc, self.Nu)
        x_m = estimated_opt[self.Nc * self.Nu:].reshape(self.Np, self.Nx)
        # self.next_states = np.concatenate((x_m[1:], x_m[-1:]), axis=0)
        self.next_states = np.zeros_like(x_m)
        self.u0 = np.concatenate((u0[1:], u0[-1:]))

        stats = self.solver.stats()
        if stats['success']:
            # print("求解成功，最优解为")
            MPC_unsolved = True
        else:
            # print("求解失败或无解")
            MPC_unsolved = False
        # 实时绘图
        # plt.clf()  # 清除当前图表
        # plt.plot(lbx_mux_list, label='lbx_mux', marker='o', color='blue')
        # plt.plot(ubx_mux_list, label='ubx_mux', marker='x', color='red')
        # plt.plot(lbx_mux_list ,ubx_mux_list, label='lbx_mux', marker='o', color='blue')
        # plt.plot(x_m[:, 0], x_m[:, 1], label='lbx_mux', marker='o', color='blue')
        #
        # plt.xlabel('Iteration (i)')
        # plt.ylabel('Value')
        # plt.title('lbx_mux and ubx_mux over Iterations')
        # plt.legend()
        # plt.grid(True)
        # plt.gca().set_aspect('equal', adjustable='box')  # 设置横纵坐标比例为1:1
        # plt.pause(0.1)  # 暂停一小段时间以更新图表
        print('MPC', MPC_unsolved)
        return np.array([estimated_opt[0], estimated_opt[1]]), MPC_unsolved, x_m
