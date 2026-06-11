#!/home/plusgo/miniconda3/envs/geely/bin/python
# coding=utf-8

import rospy
import numpy as np
from agents.local_planner import cubic_spline_planner
from interface.msg import Global_route
from rl_planning.msg import CSP


class global_csp_node():
    def __init__(self):
        rospy.init_node('global_csp_node', anonymous=True, log_level=rospy.DEBUG)
        rospy.loginfo("#####################")
        rospy.loginfo("Global CSP node processing...")
        rospy.loginfo("#####################\n")

        self.global_route_msg = None
        self.global_csp_msg = CSP()

        rospy.Timer(rospy.Duration(0.2), self.global_csp_periodic_update)

        rospy.Subscriber('global_route_info', Global_route, self.global_route_callback)
        self.pub = rospy.Publisher('global_csp', CSP, queue_size=2)

    def global_route_callback(self, global_route_msg):
        self.global_route_msg = global_route_msg
        #
        # rospy.loginfo("update global route msg")

    def global_csp_periodic_update(self, event):
        if self.global_route_msg is None:
            return
        elif len(self.global_route_msg.routes) < 1:
            return
        msg_points = self.global_route_msg.routes[self.global_route_msg.target_route_id].points

        wx = [getattr(point, 'x') for point in msg_points]
        wy = [getattr(point, 'y') for point in msg_points]
        wz = [0] * len(wx)

        csp = cubic_spline_planner.Spline3D(wx, wy, wz)

        self.global_csp_msg.s = csp.s
        self.global_csp_msg.nx = csp.sx.nx

        self.global_csp_msg.sx_a = csp.sx.a
        self.global_csp_msg.sx_b = csp.sx.b
        self.global_csp_msg.sx_c = csp.sx.c
        self.global_csp_msg.sx_d = csp.sx.d
        self.global_csp_msg.sx_y = csp.sx.y

        self.global_csp_msg.sy_a = csp.sy.a
        self.global_csp_msg.sy_b = csp.sy.b
        self.global_csp_msg.sy_c = csp.sy.c
        self.global_csp_msg.sy_d = csp.sy.d
        self.global_csp_msg.sy_y = csp.sy.y

        self.global_csp_msg.sz_a = csp.sz.a
        self.global_csp_msg.sz_b = csp.sz.b
        self.global_csp_msg.sz_c = csp.sz.c
        self.global_csp_msg.sz_d = csp.sz.d
        self.global_csp_msg.sz_y = csp.sz.y

        self.pub.publish(self.global_csp_msg)

        rospy.loginfo("Global CSP Processing...")
        rospy.logdebug("csp length: %s\n", csp.s[-1])

    def run(self):
        while not rospy.is_shutdown():
            # Publish the processed data to the global_csp topic
            rospy.spin()


if __name__ == '__main__':
    try:
        global_csp_node().run()

    except rospy.ROSInterruptException:
        pass