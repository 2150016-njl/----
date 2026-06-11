#include <ros/ros.h>
#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Vector3.h>
#include <cmath>

#include <ros_interface/Location.h>          // 上游（bag 中的真类型）
#include <GNSS_Decoding_py/GNSS_Output.h>    // 下游

using SrcMsg = ros_interface::Location;
using DstMsg = GNSS_Decoding_py::GNSS_Output;

namespace {

// 角度规约到 [-π, π)
inline double wrapToPi(double angle) {
  angle = std::fmod(angle + M_PI, 2.0 * M_PI);
  if (angle < 0) angle += 2.0 * M_PI;
  return angle - M_PI;
}

struct Config {
  // 固定配置（全硬编码）
  const int   leap_seconds           = 18;     // 闰秒
  const bool  require_location_valid = true;   // GNSSStatus 需要位置有效
  const int   rtk_flag_valid_min     = 1;      // rtk_flag >= 1 视为 GNSS 有效

  // 吉利坐标预处理（单位：米）
  // const double east_offset  = +1340.0;   // x = x - (-1340) => +1340
  // const double north_offset = -105630.0; // y = y - 105630  => -105630
};

class GnssConverter {
public:
  explicit GnssConverter(ros::NodeHandle& nh) : nh_(nh) {
    src_topic_ = "/localization/global_fusion/Location/tju";
    dst_topic_ = "GNSS_info";

    sub_ = nh_.subscribe(src_topic_, 50, &GnssConverter::cb, this);
    pub_ = nh_.advertise<DstMsg>(dst_topic_, 10);

    ROS_INFO_STREAM("[gnss_converter] Sub: " << src_topic_ << "  Pub: " << dst_topic_);
                    // << "  E_offset=" << cfg_.east_offset
                    // << "  N_offset=" << cfg_.north_offset);
  }

private:
  void cb(const SrcMsg::ConstPtr& m) {
    DstMsg out;

    // 1) Header：直接沿用 header.stamp（Unix 秒）
    out.header = m->header;

    // 2) Unix -> GPS 周/周内秒
    {
      const double unix_sec    = out.header.stamp.toSec();
      const double gps_seconds = unix_sec - 315964800.0 + static_cast<double>(cfg_.leap_seconds);

      int gps_week = 0;
      uint32_t tow = 0;
      if (gps_seconds >= 0.0) {
        gps_week = static_cast<int>(std::floor(gps_seconds / 604800.0));
        const double tow_d = gps_seconds - gps_week * 604800.0;
        tow = static_cast<uint32_t>(std::floor(std::max(0.0, tow_d)));
      } else {
        const int weeks_offset = static_cast<int>(std::floor((gps_seconds - 604799.0) / 604800.0));
        gps_week = weeks_offset;
        const double tow_d = gps_seconds - gps_week * 604800.0;
        tow = static_cast<uint32_t>(std::floor(std::max(0.0, tow_d)));
      }
      out.GPSWeek = static_cast<uint16_t>(gps_week & 0xFFFF);
      out.GPSTime = tow;
    }

    // 3) 位置（PointENU: E,N,U）+ 吉利平移
    // const double E = m->utm_position.x + cfg_.east_offset;     // x = x - (-1340)
    // const double N = m->utm_position.y + cfg_.north_offset;    // y = y - 105630
    const double E = m->utm_position.x;     
    const double N = m->utm_position.y;    
    const double U = m->utm_position.z;

    out.X_E      = static_cast<float>(E);
    out.Y_N      = static_cast<float>(N);
    out.Altitude = static_cast<float>(U);

    // 4) 速度：上游是 NED（x=N, y=E, z=D）
    const double vN = m->linear_velocity.x;
    const double vE = m->linear_velocity.y;
    const double vD = m->linear_velocity.z;        // Down 正
    const double vU = -vD;                         // Up

    out.VelocityN     = static_cast<float>(vN);
    out.VelocityE     = static_cast<float>(vE);
    out.VelocityDown  = static_cast<float>(vD);    // 下游字段定义为 Down，直接赋值
    out.TotalVelocity = static_cast<float>(std::sqrt(vE*vE + vN*vN + vU*vU));

    // 5) 姿态（弧度）：上游已是“正东为0，逆时针为正”
    out.Roll  = static_cast<float>(m->roll);
    out.Pitch = static_cast<float>(m->pitch);
    const double yaw_east0 = wrapToPi(m->heading); // 直接使用 heading
    out.Yaw_N         = static_cast<float>(yaw_east0);

    // 6) 跟踪角（速度方向，东为0）：atan2(VN, VE)
    out.TrackingAngle = static_cast<float>(wrapToPi(std::atan2(vN, vE)));

    // 7) 角速度：上游 FRD、单位“度/秒” → rad/s，且 z:Down 为正，转为 Up 为正需取负
    const double deg2rad = M_PI / 180.0;
    out.RollRate  = static_cast<float>( m->angular_velocity.x * deg2rad );   // +x: 前
    out.PitchRate = static_cast<float>( m->angular_velocity.y * deg2rad );   // +y: 右
    out.YawRate_N = static_cast<float>(-m->angular_velocity.z * deg2rad );   // +z: 下 → 取负

    // 8) 加速度：上游 FRD（m/s^2），直接透传
    out.ax = static_cast<float>(m->linear_acceleration.x);
    out.ay = static_cast<float>(m->linear_acceleration.y);
    out.az = static_cast<float>(m->linear_acceleration.z);

    // 9) 状态位
    const bool gnss_ok = (m->rtk_flag >= cfg_.rtk_flag_valid_min) &&
                         (!cfg_.require_location_valid || (m->location_valid_flag != 0));
    out.GNSSStatus         = static_cast<uint8_t>(gnss_ok ? 1 : 0);

    const bool imu_ok      = (m->odom_type != 0) || (m->auxiliary_type != 0);
    out.IMUAlignmentStatus = static_cast<uint8_t>(imu_ok ? 1 : 0);

    // 10) 记录头占位
    out.OutputRecordType = static_cast<uint8_t>(0);
    out.RecordLength     = static_cast<uint8_t>(0);

    pub_.publish(out);
        // ROS_INFO_STREAM("Pub GNSSinfo Success");
                    // << "  E_offset=" << cfg_.east_offset
                    // << "  N_offset=" << cfg_.north_offset);
  }

  ros::NodeHandle nh_;
  ros::Subscriber sub_;
  ros::Publisher  pub_;
  Config cfg_;
  std::string src_topic_, dst_topic_;
};

} // namespace

int main(int argc, char** argv) {
  ros::init(argc, argv, "gnss_converter_node");
  ros::NodeHandle nh;
  GnssConverter node(nh);
  ros::spin();
  return 0;
}
