import warnings

from metadrive.envs import MetaDriveEnv
from metadrive.policy.rL_planning_policy import RLPlanningPolicy
from metadrive.policy.safety_improvement_policy_nonlinear import SafetyImprovementPolicy
from metadrive.policy.safety_improvement_policy_linear import SafetyImprovementPolicyLinear
from metadrive.envs import StraightConfTraffic, MetaDriveEnv

warnings.filterwarnings("ignore", category=DeprecationWarning)
from stable_baselines3.common.vec_env.subproc_vec_env import SubprocVecEnv
from functools import partial
from stable_baselines3.common.monitor import Monitor


def create_env(cfg):
    env = StraightConfTraffic(dict(map="SSSSSSSSSSSSSS",
                                   # This policy setting simplifies the task
                                   discrete_action=False,
                                   horizon=400,
                                   use_render=False,
                                   agent_policy=SafetyImprovementPolicyLinear,
                                   # scenario setting
                                   traffic_mode="respawn",
                                   random_spawn_lane_index=False,
                                   num_scenarios=1,
                                   driving_reward=1.5,
                                   speed_reward=0.5,
                                   start_seed=5,
                                   accident_prob=0,
                                   use_lateral_reward=True,
                                   log_level=50,
                                   crash_vehicle_penalty=5.0,
                                   crash_object_penalty=5.0,
                                   out_of_road_penalty=5.0,
                                   scenario_difficulty=cfg.args.scenario_difficulty,
                                   use_pedestrian=cfg.args.use_pedestrian
                                   ))
    return env


def create_muti_scenario_env(need_monitor=False):
    env = MetaDriveEnv(dict(map="XCO",
                            # This policy setting simplifies the task
                            discrete_action=False,
                            horizon=800,
                            use_render=False,
                            agent_policy=RLPlanningPolicy,
                            # scenario setting
                            random_spawn_lane_index=False,
                            num_scenarios=1,
                            start_seed=5,
                            accident_prob=0,
                            random_traffic=True,
                            use_lateral_reward=True,
                            crash_vehicle_penalty=10.0,
                            crash_object_penalty=10.0,
                            out_of_road_penalty=10.0,
                            log_level=50,
                            traffic_density=0.15
                            ))
    return env


def make_env(cfg):
    print('Env is starting')
    if cfg.args.task == 'straight_config_traffic-v0':
        if cfg.args.use_vec_env:
            env = SubprocVecEnv([partial(create_env, cfg) for _ in range(cfg.args.env_num)])
        else:
            env = create_env(cfg)

    elif cfg.args.task == 'muti_scenario-v0':
        if cfg.args.use_vec_env:
            env = SubprocVecEnv([partial(create_muti_scenario_env, cfg) for _ in range(cfg.args.env_num)])
        else:
            env = create_muti_scenario_env(cfg)

    else:
        env = None
        print('No task')
    return env
