#! /usr/bin/env python3


import rospy
import math
from GNSS_Decoding_py.msg import GNSS_Output

from GNSS_info_process import GNSS_UDP_receive
from GNSS_info_process import GPS_to_Global


# from msg import GNSS_info_msg


def GNSS_info_publisher():
    rospy.init_node("GNSS_info_process", anonymous=True)  # 初始化一个node，node名字为GNSS_info_process

    GNSS_info_pub = rospy.Publisher("GNSS_info", GNSS_Output, queue_size=10)  # Publisher第一个参数为话题名称，第二个参数为数据类型

    # queue_size:None 不建议，会设置成为阻塞式同步收发模式
    # queue_size:0 不建议，会设置为无限缓冲区模式，危险
    # queue_size:10 or more 一般情况下设置为10，太大会导致数据延时不同步

    rate = rospy.Rate(50)  # 更新频率是50Hz

    GNSS_Output_msg = GNSS_Output()

    gnss_udp_receive = GNSS_UDP_receive()  # 实例化类
    gps_to_global = GPS_to_Global()

    while not rospy.is_shutdown():
        gnss_udp_receive.UDP_receive()  # 接收数据
        gnss_udp_receive.GNSS_resolution()  # 数据解包
        GNSS_Output_msg.header.stamp = rospy.get_rostime()
        GNSS_Output_msg.OutputRecordType = gnss_udp_receive.OutputRecordType
        GNSS_Output_msg.RecordLength = gnss_udp_receive.RecordLength
        GNSS_Output_msg.GPSWeek = gnss_udp_receive.GPSWeek
        GNSS_Output_msg.GPSTime = gnss_udp_receive.GPSTime
        GNSS_Output_msg.IMUAlignmentStatus = gnss_udp_receive.IMUAlignmentStatus
        GNSS_Output_msg.GNSSStatus = gnss_udp_receive.GNSSStatus
        GNSS_Output_msg.X_E, GNSS_Output_msg.Y_N = gps_to_global.GPS(gnss_udp_receive.Latitude,
                                                                     gnss_udp_receive.Longitude)
        GNSS_Output_msg.Altitude = gnss_udp_receive.Altitude
        GNSS_Output_msg.VelocityN = gnss_udp_receive.North_Velocity
        GNSS_Output_msg.VelocityE = gnss_udp_receive.East_Velocity
        GNSS_Output_msg.VelocityDown = gnss_udp_receive.Velocitydown
        GNSS_Output_msg.TotalVelocity = gnss_udp_receive.TotalVelocity
        GNSS_Output_msg.Roll = gnss_udp_receive.Roll
        GNSS_Output_msg.Pitch = gnss_udp_receive.Pitch
        GNSS_Output_msg.Yaw_N = gnss_udp_receive.Heading
        GNSS_Output_msg.TrackingAngle = gnss_udp_receive.TrackingAngle
        GNSS_Output_msg.RollRate = gnss_udp_receive.RollRate
        GNSS_Output_msg.PitchRate = gnss_udp_receive.PitchRate
        GNSS_Output_msg.YawRate_N = gnss_udp_receive.Yawrate
        GNSS_Output_msg.ax = gnss_udp_receive.ax
        GNSS_Output_msg.ay = gnss_udp_receive.ay
        GNSS_Output_msg.az = gnss_udp_receive.az

        # 发布消息
        GNSS_info_pub.publish(GNSS_Output_msg)
        # Global_states_pub.publish(global_states_msg)

        rospy.loginfo('Publish GNSS_Output_msg:[%f, %f]', GNSS_Output_msg.X_E, GNSS_Output_msg.Y_N)
        rospy.loginfo('Publish GNSS speed: %f',
                      math.sqrt(GNSS_Output_msg.VelocityN ** 2 + GNSS_Output_msg.VelocityE ** 2))
        rospy.loginfo('Publish TotalVelocity: %f', GNSS_Output_msg.TotalVelocity)

        rate.sleep()  # 休眠


if __name__ == "__main__":
    try:
        GNSS_info_publisher()
    except rospy.ROSInterruptException:
        pass
