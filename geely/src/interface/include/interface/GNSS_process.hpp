#include<ros/ros.h>
#include<cmath>
#define _USE_MATH_DEFINES
using namespace std;

class GNSS_process{
    public:
        GNSS_process(){};

        double* GpsToGlobal(const double lat, const double lon){
            double *global_xy = new double[2];

            double LAT_rad = lat * pi / 180.0;
            double LON_rad = lon * pi / 180.0;

            int Num = (int) (LON_rad * 180.0 / pi) / 3.0;
            double L0 = 3 * Num * pi / 180.0;  // L0 中央子午线经度  rad
            double l = LON_rad - L0;  // 经度差
            double N = this->a / pow(1.0 - pow(this->e, 2.0) * pow(sin(LAT_rad), 2.0), 0.5);  // N 卯酉圈的半径
            double t = tan(LAT_rad);
            double eta = this->ep * cos(LAT_rad);

            double m0 = this->a * (1 - pow(this->e, 2.0));
            double m2 = 3.0 / 2.0 * pow(this->e, 2.0) * m0;
            double m4 = 5.0 / 4.0 * pow(this->e, 2.0) * m2;
            double m6 = 7.0 / 6.0 * pow(this->e, 2.0) * m4;
            double m8 = 9.0 / 8.0 * pow(this->e, 2.0) * m6;

            double a0 = m0 + m2 / 2.0 + 3.0 / 8 * m4 + 5.0 / 16 * m6 + 35.0 / 128 * m8;
            double a2 = m2 / 2.0 + m4 / 2.0 + 15.0 / 32 * m6 + 7.0 / 16 * m8;
            double a4 = m4 / 8.0 + 3.0 / 16 * m6 + 7.0 / 32 * m8;
            double a6 = m6 / 32.0 + m8 / 16.0;
            double a8 = m8 / 128.0;
            double Y = a0 * LAT_rad - (a2 * sin(2.0 * LAT_rad)) / 2.0 + (a4 * sin(4.0 * LAT_rad)) / 4 - 
                        (a6 * sin(6 * LAT_rad)) / 6 + (a8 * sin(8 * LAT_rad)) / 8;
            // 计算x,y
            double y = Y + N / 2.0 * sin(LAT_rad) * cos(LAT_rad) * pow(l, 2) + 
                        N / 24.0 * sin(LAT_rad) * (pow(cos(LAT_rad), 3)) * 
                        (5.0 - (pow(t, 2.0)) + 9 * pow(eta, 2) + 4.0 * pow(eta, 4)) * pow(l, 4) + 
                        N / 720 * sin(LAT_rad) * pow(cos(LAT_rad), 5) * 
                        (61.0 - 58.0 * pow(t, 2) + pow(t, 4) + 270.0 * pow(eta, 2) - 330.0 * pow(eta, 2) * pow(t, 2)) * pow(l, 6);

            double x = N * cos(LAT_rad) * l + 
                        N / 6.0 * pow(cos(LAT_rad), 3) * (1 - pow(t, 2) + pow(eta, 2.0)) * pow(l, 3) + 
                        N / 120.0 * pow(cos(LAT_rad), 5) * 
                        (5.0 - 18 * pow(t, 2) + pow(t, 4) + 14.0 * pow(eta, 2) - 58.0 * pow(eta, 2) * pow(t, 2)) * pow(l, 5);
            x = x;

            global_xy[0] = x;
            global_xy[1] = y;

            return global_xy;
        };

    private:
        double pi = M_PI;

        double a = 6378137.0000;
        double f = 1 / 298.257223563;  // 地球的扁率
        double b = a * (1.0 - f);
        double e = pow((pow(a, 2) - pow(b, 2)) / pow(a, 2), 0.5); // ；第一偏心率
        double ep = pow((pow(a, 2) - pow(b, 2)) / pow(b, 2), 0.5); // ；第二偏心率
};
