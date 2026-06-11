#include<cmath>

const double cm_2_m = 0.01;
const double ms_2_kmh = 3.6;
const double kmh_2_ms = 1/3.6;
const double centdeg_2_deg = 0.01;
const double pi = M_PI;

double azimuth_coordinate(double& azimuth){
    double new_azimuth = 0;
    if (azimuth > 180){
        new_azimuth = -180 + (azimuth - 180);
    }
    else{
        new_azimuth = azimuth;
    }

    return new_azimuth;
}

double azimuth_coordinate_rad(double& azimuth){
    double new_azimuth = 0;

    new_azimuth = 0.5*pi - azimuth;
    // if (azimuth > pi){
    //     new_azimuth = -pi + ( pi - azimuth);
    // }
    // else{
    //     new_azimuth = azimuth;
    // }
    return new_azimuth;
}

double deg_2_rad(double& psi){
    return psi / 180 * pi;
}

double rad_2_deg(double& psi){
    return psi  * 180 / pi ;
}


void global_2_ego(double& ego_x, double& ego_y, double& ego_psi, 
    double x, double y, double xy_coord[2]){
    // 全局坐标系到车辆坐标系（东风）
    double x_ = x - ego_x;
    double y_ = y - ego_y;
    double theta = ego_psi;

    xy_coord[0] = x_ * sin(theta) - y_ * cos(theta);
    xy_coord[1] = x_ * cos(theta) + y_ * sin(theta);
}
