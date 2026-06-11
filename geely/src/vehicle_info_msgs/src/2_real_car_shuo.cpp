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

#include <opencv2/core.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>

// ========== Relay：把 SimpleFilter 的 signalMessage 暴露为公开 send() ==========
template <typename M>
class Relay : public message_filters::SimpleFilter<M> {
public:
  void send(const boost::shared_ptr<const M>& msg) { this->signalMessage(msg); }
};

// --------- 全局状态 ---------
static ros::Time     g_last_objs_stamp;       // 最近一帧 objects 的时间戳
static ros::Time     g_last_loc_stamp;        // 修正后定位的上一帧时间戳（保证单调递增）
static uint32_t      g_loc_ns_bump = 0;       // 纳秒级微调计数器
static ros::Publisher g_loc_fixed_pub;        // 发布修正后的定位，供验证

static Relay<ros_interface::Location> g_loc_fix_src;  // 给同步器的“虚拟订阅器”
static Relay<plusgo_msgs::Objects>    g_objs_fix_src;

static ros::Time g_last_save;                // PNG 存图节流

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

// ---------- 每 5s 生成 PNG 快照（世界系） ----------
// ---------- 每 5s 生成 PNG 快照（以自车航向为 +Y 轴） ----------
static void saveSnapshotPNG(double ego_x, double ego_y, double ego_yaw,
                            const std::vector<rl_planning::VehicleInfo>& objs_world)
{
  const int W = 800, H = 800;
  const double range = 60.0; // 视野：前后/左右各 60 m

  // 将世界系 (x,y) 投影到“自车对齐视角”：+Y=前进方向（航向）
  // 步骤：1) 平移到自车原点；2) 旋转 -ego_yaw；3) 以 xe→垂直轴、ye→水平轴 映射到像素
  auto worldToPixelEgoView = [&](double x, double y){
    // 相对自车 (dx, dy)
    const double dx = x - ego_x;
    const double dy = y - ego_y;

    // 旋转到自车坐标（前进=+Xe，左=+Ye）
    const double c = std::cos(ego_yaw), s = std::sin(ego_yaw);
    const double xe =  c*dx + s*dy;     // 前进（车体 x）
    const double ye = -s*dx + c*dy;     // 左右（车体 y，左为正）

    // 映射到图像像素：
    // 让“前进 xe 增大”显示得更靠上（更小的像素 v）：
    //   先线性缩放到 [0,H]，再 v = H - raw_v 以实现“上为大前进”
    double u = (-ye + range) / (2.0*range) * W;   // 左正(ye>0)映到图片更左（u 更小）
    double raw_v = (xe + range) / (2.0*range) * H;
    double v = H - raw_v;

    return cv::Point(static_cast<int>(std::round(u)), static_cast<int>(std::round(v)));
  };

  cv::Mat img(H, W, CV_8UC3, cv::Scalar(255,255,255));

  // 画以自车为原点的坐标轴：纵轴=前进（+Y），横轴=左右
  cv::line(img, worldToPixelEgoView(ego_x - range, ego_y), worldToPixelEgoView(ego_x + range, ego_y),
           cv::Scalar(220,220,220), 1); // 横轴：左右
  cv::line(img, worldToPixelEgoView(ego_x, ego_y - range), worldToPixelEgoView(ego_x, ego_y + range),
           cv::Scalar(220,220,220), 1); // 纵轴：前/后（注意这里是“航向对齐”的 Y 轴）

  // 自车：原点位置 + 航向箭头（朝上）
  cv::Point p_ego = worldToPixelEgoView(ego_x, ego_y);
  cv::circle(img, p_ego, 6, cv::Scalar(0,0,0), -1);
  const double head_len = 5.0; // 5m
  // 航向对齐后，“往前 head_len 米”的世界点仍用世界坐标表示再投影
  cv::Point p_ego_head = worldToPixelEgoView(ego_x + head_len*std::cos(ego_yaw),
                                             ego_y + head_len*std::sin(ego_yaw));
  cv::arrowedLine(img, p_ego, p_ego_head, cv::Scalar(0,0,0), 2, cv::LINE_AA, 0, 0.25);

  // 自车外接框（3m x 6m），直接用世界系四角点再投影（仍保证与航向对齐后显示“竖着”）
  const double halfL = 3.0/2.0, halfW = 6.0/2.0;
  std::vector<cv::Point> ego_poly = {
    worldToPixelEgoView(ego_x + std::cos(ego_yaw)*halfW - std::sin(ego_yaw)*halfL,
                        ego_y + std::sin(ego_yaw)*halfW + std::cos(ego_yaw)*halfL),
    worldToPixelEgoView(ego_x + std::cos(ego_yaw)*halfW + std::sin(ego_yaw)*halfL,
                        ego_y + std::sin(ego_yaw)*halfW - std::cos(ego_yaw)*halfL),
    worldToPixelEgoView(ego_x - std::cos(ego_yaw)*halfW + std::sin(ego_yaw)*halfL,
                        ego_y - std::sin(ego_yaw)*halfW - std::cos(ego_yaw)*halfL),
    worldToPixelEgoView(ego_x - std::cos(ego_yaw)*halfW - std::sin(ego_yaw)*halfL,
                        ego_y - std::sin(ego_yaw)*halfW + std::cos(ego_yaw)*halfL)
  };
  for (size_t i=0;i<4;i++)
    cv::line(img, ego_poly[i], ego_poly[(i+1)%4], cv::Scalar(0,0,0), 2);

  // 周车：多边形 + 中心点 + 航向箭头 + ID
  for (const auto& v : objs_world) {
    // 多边形
    const auto& pts = v.convex_hull.polygon.points;
    if (pts.size() >= 2) {
      for (size_t i=0; i<pts.size(); ++i) {
        const auto& a = pts[i];
        const auto& b = pts[(i+1)%pts.size()];
        cv::line(img,
                 worldToPixelEgoView(a.x, a.y),
                 worldToPixelEgoView(b.x, b.y),
                 cv::Scalar(60,60,255), 2, cv::LINE_AA);
      }
    } else if (pts.size()==1) {
      cv::circle(img, worldToPixelEgoView(pts[0].x, pts[0].y), 3, cv::Scalar(60,60,255), -1);
    }

    // 中心点
    cv::Point pc = worldToPixelEgoView(v.actor_pos.x, v.actor_pos.y);
    cv::circle(img, pc, 4, cv::Scalar(60,60,255), -1);

    // 航向箭头（世界航向 → 投影后自动变成“朝上/下”）
    cv::Point pc_head = worldToPixelEgoView(v.actor_pos.x + head_len*std::cos(v.actor_psi),
                                            v.actor_pos.y + head_len*std::sin(v.actor_psi));
    cv::arrowedLine(img, pc, pc_head, cv::Scalar(60,60,255), 2, cv::LINE_AA, 0, 0.25);

    // ID 与速度标注
    char label[64];
    std::snprintf(label, sizeof(label), "id:%u v=%.1f", v.id,
                  std::sqrt(v.actor_vel.x*v.actor_vel.x + v.actor_vel.y*v.actor_vel.y));
    cv::putText(img, label, pc + cv::Point(6,-6),
                cv::FONT_HERSHEY_SIMPLEX, 0.45, cv::Scalar(20,20,20), 1, cv::LINE_AA);
  }

  // 文字（ego pose）
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


// -------------------- 同步回调：loc + objects → VehicleInfoBatch --------------------
static void Callback(const ros_interface::Location::ConstPtr    &loc_msg,
                     const plusgo_msgs::Objects::ConstPtr       &objs_msg,
                     ros::Publisher                             &pub,
                     ros::Publisher                             &pub_rt)
{
  // 自车
  rl_planning::Point     ego_actor_pos;
  rl_planning::Vector3D  ego_actor_vel, ego_actor_acc;

  ego_actor_pos.x = loc_msg->utm_position.x;
  ego_actor_pos.y = loc_msg->utm_position.y;
  ego_actor_pos.z = loc_msg->utm_position.z;

  const double ego_actor_psi = loc_msg->heading;

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

  ego_vehicle_info.length = 6.0;  // 对应你代码里的 halfWidth * 2
  ego_vehicle_info.width  = 3.0;  // 对应你代码里的 halfLength * 2

  ego_vehicle_info.actor_pos   = ego_actor_pos;
  ego_vehicle_info.actor_vel   = ego_actor_vel;
  ego_vehicle_info.actor_acc   = ego_actor_acc;
  ego_vehicle_info.actor_speed = ego_actor_speed;
  ego_vehicle_info.actor_psi   = ego_actor_psi;

  // 自车外接框：3.0 x 6.0
  geometry_msgs::PolygonStamped polygon_stamped;
  polygon_stamped.header.stamp    = ros::Time::now();
  polygon_stamped.header.frame_id = "global_world";
  {
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
  }
  ego_vehicle_info.convex_hull = polygon_stamped;

  // 组装批次
  rl_planning::VehicleInfoBatch v_info_batch;
  std_msgs::Header header;
  header.frame_id = "geely";
  header.seq      = 1000;
  header.stamp    = ros::Time::now();
  v_info_batch.header = header;

  v_info_batch.vehicle_info_batch.push_back(ego_vehicle_info);

  std::vector<rl_planning::VehicleInfo> objs_world_cache;
  objs_world_cache.reserve(objs_msg->objects.size());

  // 其他目标
  for (const auto& obj : objs_msg->objects)
  {
    rl_planning::VehicleInfo vehicle_info;
    vehicle_info.id = (obj.track_id >= 0) ? static_cast<uint64_t>(obj.track_id) : 0u;

    // 1) 世界系位置
    double wx = obj.center.x, wy = obj.center.y;
    if (!obj.is_absolute_position) {
      egoToWorld(ego_actor_psi, ego_actor_pos.x, ego_actor_pos.y, obj.center.x, obj.center.y, wx, wy);
    }
    vehicle_info.actor_pos.x = wx;
    vehicle_info.actor_pos.y = wy;
    vehicle_info.actor_pos.z = ego_actor_pos.z;

    // 2) 凸包
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

    // ==========================================
    // 【新增】: 传递周车的长和宽
    // ==========================================
    double len = 4.5;//obj.size.x;
    double wid = 1.8;//obj.size.y;

    // 保护逻辑：如果感知发来的尺寸为0，给一个默认轿车尺寸
    // 防止 Lidar 仿真射线穿透没有体积的点
    // if (len < 0.1) len = 4.5; 
    // if (wid < 0.1) wid = 1.8;

    vehicle_info.length = len;
    vehicle_info.width  = wid;
    // ==========================================

    // 4) 航向角：相对 → 绝对
    double psi_world = obj.theta;
    if (!obj.is_absolute_position) {
      psi_world = wrapAngle(ego_actor_psi + obj.theta);
    }
    vehicle_info.actor_psi = psi_world;

    // 5) 速度/加速度：相对 → 世界旋转
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

    // 6) xy 速度标量
    vehicle_info.actor_speed = std::sqrt(actor_vel.x*actor_vel.x + actor_vel.y*actor_vel.y);

    // 7) 相对位置（世界差→车体系）
    const double dx = vehicle_info.actor_pos.x - ego_actor_pos.x;
    const double dy = vehicle_info.actor_pos.y - ego_actor_pos.y;
    vehicle_info.actor_rel_pos.x =  dx * std::cos(ego_actor_psi) + dy * std::sin(ego_actor_psi);
    vehicle_info.actor_rel_pos.y =  dy * std::cos(ego_actor_psi) - dx * std::sin(ego_actor_psi);

    v_info_batch.vehicle_info_batch.push_back(vehicle_info);
    objs_world_cache.push_back(vehicle_info);
  }

  ROS_INFO_THROTTLE(1.0, "GPS & Perception processing... objs=%zu", objs_msg->objects.size());

  // 发布 VehicleInfoBatch
  pub.publish(v_info_batch);
  pub_rt.publish(v_info_batch);

  // 每 5 秒存一张世界系 PNG
  const ros::Time now = ros::Time::now();
  if (g_last_save.isZero() || (now - g_last_save).toSec() >= 5.0) {
    // saveSnapshotPNG(ego_actor_pos.x, ego_actor_pos.y, ego_actor_psi, objs_world_cache);
    g_last_save = now;
  }
}

// -------------------- 原始订阅 → 修正时间戳 → 喂同步器 --------------------
static void objsRawCb(const plusgo_msgs::Objects::ConstPtr& msg)
{
  if (!msg->header.stamp.isZero()) g_last_objs_stamp = msg->header.stamp;
  g_objs_fix_src.send(msg);  // 原样转发给同步器
}

static void publishFixedLocAndFeedSync(const ros_interface::LocationPtr& m)
{
  if (g_loc_fixed_pub) g_loc_fixed_pub.publish(m); // 对外发布修正后的定位
  g_loc_fix_src.send(m);                            // 同时喂给同步器
}

static void locRawCb(const ros_interface::Location::ConstPtr& msg)
{
  ros_interface::LocationPtr m(new ros_interface::Location(*msg));

  // 先确定一个基准时间
  ros::Time base_stamp;
  if (!m->header.stamp.isZero()) {
    base_stamp = m->header.stamp;
  } else if (!g_last_objs_stamp.isZero()) {
    base_stamp = g_last_objs_stamp;
  } else {
    base_stamp = ros::Time::now(); // 注意：use_sim_time=false 时有效
    if (base_stamp.isZero()) {
      ROS_WARN_THROTTLE(2.0, "[locRawCb] stamp=0 and no objects/now reference; drop this frame.");
      return;
    }
  }

  // —— 单调递增保障 —— //
  ros::Time new_stamp = base_stamp;
  if (!g_last_loc_stamp.isZero() && (new_stamp <= g_last_loc_stamp)) {
    // 在纳秒级别微调，确保严格递增
    uint32_t bump = (++g_loc_ns_bump) % 1000; // 最多 +999ns
    new_stamp = ros::Time(g_last_loc_stamp.sec, g_last_loc_stamp.nsec + 1 + bump);
  } else {
    g_loc_ns_bump = 0;
  }
  m->header.stamp = new_stamp;
  g_last_loc_stamp = new_stamp;

  publishFixedLocAndFeedSync(m);
}

// -------------------- main --------------------
int main(int argc, char* argv[]) {
  ros::init(argc, argv, "object_and_loc_to_vehicle_info_node");
  ros::NodeHandle nh;

  // 下游发布
  ros::Publisher pub = nh.advertise<rl_planning::VehicleInfoBatch>("/vehicle_info_batch", 2);
  ros::Publisher pub_rt = nh.advertise<rl_planning::VehicleInfoBatch>("/rt_Obj_info_batch", 2);


  // 发布修正后的定位，便于你直接 echo 验证
  g_loc_fixed_pub = nh.advertise<ros_interface::Location>(
      "/localization/global_fusion/Location/tju_fixed", 2);

  // 原始订阅
  ros::Subscriber loc_raw  = nh.subscribe("/localization/global_fusion/Location/tju", 2, locRawCb);
  ros::Subscriber objs_raw = nh.subscribe("/merged_objects",                          2, objsRawCb);

  // 同步（ApproximateTime）：接入修正后的 Relay 源
  typedef message_filters::sync_policies::ApproximateTime<
      ros_interface::Location,
      plusgo_msgs::Objects> sync_policy;

  message_filters::Synchronizer<sync_policy> sync(sync_policy(100), g_loc_fix_src, g_objs_fix_src);
  sync.registerCallback(boost::bind(Callback, _1, _2, boost::ref(pub), boost::ref(pub_rt)));

  ROS_INFO("[main] Node started. Waiting for messages...");
  ros::spin();
  return 0;
}
