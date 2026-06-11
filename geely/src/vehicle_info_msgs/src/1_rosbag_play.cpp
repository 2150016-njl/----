// object_and_loc_to_vehicle_info_node.cpp
// rostopic echo -n5 /merged_objects/header/stamp
// rostopic echo -n5 /localization/global_fusion/Location/tju/header/stamp

#include <ros/ros.h>
#include <cmath>
#include <vector>
#include <string>
#include <cstdlib>
#include <cstdio>

#include <message_filters/synchronizer.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/simple_filter.h>   // Relay
#include <boost/bind.hpp>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point32.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/PolygonStamped.h>

#include <ros_interface/Location.h>           // /localization/global_fusion/Location/tju
#include <plusgo_msgs/Objects.h>              // /merged_objects

#include <rl_planning/Point.h>
#include <rl_planning/Vector3D.h>
#include <rl_planning/VehicleInfo.h>
#include <rl_planning/VehicleInfoBatch.h>

// ---- OpenCV for PNG snapshot ----
#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>

// ========== Relay：把 SimpleFilter 的 signalMessage 暴露为公开 send() ==========
template <typename M>
class Relay : public message_filters::SimpleFilter<M> {
public:
  void send(const boost::shared_ptr<const M>& msg) { this->signalMessage(msg); }
};

// 最近一帧 /merged_objects 的时间戳（用于给 Location 补戳）
static ros::Time g_last_objs_stamp;

// 供同步器使用的“虚拟订阅器”
static Relay<ros_interface::Location> g_loc_fix_src;
static Relay<plusgo_msgs::Objects>    g_objs_fix_src;

// ---------- 小工具：坐标变换 ----------
static inline void egoToWorld(double yaw, double ego_x, double ego_y,
                              double ex, double ey, double& wx, double& wy) {
  const double c = std::cos(yaw), s = std::sin(yaw);
  wx = ex * c - ey * s + ego_x;
  wy = ex * s + ey * c + ego_y;
}
static inline void rotEgoToWorld(double yaw, double ex, double ey, double& wx, double& wy) {
  const double c = std::cos(yaw), s = std::sin(yaw);
  wx = ex * c - ey * s;
  wy = ex * s + ey * c;
}
static inline double wrapAngle(double a){
  while (a >  M_PI) a -= 2.0*M_PI;
  while (a < -M_PI) a += 2.0*M_PI;
  return a;
}

// ---------- 每 5s 生成 PNG 快照 ----------
static ros::Time g_last_save;
static void saveSnapshotPNG(double ego_x, double ego_y, double ego_yaw,
                            const std::vector<rl_planning::VehicleInfo>& objs_world)
{
  const int W = 800, H = 800;
  const double range = 60.0; // 视野 +-60m

  auto worldToPixel = [&](double x, double y){
    double u = (x - (ego_x - range)) / (2.0*range) * W;
    double v = (y - (ego_y - range)) / (2.0*range) * H;
    v = H - v; // 图像 y 向下
    return cv::Point(static_cast<int>(std::round(u)), static_cast<int>(std::round(v)));
  };

  cv::Mat img(H, W, CV_8UC3, cv::Scalar(255,255,255));

  // 坐标轴
  cv::line(img, worldToPixel(ego_x - range, ego_y), worldToPixel(ego_x + range, ego_y), cv::Scalar(220,220,220), 1);
  cv::line(img, worldToPixel(ego_x, ego_y - range), worldToPixel(ego_x, ego_y + range), cv::Scalar(220,220,220), 1);

  // 自车：点 + 航向箭头 + 车体矩形（3m x 6m）
  cv::Point p_ego = worldToPixel(ego_x, ego_y);
  cv::circle(img, p_ego, 6, cv::Scalar(0,0,0), -1);
  const double head_len = 5.0; // 5m
  cv::Point p_ego_head = worldToPixel(ego_x + head_len*std::cos(ego_yaw),
                                      ego_y + head_len*std::sin(ego_yaw));
  cv::arrowedLine(img, p_ego, p_ego_head, cv::Scalar(0,0,0), 2, cv::LINE_AA, 0, 0.25);

  const double halfL = 3.0/2.0, halfW = 6.0/2.0;
  std::vector<cv::Point> ego_poly = {
    worldToPixel(ego_x + std::cos(ego_yaw)*halfW - std::sin(ego_yaw)*halfL,
                 ego_y + std::sin(ego_yaw)*halfW + std::cos(ego_yaw)*halfL),
    worldToPixel(ego_x + std::cos(ego_yaw)*halfW + std::sin(ego_yaw)*halfL,
                 ego_y + std::sin(ego_yaw)*halfW - std::cos(ego_yaw)*halfL),
    worldToPixel(ego_x - std::cos(ego_yaw)*halfW + std::sin(ego_yaw)*halfL,
                 ego_y - std::sin(ego_yaw)*halfW - std::cos(ego_yaw)*halfL),
    worldToPixel(ego_x - std::cos(ego_yaw)*halfW - std::sin(ego_yaw)*halfL,
                 ego_y - std::sin(ego_yaw)*halfW + std::cos(ego_yaw)*halfL)
  };
  for (size_t i=0;i<4;i++)
    cv::line(img, ego_poly[i], ego_poly[(i+1)%4], cv::Scalar(0,0,0), 2);

  // 周车：多边形 + 中心点 + 航向箭头 + ID
  for (const auto& v : objs_world) {
    // 多边形（如果有）
    const auto& pts = v.convex_hull.polygon.points;
    if (pts.size() >= 2) {
      for (size_t i=0; i<pts.size(); ++i) {
        const auto& a = pts[i];
        const auto& b = pts[(i+1)%pts.size()];
        cv::line(img, worldToPixel(a.x, a.y), worldToPixel(b.x, b.y),
                 cv::Scalar(60,60,255), 2, cv::LINE_AA);
      }
    } else if (pts.size()==1) {
      cv::circle(img, worldToPixel(pts[0].x, pts[0].y), 3, cv::Scalar(60,60,255), -1);
    }

    // 中心点
    cv::Point pc = worldToPixel(v.actor_pos.x, v.actor_pos.y);
    cv::circle(img, pc, 4, cv::Scalar(60,60,255), -1);

    // 航向箭头（用绝对航向）
    cv::Point pc_head = worldToPixel(v.actor_pos.x + head_len*std::cos(v.actor_psi),
                                     v.actor_pos.y + head_len*std::sin(v.actor_psi));
    cv::arrowedLine(img, pc, pc_head, cv::Scalar(60,60,255), 2, cv::LINE_AA, 0, 0.25);

    // ID 与速度标注（xy 平面速度）
    char label[64];
    std::snprintf(label, sizeof(label), "id:%u v=%.1f", v.id,
                  std::sqrt(v.actor_vel.x*v.actor_vel.x + v.actor_vel.y*v.actor_vel.y));
    cv::putText(img, label, pc + cv::Point(6,-6),
                cv::FONT_HERSHEY_SIMPLEX, 0.45, cv::Scalar(20,20,20), 1, cv::LINE_AA);
  }

  // 文字信息
  char text[128];
  std::snprintf(text, sizeof(text), "ego(%.1f, %.1f) psi=%.2f rad", ego_x, ego_y, ego_yaw);
  cv::putText(img, text, cv::Point(10, 25), cv::FONT_HERSHEY_SIMPLEX, 0.6, cv::Scalar(0,0,0), 1, cv::LINE_AA);

  // 保存
  const char* home = std::getenv("HOME");
  std::string base = home ? std::string(home) : std::string("/tmp");
  char fname[256];
  std::snprintf(fname, sizeof(fname), "%s/vehicle_scene_%ld.png", base.c_str(),
                static_cast<long>(ros::Time::now().toSec()));
  cv::imwrite(fname, img);
  ROS_INFO("[snapshot] saved PNG: %s", fname);
}

// -------------------- 同步回调：loc + /merged_objects → VehicleInfoBatch --------------------
void Callback(const ros_interface::Location::ConstPtr    &loc_msg,
              const plusgo_msgs::Objects::ConstPtr       &objs_msg,
              ros::Publisher                             &pub)
{
  // 自车信息（与原代码一致）
  rl_planning::Point     ego_actor_pos;
  rl_planning::Vector3D  ego_actor_vel, ego_actor_acc;

  ego_actor_pos.x = loc_msg->utm_position.x;
  ego_actor_pos.y = loc_msg->utm_position.y;
  ego_actor_pos.z = loc_msg->utm_position.z;

  const double ego_actor_psi = loc_msg->heading;   // -pi~pi

  ego_actor_vel.x = loc_msg->linear_velocity.x;
  ego_actor_vel.y = loc_msg->linear_velocity.y;
  ego_actor_vel.z = loc_msg->linear_velocity.z;

  const double ego_actor_speed = std::sqrt(
      ego_actor_vel.x * ego_actor_vel.x +
      ego_actor_vel.y * ego_actor_vel.y +
      ego_actor_vel.z * ego_actor_vel.z);

  ego_actor_acc.x = loc_msg->linear_acceleration.x;
  ego_actor_acc.y = loc_msg->linear_acceleration.y;
  ego_actor_acc.z = loc_msg->linear_acceleration.z;

  rl_planning::VehicleInfo ego_vehicle_info;
  ego_vehicle_info.id     = 666;
  ego_vehicle_info.label  = std::string("ego");
  ego_vehicle_info.height = 1.6;

  ego_vehicle_info.actor_pos   = ego_actor_pos;
  ego_vehicle_info.actor_vel   = ego_actor_vel;
  ego_vehicle_info.actor_acc   = ego_actor_acc;
  ego_vehicle_info.actor_speed = ego_actor_speed;
  ego_vehicle_info.actor_psi   = ego_actor_psi;

  // 自车外接框：3.0 x 6.0
  geometry_msgs::PolygonStamped polygon_stamped;
  polygon_stamped.header.stamp    = ros::Time::now();
  polygon_stamped.header.frame_id = "global_world";

  const double halfLength = 3.0 / 2.0;
  const double halfWidth  = 6.0 / 2.0;

  geometry_msgs::Point32 p1, p2, p3, p4;
  const float pos_x = static_cast<float>(ego_actor_pos.x);
  const float pos_y = static_cast<float>(ego_actor_pos.y);

  p1.x = pos_x + std::cos(ego_actor_psi)*halfWidth - std::sin(ego_actor_psi)*halfLength;
  p1.y = pos_y + std::sin(ego_actor_psi)*halfWidth + std::cos(ego_actor_psi)*halfLength;

  p2.x = pos_x + std::cos(ego_actor_psi)*halfWidth + std::sin(ego_actor_psi)*halfLength;
  p2.y = pos_y + std::sin(ego_actor_psi)*halfWidth - std::cos(ego_actor_psi)*halfLength;

  p3.x = pos_x - std::cos(ego_actor_psi)*halfWidth + std::sin(ego_actor_psi)*halfLength;
  p3.y = pos_y - std::sin(ego_actor_psi)*halfWidth - std::cos(ego_actor_psi)*halfLength;

  p4.x = pos_x - std::cos(ego_actor_psi)*halfWidth - std::sin(ego_actor_psi)*halfLength;
  p4.y = pos_y - std::sin(ego_actor_psi)*halfWidth + std::cos(ego_actor_psi)*halfLength;

  polygon_stamped.polygon.points.push_back(p1);
  polygon_stamped.polygon.points.push_back(p2);
  polygon_stamped.polygon.points.push_back(p3);
  polygon_stamped.polygon.points.push_back(p4);

  ego_vehicle_info.convex_hull = polygon_stamped;

  // 组装批次
  rl_planning::VehicleInfoBatch v_info_batch;

  // Header：与原代码一致
  std_msgs::Header header;
  header.frame_id = "geely";
  header.seq      = 1000;
  header.stamp    = ros::Time::now();
  v_info_batch.header = header;

  v_info_batch.vehicle_info_batch.push_back(ego_vehicle_info);

  // 缓存世界系对象供可视化
  std::vector<rl_planning::VehicleInfo> objs_world_cache;

  // 其他目标（先把相对信息转绝对，再计算相对）
  for (const auto& obj : objs_msg->objects)
  {
    rl_planning::VehicleInfo vehicle_info;

    // 用 track_id
    vehicle_info.id = (obj.track_id >= 0) ? static_cast<uint64_t>(obj.track_id) : 0u;

    // 1) 位置：若是相对(车体系)，先车体→世界
    double wx = obj.center.x, wy = obj.center.y;
    if (!obj.is_absolute_position) {
      egoToWorld(ego_actor_psi, ego_actor_pos.x, ego_actor_pos.y, obj.center.x, obj.center.y, wx, wy);
    }
    vehicle_info.actor_pos.x = wx;
    vehicle_info.actor_pos.y = wy;
    vehicle_info.actor_pos.z = ego_actor_pos.z;

    // 2) 凸包（只用 x,y；必要时旋转+平移）
    geometry_msgs::PolygonStamped hull;
    hull.header.stamp    = ros::Time::now();
    hull.header.frame_id = "global_world";
    hull.polygon.points.reserve(obj.polygon.points.size());
    for (const auto& pt : obj.polygon.points) {
      geometry_msgs::Point32 p;
      double px = pt.x, py = pt.y;
      if (!obj.is_absolute_position) {
        double tx, ty; egoToWorld(ego_actor_psi, ego_actor_pos.x, ego_actor_pos.y, pt.x, pt.y, tx, ty);
        px = tx; py = ty;
      }
      p.x = static_cast<float>(px);
      p.y = static_cast<float>(py);
      p.z = pt.z;
      hull.polygon.points.push_back(p);
    }
    vehicle_info.convex_hull = hull;

    // 3) 高度
    double h = obj.size.z;
    if (!(h > 0.0)) {
      h = static_cast<double>(obj.polygon.max_height - obj.polygon.min_height);
    }
    vehicle_info.height = h;

    // 4) 航向角：若为相对航向，加上自车航向 → 绝对航向
    double psi_world = obj.theta;
    if (!obj.is_absolute_position) {
      psi_world = wrapAngle(ego_actor_psi + obj.theta);
    }
    vehicle_info.actor_psi = psi_world;

    // 5) 速度/加速度：若为相对，旋转到世界系（不平移）
    rl_planning::Vector3D actor_vel, actor_acc;
    double vx = obj.velocity.x, vy = obj.velocity.y;
    if (!obj.is_absolute_position) {
      rotEgoToWorld(ego_actor_psi, obj.velocity.x, obj.velocity.y, vx, vy);
    }
    actor_vel.x = vx; actor_vel.y = vy; actor_vel.z = obj.velocity.z;
    vehicle_info.actor_vel = actor_vel;

    double ax = obj.acceleration.x, ay = obj.acceleration.y;
    if (!obj.is_absolute_position) {
      rotEgoToWorld(ego_actor_psi, obj.acceleration.x, obj.acceleration.y, ax, ay);
    }
    actor_acc.x = ax; actor_acc.y = ay; actor_acc.z = obj.acceleration.z;
    vehicle_info.actor_acc = actor_acc;

    // 6) 障碍物速度（xy）
    vehicle_info.actor_speed = std::sqrt(actor_vel.x * actor_vel.x +
                                         actor_vel.y * actor_vel.y);

    // 7) 相对位置：按原公式 世界差→旋到车体系
    const double delta_x = vehicle_info.actor_pos.x - ego_actor_pos.x;
    const double delta_y = vehicle_info.actor_pos.y - ego_actor_pos.y;
    vehicle_info.actor_rel_pos.x =  delta_x * std::cos(ego_actor_psi) + delta_y * std::sin(ego_actor_psi);
    vehicle_info.actor_rel_pos.y =  delta_y * std::cos(ego_actor_psi) - delta_x * std::sin(ego_actor_psi);

    // 不设置 label、不计算相对速度等 —— 与原代码保持一致
    v_info_batch.vehicle_info_batch.push_back(vehicle_info);

    // 供可视化缓存（世界系）
    objs_world_cache.push_back(vehicle_info);
  }

  // 调试输出
  ROS_DEBUG_STREAM("ego_x: " << ego_actor_pos.x << " ego_y: " << ego_actor_pos.y
                   << " psi: " << ego_actor_psi << " objs: " << objs_msg->objects.size());
  ROS_INFO_THROTTLE(1.0, "GPS & Perception processing...");

  // 发布
  pub.publish(v_info_batch);

  // 每 5 秒保存一张 PNG（世界系绘制）
  const ros::Time now = ros::Time::now();
  if (g_last_save.isZero() || (now - g_last_save).toSec() >= 5.0) {
    // saveSnapshotPNG(ego_actor_pos.x, ego_actor_pos.y, ego_actor_psi, objs_world_cache);
    g_last_save = now;
  }
}

// -------------------- 原始订阅 → 修正时间戳 → 喂同步器 --------------------
void objsRawCb(const plusgo_msgs::Objects::ConstPtr& msg)
{
  if (!msg->header.stamp.isZero()) g_last_objs_stamp = msg->header.stamp;
  g_objs_fix_src.send(msg);  // 原样转发
}

void locRawCb(const ros_interface::Location::ConstPtr& msg)
{
  // 仅当定位时间戳为 0 时，用最近一帧 /merged_objects 的时间戳补齐
  ros_interface::LocationPtr m(new ros_interface::Location(*msg));
  if (m->header.stamp.isZero()) {
    if (g_last_objs_stamp.isZero()) {
      // 还没收到 /merged_objects，先丢弃这一帧定位，等有参考时间再同步
      return;
    }
    m->header.stamp = g_last_objs_stamp;
  }
  g_loc_fix_src.send(m);
}

int main(int argc, char* argv[]) {
  ros::init(argc, argv, "object_and_loc_to_vehicle_info_node");
  ros::NodeHandle nh;

  ros::Rate loop_rate(50);

  // 下游发布（与原代码相同话题/类型）
  ros::Publisher pub = nh.advertise<rl_planning::VehicleInfoBatch>("/vehicle_info_batch", 20);

  // 原始订阅（不直接接入同步器）
  ros::Subscriber loc_raw  = nh.subscribe("/localization/global_fusion/Location/tju", 50, locRawCb);
  ros::Subscriber objs_raw = nh.subscribe("/merged_objects",                           50, objsRawCb);

  // 同步（ApproximateTime）：接入修正后的 Relay 源
  typedef message_filters::sync_policies::ApproximateTime<
      ros_interface::Location,
      plusgo_msgs::Objects> sync_policy;

  message_filters::Synchronizer<sync_policy> sync(sync_policy(100), g_loc_fix_src, g_objs_fix_src);
  sync.registerCallback(boost::bind(Callback, _1, _2, boost::ref(pub)));

  ROS_INFO("[main] Node started. Waiting for messages...");
  while (ros::ok())
  {
      ros::spinOnce();
      loop_rate.sleep();
  }
  return 0;
}
