# !/usr/bin/env python

import carla
import logging
import numpy as np

try:
    client = carla.Client('100.84.114.112', 2000)
    client.set_timeout(20.0)
    world = client.load_world('Test-Field-Tongji-West')
    print('Map: Test-Field-Tongji-West -- load successfully')
    town_map = world.get_map()

except RuntimeError as ex:
    logging.error(ex)

global_route = np.empty((0, 3))
distance = 1

debug = world.debug

for i in range(100):
    wp = town_map.get_waypoint(carla.Location(x=-330, y=-195, z=0.2),
                               project_to_road=True).next(distance=distance)[0]
    distance += 1
    global_route = np.append(global_route,
                             [[wp.transform.location.x, wp.transform.location.y,
                               wp.transform.location.z]], axis=0)
    print('x: ', wp.transform.location.x, 'y: ', wp.transform.location.y)
    debug.draw_point(
        carla.Location(x=wp.transform.location.x, y=wp.transform.location.y, z=wp.transform.location.z),
        color=carla.Color(r=0, g=0, b=255), life_time=120)

np.save('/home/test/git_shizhen/catkin_ws_east/src/Learning_Based_Replanning/scripts/road_maps/global_route_west_test',
        global_route)


