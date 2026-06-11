import rospy
import numpy as np
from GNSS_process import GPS_to_Global


class GPS_2_Global(object):
    def __init__(self):
        super(GPS_2_Global, self).__init__()
        self.GNSS_converter = GPS_to_Global()

    def run():
        pass

if __name__ == '__main__':
    gps_converter = GPS_2_Global()
    gps_converter.run()