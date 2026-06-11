import socket
import struct
import numpy as np


class GPS_to_Global:
    def __init__(self):
        self.Latitude = None
        self.Longitude = None
        self.a = 6378137.00000000000000
        self.f = 1 / 298.257223563  # 地球的扁率
        self.b = self.a * (1.0 - self.f)  # 地球的短半轴
        self.e = np.sqrt((self.a ** 2.0 - self.b ** 2.0) / self.a ** 2.0)  # 第一偏心率
        self.ep = np.sqrt((self.a ** 2.0 - self.b ** 2.0) / self.b ** 2.0)  # 第

    def GPS(self, lat, lon):  # WGS48是椭球参数，a是地球长半轴

        LAT_rad = lat * np.pi / 180.0  # 改角度为弧度

        LON_rad = lon * np.pi / 180.0

        Num = int((LON_rad * 180.0 / np.pi) / 3.0)
        L0 = 3 * Num * np.pi / 180.0  # L0 中央子午线经度  rad
        l = LON_rad - L0  # 经度差
        N = self.a / np.sqrt(1.0 - self.e ** 2.0 * np.sin(LAT_rad) ** 2.0)  # N 卯酉圈的半径
        t = np.tan(LAT_rad)
        eta = self.ep * np.cos(LAT_rad)

        m0 = self.a * (1 - self.e ** 2.0)
        m2 = 3.0 / 2.0 * self.e ** 2.0 * m0
        m4 = 5.0 / 4.0 * self.e ** 2.0 * m2
        m6 = 7.0 / 6.0 * self.e ** 2.0 * m4
        m8 = 9.0 / 8.0 * self.e ** 2.0 * m6

        a0 = m0 + m2 / 2.0 + 3.0 / 8 * m4 + 5.0 / 16 * m6 + 35.0 / 128 * m8
        a2 = m2 / 2.0 + m4 / 2.0 + 15.0 / 32 * m6 + 7.0 / 16 * m8
        a4 = m4 / 8.0 + 3.0 / 16 * m6 + 7.0 / 32 * m8
        a6 = m6 / 32.0 + m8 / 16.0
        a8 = m8 / 128.0
        Y = a0 * LAT_rad - (a2 * np.sin(2.0 * LAT_rad)) / 2.0 + (a4 * np.sin(4.0 * LAT_rad)) / 4 - (
                a6 * np.sin(6 * LAT_rad)) / 6 + (
                    a8 * np.sin(8 * LAT_rad)) / 8
        # 接下来我们计算x,y
        y = Y + N / 2.0 * np.sin(LAT_rad) * np.cos(LAT_rad) * l ** 2 + N / 24.0 * np.sin(LAT_rad) * (
                np.cos(LAT_rad) ** 3) * (
                    5.0 - (t ** 2.0) + 9 * eta ** 2 + 4.0 * eta ** 4) * (l ** 4) + N / 720 * np.sin(LAT_rad) * (
                    np.cos(LAT_rad) ** 5) * (
                    61.0 - 58.0 * (t ** 2) + t ** 4 + 270.0 * (eta ** 2) - 330.0 * (eta ** 2) * (t ** 2)) * (l ** 6)
        x = N * np.cos(LAT_rad) * l + N / 6.0 * (np.cos(LAT_rad) ** 3) * (1 - t ** 2 + eta ** 2.0) * (
                l ** 3) + N / 120.0 * (
                    np.cos(LAT_rad) ** 5) * (
                    5.0 - 18 * (t ** 2) + t ** 4 + 14.0 * (eta ** 2) - 58.0 * (eta ** 2) * (t ** 2)) * (
                    l ** 5)
        x = x + 500000

        # global_x = abs(x - 615000)
        # global_y = abs(y - 3463000)

        global_x = x - 615000
        global_y = y - 3463000
        return global_x, global_y

