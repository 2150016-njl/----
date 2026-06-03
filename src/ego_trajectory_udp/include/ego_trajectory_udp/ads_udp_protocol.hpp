#ifndef EGO_TRAJECTORY_UDP_ADS_UDP_PROTOCOL_HPP
#define EGO_TRAJECTORY_UDP_ADS_UDP_PROTOCOL_HPP

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iomanip>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

namespace ego_trajectory_udp
{
namespace ads_udp
{

// ==================== ADS UDP 协议公共解码头文件 ====================
//
// 这个头文件只负责一件事：
//   把 UDP 应用层 payload 里的二进制字节，按照 ADS_UDP_Protocol_V1.0.xlsx
//   换算成可读的实际物理量，例如经纬度、速度、航向角、电压、状态字等。
//
// 非常重要的三个概念：
//
// 1. 抓包帧长度 218 字节，不等于 UDP 业务数据长度。
//    Wireshark 抓到的一帧里包含：
//      14 字节 Ethernet 头
//      20 字节 IPv4 头
//       8 字节 UDP 头
//     176 字节 ADS UDP 应用层 payload
//    所以总长度是：
//      14 + 20 + 8 + 176 = 218
//
// 2. Excel 表里的 offset 是“抓包帧 offset”。
//    例如 Heading 在 Excel 中 offset=134。
//    但代码拿到的是 UDP payload，不含前 42 字节网络头。
//    所以代码中的 payload offset 应为：
//      134 - 42 = 92
//
// 3. 字节序固定用 Intel/little-endian。
//    多字节字段低字节在前，高字节在后。
//    例如两个字节 10 27：
//      原始值 = 0x2710 = 10000
//    如果 Factor=0.01：
//      实际值 = 10000 * 0.01 = 100.00
//
// 通用换算公式：
//   实际值 = 原始值 * Factor + Offset
// 本协议里的 Offset 基本为 0，因此常用形式是：
//   实际值 = 原始值 * Factor
// ======================================================================

constexpr std::size_t kPayloadSize = 176;
constexpr std::size_t kCaptureHeaderSize = 42;
constexpr std::size_t kCapturedFrameSize = kCaptureHeaderSize + kPayloadSize;

// 解码后的结构体。
//
// 这里每个成员都已经是“实际物理值”，不是 UDP 里的原始整数。
// 例如：
//   heading_deg 已经乘过 0.01，单位是 deg。
//   speed_kmh 已经乘过 0.01，单位是 km/h。
//   gps_time_s 已经乘过 1e-3，单位是 s。
//
// 字段命名基本遵循协议表，只是补了单位后缀，方便看代码时知道它的物理意义。
struct DecodedPacket
{
  double latitude_deg = 0.0;
  double longitude_deg = 0.0;
  uint32_t ads_id = 0;
  int32_t gps_time_raw_ms = 0;
  double gps_time_s = 0.0;
  int32_t gps_week = 0;
  uint32_t fs_message1 = 0;
  uint32_t fs_message2 = 0;
  uint32_t bat_state1 = 0;
  uint32_t bat_state2 = 0;
  uint32_t bat_state3 = 0;
  uint32_t bat_state4 = 0;
  uint32_t mpc_flags = 0;
  float posi_rms_m = 0.0F;
  float lat_dev_m = 0.0F;
  float dist_x_m = 0.0F;
  float dist_y_m = 0.0F;
  float x_rel_m = 0.0F;
  float y_rel_m = 0.0F;
  float x_rel_vut_m = 0.0F;
  float y_rel_vut_m = 0.0F;
  float ttc_s = 0.0F;
  double heading_deg = 0.0;
  double speed_kmh = 0.0;
  double speed_e_kmh = 0.0;
  double speed_n_kmh = 0.0;
  double ax_mps2 = 0.0;
  double ay_mps2 = 0.0;
  double dyaw_dps = 0.0;
  double bvolt1_v = 0.0;
  double bvolt2_v = 0.0;
  double bvolt3_v = 0.0;
  double bvolt4_v = 0.0;
  double btemp1_c = 0.0;
  double btemp2_c = 0.0;
  double btemp3_c = 0.0;
  double btemp4_c = 0.0;
  double bcurr1_a = 0.0;
  double bcurr2_a = 0.0;
  double bcurr3_a = 0.0;
  double bcurr4_a = 0.0;
  double mtemp1_c = 0.0;
  double mtemp2_c = 0.0;
  double mtemp3_c = 0.0;
  double mtemp4_c = 0.0;
  double cpu_temp_c = 0.0;
  double steering_angle_deg = 0.0;
  int16_t steering_pwm = 0;
  int16_t mov_pwm1 = 0;
  int16_t mov_pwm2 = 0;
  int16_t mov_pwm3 = 0;
  int16_t mov_pwm4 = 0;
  int16_t brake_pwm = 0;
  uint16_t sr_sw1 = 0;
  uint16_t sr_sw2 = 0;
  uint16_t sr_sw3 = 0;
  uint16_t sr_sw4 = 0;
  int16_t reserved = 0;
  uint8_t sender = 0;
  uint8_t version = 0;
  uint8_t message_id = 0;
  uint8_t counter = 0;
  uint8_t gnss_status = 0;
  uint8_t ins_status = 0;
  uint8_t soc1 = 0;
  uint8_t soc2 = 0;
  uint8_t soc3 = 0;
  uint8_t soc4 = 0;
  uint8_t operation_mode = 0;
  uint8_t test_state = 0;
};

inline bool hostIsLittleEndian()
{
  // 判断当前 CPU 自身是不是小端。
  //
  // 大多数 x86/Ubuntu 机器都是小端，但这里仍做判断，是为了让代码在大端 CPU
  // 上也能正确把协议中的小端 float/double 转成主机可用的浮点数。
  const uint16_t value = 1;
  return *reinterpret_cast<const uint8_t*>(&value) == 1;
}

inline void requireSize(std::size_t size, std::size_t offset, std::size_t width)
{
  // 所有读字段函数先检查边界，防止 UDP 包长度不够时越界读内存。
  //
  // 参数含义：
  //   size   : 当前可用数据长度
  //   offset : 要读取字段的起始偏移
  //   width  : 字段占几个字节
  if (offset + width > size)
  {
    throw std::out_of_range("ADS UDP payload is shorter than the requested field");
  }
}

inline uint8_t readU8(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 读取 1 字节无符号整数。
  // 单字节字段没有大小端问题，例如 Sender、Version、MessageID、Counter。
  requireSize(size, offset, 1);
  return data[offset];
}

inline uint16_t readU16LE(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 按 Intel 小端读取 2 字节无符号整数：低字节在前，高字节在后。
  //
  // 举例：
  //   data[offset]     = 0x10
  //   data[offset + 1] = 0x27
  //   raw = 0x2710 = 10000
  //
  // 注意这里读出来的只是 raw 原始值，还没有乘 Factor。
  requireSize(size, offset, 2);
  return static_cast<uint16_t>(static_cast<uint16_t>(data[offset]) |
                               static_cast<uint16_t>(static_cast<uint16_t>(data[offset + 1]) << 8));
}

inline int16_t readI16LE(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 读取 2 字节有符号整数。
  //
  // 有符号字段可能为负，例如加速度、电流、转角等。
  // 做法是先按小端读出 16 位二进制，再解释为 int16_t。
  return static_cast<int16_t>(readU16LE(data, size, offset));
}

inline uint32_t readU32LE(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 按 Intel 小端读取 4 字节无符号整数。
  //
  // 举例：
  //   字节为 6E 9A 56 10
  //   小端解释为 0x10569A6E
  //   十进制为 274045550
  requireSize(size, offset, 4);
  return static_cast<uint32_t>(data[offset]) |
         (static_cast<uint32_t>(data[offset + 1]) << 8) |
         (static_cast<uint32_t>(data[offset + 2]) << 16) |
         (static_cast<uint32_t>(data[offset + 3]) << 24);
}

inline int32_t readI32LE(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 读取 4 字节有符号整数，例如 GPS_Time、GPS_Week。
  return static_cast<int32_t>(readU32LE(data, size, offset));
}

inline float readF32LE(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 读取 4 字节 IEEE754 单精度浮点数。
  //
  // 协议字节序固定为小端。如果本机也是小端，直接 memcpy 即可；
  // 如果本机是大端，需要先把 4 个字节反过来再 memcpy。
  //
  // 协议中的 Posi_RMS、Lat_Dev、Dist_X、Dist_Y、X_rel 等都是 float32。
  requireSize(size, offset, 4);
  uint8_t bytes[4] = {data[offset], data[offset + 1], data[offset + 2], data[offset + 3]};
  if (!hostIsLittleEndian())
  {
    std::reverse(bytes, bytes + 4);
  }
  float value = 0.0F;
  std::memcpy(&value, bytes, sizeof(value));
  return value;
}

inline double readF64LE(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 读取 8 字节 IEEE754 双精度浮点数。
  //
  // Latitude 和 Longitude 是 double float，Factor=1，
  // 所以按 double 解出来的数值就是实际经纬度。
  requireSize(size, offset, 8);
  uint8_t bytes[8] = {data[offset],
                      data[offset + 1],
                      data[offset + 2],
                      data[offset + 3],
                      data[offset + 4],
                      data[offset + 5],
                      data[offset + 6],
                      data[offset + 7]};
  if (!hostIsLittleEndian())
  {
    std::reverse(bytes, bytes + 8);
  }
  double value = 0.0;
  std::memcpy(&value, bytes, sizeof(value));
  return value;
}

inline DecodedPacket decodePayload176(const uint8_t* data, std::size_t size)
{
  // 对外的核心解码函数。
  //
  // 输入：
  //   data/size 可以是“刚好 176 字节的 UDP payload”，也可以是“前面带了额外头部的
  //   一段数据”。为了兼容这两种情况，本函数总是取最后 176 字节作为 ADS payload。
  //
  // 输出：
  //   DecodedPacket，里面已经完成了大小端解释和 Factor 缩放。
  if (size < kPayloadSize)
  {
    throw std::runtime_error("ADS UDP payload must contain at least 176 bytes");
  }

  // Excel 表里的 offset 是抓包帧偏移，前 42 字节是 Ethernet/IP/UDP 头。
  // 在线 UDP socket 收到时，这 42 字节已经被操作系统剥掉；
  // 离线 pcapng 解码时，ads_udp_pcap_decode.cpp 也会先剥掉这些头。
  // 因此这里统一使用“最后 176 字节”作为业务 payload 起点。
  const uint8_t* payload = data + (size - kPayloadSize);
  const std::size_t n = kPayloadSize;

  DecodedPacket packet;
  // 下面每一行对应 Excel 表中的一个字段。
  // 代码内 offset = Excel offset - 42。
  // 换算规则：实际值 = 原始值 * Factor + Offset。本协议 Offset 基本为 0。
  //
  // 例如：
  //   GPS_Time: Excel offset=62，代码 offset=20，int32，Factor=1e-3。
  //   Heading : Excel offset=134，代码 offset=92，uint16，Factor=0.01。
  packet.latitude_deg = readF64LE(payload, n, 0);
  packet.longitude_deg = readF64LE(payload, n, 8);
  packet.ads_id = readU32LE(payload, n, 16);
  packet.gps_time_raw_ms = readI32LE(payload, n, 20);
  packet.gps_time_s = static_cast<double>(packet.gps_time_raw_ms) * 1e-3;
  packet.gps_week = readI32LE(payload, n, 24);
  packet.fs_message1 = readU32LE(payload, n, 28);
  packet.fs_message2 = readU32LE(payload, n, 32);
  packet.bat_state1 = readU32LE(payload, n, 36);
  packet.bat_state2 = readU32LE(payload, n, 40);
  packet.bat_state3 = readU32LE(payload, n, 44);
  packet.bat_state4 = readU32LE(payload, n, 48);
  packet.mpc_flags = readU32LE(payload, n, 52);
  packet.posi_rms_m = readF32LE(payload, n, 56);
  packet.lat_dev_m = readF32LE(payload, n, 60);
  packet.dist_x_m = readF32LE(payload, n, 64);
  packet.dist_y_m = readF32LE(payload, n, 68);
  packet.x_rel_m = readF32LE(payload, n, 72);
  packet.y_rel_m = readF32LE(payload, n, 76);
  packet.x_rel_vut_m = readF32LE(payload, n, 80);
  packet.y_rel_vut_m = readF32LE(payload, n, 84);
  packet.ttc_s = readF32LE(payload, n, 88);
  // Heading:
  //   原始类型 uint16，占 2 字节。
  //   Factor=0.01，单位 deg。
  //   协议角度定义：正北为 0 度，顺时针增大，范围 0..360 度。
  //   例如 raw=10000，则 heading=10000*0.01=100.00 deg。
  packet.heading_deg = static_cast<double>(readU16LE(payload, n, 92)) * 0.01;
  packet.speed_kmh = static_cast<double>(readI16LE(payload, n, 94)) * 0.01;
  packet.speed_e_kmh = static_cast<double>(readI16LE(payload, n, 96)) * 0.01;
  packet.speed_n_kmh = static_cast<double>(readI16LE(payload, n, 98)) * 0.01;
  packet.ax_mps2 = static_cast<double>(readI16LE(payload, n, 100)) * 0.01;
  packet.ay_mps2 = static_cast<double>(readI16LE(payload, n, 102)) * 0.01;
  packet.dyaw_dps = static_cast<double>(readI16LE(payload, n, 104)) * 0.01;
  packet.bvolt1_v = static_cast<double>(readU16LE(payload, n, 106)) * 0.1;
  packet.bvolt2_v = static_cast<double>(readU16LE(payload, n, 108)) * 0.1;
  packet.bvolt3_v = static_cast<double>(readU16LE(payload, n, 110)) * 0.1;
  packet.bvolt4_v = static_cast<double>(readU16LE(payload, n, 112)) * 0.1;
  packet.btemp1_c = static_cast<double>(readI16LE(payload, n, 114)) * 0.1;
  packet.btemp2_c = static_cast<double>(readI16LE(payload, n, 116)) * 0.1;
  packet.btemp3_c = static_cast<double>(readI16LE(payload, n, 118)) * 0.1;
  packet.btemp4_c = static_cast<double>(readI16LE(payload, n, 120)) * 0.1;
  packet.bcurr1_a = static_cast<double>(readI16LE(payload, n, 122)) * 0.1;
  packet.bcurr2_a = static_cast<double>(readI16LE(payload, n, 124)) * 0.1;
  packet.bcurr3_a = static_cast<double>(readI16LE(payload, n, 126)) * 0.1;
  packet.bcurr4_a = static_cast<double>(readI16LE(payload, n, 128)) * 0.1;
  packet.mtemp1_c = static_cast<double>(readI16LE(payload, n, 130)) * 0.1;
  packet.mtemp2_c = static_cast<double>(readI16LE(payload, n, 132)) * 0.1;
  packet.mtemp3_c = static_cast<double>(readI16LE(payload, n, 134)) * 0.1;
  packet.mtemp4_c = static_cast<double>(readI16LE(payload, n, 136)) * 0.1;
  packet.cpu_temp_c = static_cast<double>(readI16LE(payload, n, 138)) * 0.1;
  packet.steering_angle_deg = static_cast<double>(readI16LE(payload, n, 140)) * 0.1;
  packet.steering_pwm = readI16LE(payload, n, 142);
  packet.mov_pwm1 = readI16LE(payload, n, 144);
  packet.mov_pwm2 = readI16LE(payload, n, 146);
  packet.mov_pwm3 = readI16LE(payload, n, 148);
  packet.mov_pwm4 = readI16LE(payload, n, 150);
  packet.brake_pwm = readI16LE(payload, n, 152);
  packet.sr_sw1 = readU16LE(payload, n, 154);
  packet.sr_sw2 = readU16LE(payload, n, 156);
  packet.sr_sw3 = readU16LE(payload, n, 158);
  packet.sr_sw4 = readU16LE(payload, n, 160);
  packet.reserved = readI16LE(payload, n, 162);
  packet.sender = readU8(payload, n, 164);
  packet.version = readU8(payload, n, 165);
  packet.message_id = readU8(payload, n, 166);
  packet.counter = readU8(payload, n, 167);
  packet.gnss_status = readU8(payload, n, 168);
  packet.ins_status = readU8(payload, n, 169);
  packet.soc1 = readU8(payload, n, 170);
  packet.soc2 = readU8(payload, n, 171);
  packet.soc3 = readU8(payload, n, 172);
  packet.soc4 = readU8(payload, n, 173);
  packet.operation_mode = readU8(payload, n, 174);
  packet.test_state = readU8(payload, n, 175);
  return packet;
}

inline DecodedPacket decodePayload176(const std::vector<uint8_t>& data)
{
  return decodePayload176(data.data(), data.size());
}

inline std::string toJson(const DecodedPacket& p)
{
  std::ostringstream oss;
  oss << std::setprecision(15);
  oss << "{"
      << "\"latitude_deg\":" << p.latitude_deg << ","
      << "\"longitude_deg\":" << p.longitude_deg << ","
      << "\"ads_id\":" << p.ads_id << ","
      << "\"gps_time_raw_ms\":" << p.gps_time_raw_ms << ","
      << "\"gps_time_s\":" << p.gps_time_s << ","
      << "\"gps_week\":" << p.gps_week << ","
      << "\"fs_message1\":" << p.fs_message1 << ","
      << "\"fs_message2\":" << p.fs_message2 << ","
      << "\"bat_state1\":" << p.bat_state1 << ","
      << "\"bat_state2\":" << p.bat_state2 << ","
      << "\"bat_state3\":" << p.bat_state3 << ","
      << "\"bat_state4\":" << p.bat_state4 << ","
      << "\"mpc_flags\":" << p.mpc_flags << ","
      << "\"posi_rms_m\":" << p.posi_rms_m << ","
      << "\"lat_dev_m\":" << p.lat_dev_m << ","
      << "\"dist_x_m\":" << p.dist_x_m << ","
      << "\"dist_y_m\":" << p.dist_y_m << ","
      << "\"x_rel_m\":" << p.x_rel_m << ","
      << "\"y_rel_m\":" << p.y_rel_m << ","
      << "\"x_rel_vut_m\":" << p.x_rel_vut_m << ","
      << "\"y_rel_vut_m\":" << p.y_rel_vut_m << ","
      << "\"ttc_s\":" << p.ttc_s << ","
      << "\"heading_deg\":" << p.heading_deg << ","
      << "\"speed_kmh\":" << p.speed_kmh << ","
      << "\"speed_e_kmh\":" << p.speed_e_kmh << ","
      << "\"speed_n_kmh\":" << p.speed_n_kmh << ","
      << "\"ax_mps2\":" << p.ax_mps2 << ","
      << "\"ay_mps2\":" << p.ay_mps2 << ","
      << "\"dyaw_dps\":" << p.dyaw_dps << ","
      << "\"bvolt1_v\":" << p.bvolt1_v << ","
      << "\"bvolt2_v\":" << p.bvolt2_v << ","
      << "\"bvolt3_v\":" << p.bvolt3_v << ","
      << "\"bvolt4_v\":" << p.bvolt4_v << ","
      << "\"btemp1_c\":" << p.btemp1_c << ","
      << "\"btemp2_c\":" << p.btemp2_c << ","
      << "\"btemp3_c\":" << p.btemp3_c << ","
      << "\"btemp4_c\":" << p.btemp4_c << ","
      << "\"bcurr1_a\":" << p.bcurr1_a << ","
      << "\"bcurr2_a\":" << p.bcurr2_a << ","
      << "\"bcurr3_a\":" << p.bcurr3_a << ","
      << "\"bcurr4_a\":" << p.bcurr4_a << ","
      << "\"mtemp1_c\":" << p.mtemp1_c << ","
      << "\"mtemp2_c\":" << p.mtemp2_c << ","
      << "\"mtemp3_c\":" << p.mtemp3_c << ","
      << "\"mtemp4_c\":" << p.mtemp4_c << ","
      << "\"cpu_temp_c\":" << p.cpu_temp_c << ","
      << "\"steering_angle_deg\":" << p.steering_angle_deg << ","
      << "\"steering_pwm\":" << p.steering_pwm << ","
      << "\"mov_pwm1\":" << p.mov_pwm1 << ","
      << "\"mov_pwm2\":" << p.mov_pwm2 << ","
      << "\"mov_pwm3\":" << p.mov_pwm3 << ","
      << "\"mov_pwm4\":" << p.mov_pwm4 << ","
      << "\"brake_pwm\":" << p.brake_pwm << ","
      << "\"sr_sw1\":" << p.sr_sw1 << ","
      << "\"sr_sw2\":" << p.sr_sw2 << ","
      << "\"sr_sw3\":" << p.sr_sw3 << ","
      << "\"sr_sw4\":" << p.sr_sw4 << ","
      << "\"reserved\":" << p.reserved << ","
      << "\"sender\":" << static_cast<unsigned int>(p.sender) << ","
      << "\"version\":" << static_cast<unsigned int>(p.version) << ","
      << "\"message_id\":" << static_cast<unsigned int>(p.message_id) << ","
      << "\"counter\":" << static_cast<unsigned int>(p.counter) << ","
      << "\"gnss_status\":" << static_cast<unsigned int>(p.gnss_status) << ","
      << "\"ins_status\":" << static_cast<unsigned int>(p.ins_status) << ","
      << "\"soc1\":" << static_cast<unsigned int>(p.soc1) << ","
      << "\"soc2\":" << static_cast<unsigned int>(p.soc2) << ","
      << "\"soc3\":" << static_cast<unsigned int>(p.soc3) << ","
      << "\"soc4\":" << static_cast<unsigned int>(p.soc4) << ","
      << "\"operation_mode\":" << static_cast<unsigned int>(p.operation_mode) << ","
      << "\"test_state\":" << static_cast<unsigned int>(p.test_state) << "}";
  return oss.str();
}

}  // 命名空间 ads_udp
}  // 命名空间 ego_trajectory_udp

#endif  // 头文件保护：EGO_TRAJECTORY_UDP_ADS_UDP_PROTOCOL_HPP
