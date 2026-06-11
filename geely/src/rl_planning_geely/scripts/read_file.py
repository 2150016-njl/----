#!/home/karim/.conda/envs/dongfeng/bin/python
import json5
import numpy as np

with open("/home/karim/route.json") as f:
    data = json5.load(f)
    lane_1 = data['lanes'][0]['points']
    lane_2 = data['lanes'][1]['points']
    num_points = len(lane_1)
    points = np.zeros([num_points, 3])
    for i in range(num_points):
        # points[i] = np.array([-133900 - i, 9233330 + i, 0.01*i])

        x_ave = (lane_1[i]['x'] + lane_2[i]['x'])/2
        y_ave = (lane_1[i]['y'] + lane_2[i]['y'])/2
        points[i] = np.array([x_ave, y_ave, 0.01*i])
np.save('/home/karim/catkin_ws_east-for_DongFengVehicle/src/RL_Planning/scripts/road_maps/global_route_tmp.npy', points)
