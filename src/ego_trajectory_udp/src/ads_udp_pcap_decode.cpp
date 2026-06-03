#include <algorithm>
#include <cstdint>
#include <cstdlib>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

#include "ego_trajectory_udp/ads_udp_protocol.hpp"

namespace
{
// ==================== 离线 pcapng 解码工具说明 ====================
//
// 这个程序用于离线分析 Wireshark 抓到的 udp_data.pcapng。
//
// 它和在线 UDP 节点的区别：
//   在线节点 ads_udp_decoder_node.cpp 收到的已经是 UDP payload；
//   本程序读取的是 pcapng 文件，里面保存的是“完整抓包帧”。
//
// 因此离线解码要多做三步：
//   1. 解析 pcapng 文件格式，找到每一帧抓包数据。
//   2. 根据链路层类型，跳过 Ethernet 或 Linux cooked 等链路层头。
//   3. 继续跳过 IPv4 头和 UDP 头，只留下 UDP 应用层 payload。
//
// 对当前协议来说：
//   Wireshark 一帧长度通常是 218 字节；
//   其中前 42 字节是 Ethernet/IP/UDP 头；
//   后 176 字节才是 ADS UDP 协议数据。
//
// 最后交给 ads_udp_protocol.hpp 中的 decodePayload176() 做字段换算。
// ==================================================================

// pcapng 是一种抓包文件容器。下面这些块 ID 用来找到接口信息和真实抓到的报文。
// 这样离线解码时不依赖 tshark、scapy 或 libpcap。
constexpr uint32_t kSectionHeaderBlock = 0x0A0D0D0A;
constexpr uint32_t kInterfaceDescriptionBlock = 0x00000001;
constexpr uint32_t kEnhancedPacketBlock = 0x00000006;
constexpr uint32_t kByteOrderMagic = 0x1A2B3C4D;
constexpr uint16_t kEtherTypeIpv4 = 0x0800;
constexpr uint16_t kEtherTypeVlan = 0x8100;
constexpr uint16_t kEtherTypeQinQ = 0x88A8;
constexpr uint16_t kEtherTypeProviderBridge = 0x9100;
constexpr uint32_t kLinkTypeEthernet = 1;
constexpr uint32_t kLinkTypeLinuxSll = 113;
constexpr uint32_t kLinkTypeLinuxSll2 = 276;

struct Options
{
  // 命令行参数：
  //   pcapng_path  : 要解码的 pcapng 文件路径。
  //   csv          : 是否输出完整 CSV。
  //   limit        : 最多打印多少行，0 表示不限。
  //   port_filter  : 只保留源端口或目的端口匹配的 UDP 包。
  std::string pcapng_path;
  bool csv = false;
  long limit = -1;
  int port_filter = -1;
};

struct UdpDatagram
{
  // 从抓包帧中剥离出来的 UDP 信息。
  // payload 是 UDP 应用层数据，不包含 Ethernet/IP/UDP 头。
  std::string src_ip;
  std::string dst_ip;
  uint16_t src_port = 0;
  uint16_t dst_port = 0;
  std::vector<uint8_t> payload;
};

uint16_t readU16(const std::vector<uint8_t>& data, std::size_t offset, bool little)
{
  // 这里读取的是 pcapng 文件自己的元数据。
  // pcapng 的块可能是小端或大端；ADS 业务字段另外固定按 Intel 小端解码。
  if (offset + 2 > data.size())
  {
    throw std::out_of_range("readU16 outside buffer");
  }
  if (little)
  {
    return static_cast<uint16_t>(static_cast<uint16_t>(data[offset]) |
                                 static_cast<uint16_t>(static_cast<uint16_t>(data[offset + 1]) << 8));
  }
  return static_cast<uint16_t>(static_cast<uint16_t>(data[offset + 1]) |
                               static_cast<uint16_t>(static_cast<uint16_t>(data[offset]) << 8));
}

uint32_t readU32(const std::vector<uint8_t>& data, std::size_t offset, bool little)
{
  // 读取 pcapng 块里的 32 位字段，例如块类型、块长度、抓包长度等。
  if (offset + 4 > data.size())
  {
    throw std::out_of_range("readU32 outside buffer");
  }
  if (little)
  {
    return static_cast<uint32_t>(data[offset]) |
           (static_cast<uint32_t>(data[offset + 1]) << 8) |
           (static_cast<uint32_t>(data[offset + 2]) << 16) |
           (static_cast<uint32_t>(data[offset + 3]) << 24);
  }
  return static_cast<uint32_t>(data[offset + 3]) |
         (static_cast<uint32_t>(data[offset + 2]) << 8) |
         (static_cast<uint32_t>(data[offset + 1]) << 16) |
         (static_cast<uint32_t>(data[offset]) << 24);
}

uint16_t readBe16(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // 网络协议头里的字段通常是大端，也叫 network byte order。
  // 这里用于读取 Ethernet type、IP total length、UDP length、端口号等字段。
  if (offset + 2 > size)
  {
    throw std::out_of_range("readBe16 outside frame");
  }
  return static_cast<uint16_t>((static_cast<uint16_t>(data[offset]) << 8) |
                               static_cast<uint16_t>(data[offset + 1]));
}

std::string ipv4ToString(const uint8_t* data, std::size_t size, std::size_t offset)
{
  // IPv4 地址在报文里是 4 个字节，例如 C0 A8 58 64。
  // 这里把它转成常见的点分十进制字符串：192.168.88.100。
  if (offset + 4 > size)
  {
    throw std::out_of_range("IPv4 address outside frame");
  }
  std::ostringstream oss;
  oss << static_cast<unsigned int>(data[offset]) << "."
      << static_cast<unsigned int>(data[offset + 1]) << "."
      << static_cast<unsigned int>(data[offset + 2]) << "."
      << static_cast<unsigned int>(data[offset + 3]);
  return oss.str();
}

std::vector<uint8_t> readFile(const std::string& path)
{
  // 一次性把 pcapng 文件读到内存。
  // 当前 udp_data.pcapng 不大，这种方式简单直接；后续如果文件很大，可改成流式读取。
  std::ifstream file(path.c_str(), std::ios::binary);
  if (!file)
  {
    throw std::runtime_error("failed to open pcapng file: " + path);
  }
  file.seekg(0, std::ios::end);
  const std::streamoff size = file.tellg();
  if (size < 0)
  {
    throw std::runtime_error("failed to get pcapng file size: " + path);
  }
  file.seekg(0, std::ios::beg);
  std::vector<uint8_t> data(static_cast<std::size_t>(size));
  if (!data.empty())
  {
    file.read(reinterpret_cast<char*>(&data[0]), static_cast<std::streamsize>(data.size()));
  }
  return data;
}

bool ipv4OffsetFromLinkType(const uint8_t* frame, std::size_t frame_size, uint32_t link_type, std::size_t& ip_offset)
{
  // Wireshark 可能保存不同链路层头，例如 Ethernet、Linux cooked。
  // 这里只负责定位 IPv4 头；找到 IPv4 后，后面的 UDP 解析方式都一样。
  if (link_type == kLinkTypeEthernet)
  {
    // Ethernet 帧格式：
    //   0..5   目的 MAC
    //   6..11  源 MAC
    //   12..13 EtherType
    //   14..   上层协议数据，IPv4 时这里就是 IP 头起点
    if (frame_size < 14)
    {
      return false;
    }

    uint16_t ether_type = readBe16(frame, frame_size, 12);
    std::size_t payload_offset = 14;
    while (ether_type == kEtherTypeVlan || ether_type == kEtherTypeQinQ || ether_type == kEtherTypeProviderBridge)
    {
      // 如果中间有 VLAN tag，需要继续向后跳 4 字节，再看真正的 EtherType。
      if (payload_offset + 4 > frame_size)
      {
        return false;
      }
      ether_type = readBe16(frame, frame_size, payload_offset + 2);
      payload_offset += 4;
    }

    if (ether_type != kEtherTypeIpv4)
    {
      return false;
    }
    ip_offset = payload_offset;
    return true;
  }

  if (link_type == kLinkTypeLinuxSll)
  {
    // Linux cooked capture v1，常见于 Linux 上抓 any 接口。
    // 它的链路层头长度是 16 字节，IPv4 类型在 offset 14。
    if (frame_size < 16 || readBe16(frame, frame_size, 14) != kEtherTypeIpv4)
    {
      return false;
    }
    ip_offset = 16;
    return true;
  }

  if (link_type == kLinkTypeLinuxSll2)
  {
    // Linux cooked capture v2，链路层头长度是 20 字节。
    if (frame_size < 20 || readBe16(frame, frame_size, 0) != kEtherTypeIpv4)
    {
      return false;
    }
    ip_offset = 20;
    return true;
  }

  return false;
}

bool extractUdpDatagram(const uint8_t* frame, std::size_t frame_size, uint32_t link_type, UdpDatagram& datagram)
{
  // 从一帧抓包数据里剥掉链路层/IP/UDP 头，只返回 UDP 应用层 payload。
  // 对当前 udp_data.pcapng，剥出来的 payload 长度正好是 176 字节。
  std::size_t ip_offset = 0;
  if (!ipv4OffsetFromLinkType(frame, frame_size, link_type, ip_offset))
  {
    return false;
  }

  if (ip_offset + 20 > frame_size || (frame[ip_offset] >> 4) != 4)
  {
    return false;
  }

  const std::size_t ihl = static_cast<std::size_t>(frame[ip_offset] & 0x0F) * 4;
  // IPv4 头第一个字节的低 4 位是 IHL，单位是 4 字节。
  // 常见 0x45 表示 IPv4 且 IP 头长度 5*4=20 字节。
  if (ihl < 20 || ip_offset + ihl > frame_size || frame[ip_offset + 9] != 17)
  {
    return false;
  }

  const uint16_t ip_total_len = readBe16(frame, frame_size, ip_offset + 2);
  if (ip_total_len < ihl + 8 || ip_offset + ip_total_len > frame_size)
  {
    return false;
  }

  const std::size_t udp_offset = ip_offset + ihl;
  const uint16_t udp_len = readBe16(frame, frame_size, udp_offset + 4);
  // UDP length 包含 UDP 头 8 字节和 UDP payload。
  // 所以 payload 范围是 [udp_offset + 8, udp_offset + udp_len)。
  if (udp_len < 8 || udp_offset + udp_len > frame_size)
  {
    return false;
  }

  datagram.src_ip = ipv4ToString(frame, frame_size, ip_offset + 12);
  datagram.dst_ip = ipv4ToString(frame, frame_size, ip_offset + 16);
  datagram.src_port = readBe16(frame, frame_size, udp_offset);
  datagram.dst_port = readBe16(frame, frame_size, udp_offset + 2);
  datagram.payload.assign(frame + udp_offset + 8, frame + udp_offset + udp_len);
  return true;
}

void printUsage(const char* argv0)
{
  std::cerr << "Usage: " << argv0 << " <udp_data.pcapng> [--csv] [--limit N] [--port PORT]\n"
            << "  --csv       print full decoded CSV rows\n"
            << "  --limit N   max decoded rows to print; 0 means unlimited\n"
            << "  --port PORT keep datagrams whose source or destination port matches PORT\n";
}

long parseLong(const std::string& text, const std::string& name)
{
  char* end = nullptr;
  const long value = std::strtol(text.c_str(), &end, 10);
  if (end == text.c_str() || *end != '\0')
  {
    throw std::runtime_error("invalid " + name + ": " + text);
  }
  return value;
}

Options parseArgs(int argc, char** argv)
{
  // 支持的命令：
  //   ads_udp_pcap_decode udp_data.pcapng --port 31100 --limit 20
  //   ads_udp_pcap_decode udp_data.pcapng --port 31100 --csv --limit 0
  Options options;
  for (int i = 1; i < argc; ++i)
  {
    const std::string arg(argv[i]);
    if (arg == "--csv")
    {
      options.csv = true;
    }
    else if (arg == "--limit")
    {
      if (i + 1 >= argc)
      {
        throw std::runtime_error("--limit requires a value");
      }
      options.limit = parseLong(argv[++i], "limit");
    }
    else if (arg == "--port")
    {
      if (i + 1 >= argc)
      {
        throw std::runtime_error("--port requires a value");
      }
      options.port_filter = static_cast<int>(parseLong(argv[++i], "port"));
      if (options.port_filter < 0 || options.port_filter > 65535)
      {
        throw std::runtime_error("--port must be in 0..65535");
      }
    }
    else if (arg == "-h" || arg == "--help")
    {
      printUsage(argv[0]);
      std::exit(0);
    }
    else if (options.pcapng_path.empty())
    {
      options.pcapng_path = arg;
    }
    else
    {
      throw std::runtime_error("unexpected argument: " + arg);
    }
  }

  if (options.pcapng_path.empty())
  {
    throw std::runtime_error("pcapng path is required");
  }

  if (options.limit < 0)
  {
    options.limit = options.csv ? 0 : 20;
  }
  return options;
}

bool shouldPrint(long printed, long limit)
{
  return limit == 0 || printed < limit;
}

void printHumanHeader()
{
  // 简洁输出，只打印最常用、最适合人工快速检查的字段。
  std::cout << "packet,src,dst,udp_payload_len,latitude_deg,longitude_deg,gps_time_s,gps_week,"
            << "heading_deg,speed_kmh,sender,version,message_id,counter,gnss_status,ins_status,operation_mode,test_state\n";
}

void printHumanRow(uint64_t packet_index,
                   const UdpDatagram& udp,
                   const ego_trajectory_udp::ads_udp::DecodedPacket& p)
{
  std::cout << std::setprecision(15)
            << packet_index << ","
            << udp.src_ip << ":" << udp.src_port << ","
            << udp.dst_ip << ":" << udp.dst_port << ","
            << udp.payload.size() << ","
            << p.latitude_deg << ","
            << p.longitude_deg << ","
            << p.gps_time_s << ","
            << p.gps_week << ","
            << p.heading_deg << ","
            << p.speed_kmh << ","
            << static_cast<unsigned int>(p.sender) << ","
            << static_cast<unsigned int>(p.version) << ","
            << static_cast<unsigned int>(p.message_id) << ","
            << static_cast<unsigned int>(p.counter) << ","
            << static_cast<unsigned int>(p.gnss_status) << ","
            << static_cast<unsigned int>(p.ins_status) << ","
            << static_cast<unsigned int>(p.operation_mode) << ","
            << static_cast<unsigned int>(p.test_state) << "\n";
}

void printCsvHeader()
{
  // CSV 输出打印所有已解码字段，适合保存后用表格软件或脚本做对比。
  std::cout << "packet,src_ip,src_port,dst_ip,dst_port,udp_payload_len,"
            << "latitude_deg,longitude_deg,ads_id,gps_time_raw_ms,gps_time_s,gps_week,"
            << "fs_message1,fs_message2,bat_state1,bat_state2,bat_state3,bat_state4,mpc_flags,"
            << "posi_rms_m,lat_dev_m,dist_x_m,dist_y_m,x_rel_m,y_rel_m,x_rel_vut_m,y_rel_vut_m,ttc_s,"
            << "heading_deg,speed_kmh,speed_e_kmh,speed_n_kmh,ax_mps2,ay_mps2,dyaw_dps,"
            << "bvolt1_v,bvolt2_v,bvolt3_v,bvolt4_v,btemp1_c,btemp2_c,btemp3_c,btemp4_c,"
            << "bcurr1_a,bcurr2_a,bcurr3_a,bcurr4_a,mtemp1_c,mtemp2_c,mtemp3_c,mtemp4_c,"
            << "cpu_temp_c,steering_angle_deg,steering_pwm,mov_pwm1,mov_pwm2,mov_pwm3,mov_pwm4,brake_pwm,"
            << "sr_sw1,sr_sw2,sr_sw3,sr_sw4,reserved,sender,version,message_id,counter,"
            << "gnss_status,ins_status,soc1,soc2,soc3,soc4,operation_mode,test_state\n";
}

void printCsvRow(uint64_t packet_index,
                 const UdpDatagram& udp,
                 const ego_trajectory_udp::ads_udp::DecodedPacket& p)
{
  std::cout << std::setprecision(15)
            << packet_index << ","
            << udp.src_ip << ","
            << udp.src_port << ","
            << udp.dst_ip << ","
            << udp.dst_port << ","
            << udp.payload.size() << ","
            << p.latitude_deg << ","
            << p.longitude_deg << ","
            << p.ads_id << ","
            << p.gps_time_raw_ms << ","
            << p.gps_time_s << ","
            << p.gps_week << ","
            << p.fs_message1 << ","
            << p.fs_message2 << ","
            << p.bat_state1 << ","
            << p.bat_state2 << ","
            << p.bat_state3 << ","
            << p.bat_state4 << ","
            << p.mpc_flags << ","
            << p.posi_rms_m << ","
            << p.lat_dev_m << ","
            << p.dist_x_m << ","
            << p.dist_y_m << ","
            << p.x_rel_m << ","
            << p.y_rel_m << ","
            << p.x_rel_vut_m << ","
            << p.y_rel_vut_m << ","
            << p.ttc_s << ","
            << p.heading_deg << ","
            << p.speed_kmh << ","
            << p.speed_e_kmh << ","
            << p.speed_n_kmh << ","
            << p.ax_mps2 << ","
            << p.ay_mps2 << ","
            << p.dyaw_dps << ","
            << p.bvolt1_v << ","
            << p.bvolt2_v << ","
            << p.bvolt3_v << ","
            << p.bvolt4_v << ","
            << p.btemp1_c << ","
            << p.btemp2_c << ","
            << p.btemp3_c << ","
            << p.btemp4_c << ","
            << p.bcurr1_a << ","
            << p.bcurr2_a << ","
            << p.bcurr3_a << ","
            << p.bcurr4_a << ","
            << p.mtemp1_c << ","
            << p.mtemp2_c << ","
            << p.mtemp3_c << ","
            << p.mtemp4_c << ","
            << p.cpu_temp_c << ","
            << p.steering_angle_deg << ","
            << p.steering_pwm << ","
            << p.mov_pwm1 << ","
            << p.mov_pwm2 << ","
            << p.mov_pwm3 << ","
            << p.mov_pwm4 << ","
            << p.brake_pwm << ","
            << p.sr_sw1 << ","
            << p.sr_sw2 << ","
            << p.sr_sw3 << ","
            << p.sr_sw4 << ","
            << p.reserved << ","
            << static_cast<unsigned int>(p.sender) << ","
            << static_cast<unsigned int>(p.version) << ","
            << static_cast<unsigned int>(p.message_id) << ","
            << static_cast<unsigned int>(p.counter) << ","
            << static_cast<unsigned int>(p.gnss_status) << ","
            << static_cast<unsigned int>(p.ins_status) << ","
            << static_cast<unsigned int>(p.soc1) << ","
            << static_cast<unsigned int>(p.soc2) << ","
            << static_cast<unsigned int>(p.soc3) << ","
            << static_cast<unsigned int>(p.soc4) << ","
            << static_cast<unsigned int>(p.operation_mode) << ","
            << static_cast<unsigned int>(p.test_state) << "\n";
}

}  // 匿名命名空间

int main(int argc, char** argv)
{
  try
  {
    const Options options = parseArgs(argc, argv);
    const std::vector<uint8_t> bytes = readFile(options.pcapng_path);

    bool section_little = true;
    bool have_section = false;
    std::vector<uint32_t> link_types;
    std::size_t offset = 0;
    uint64_t epb_count = 0;
    uint64_t udp_count = 0;
    uint64_t decoded_count = 0;
    long printed = 0;

    if (options.csv)
    {
      printCsvHeader();
    }
    else
    {
      printHumanHeader();
    }

    while (offset + 12 <= bytes.size())
    {
      // 按块遍历 pcapng 文件。Enhanced Packet Block 里才是真实抓到的报文；
      // 其他块通常是文件头、接口信息等元数据。
      uint32_t block_type = readU32(bytes, offset, section_little);
      uint32_t block_len = 0;

      if (block_type == kSectionHeaderBlock)
      {
        // Section Header Block 里有 byte-order magic，用它判断整个 section
        // 的 pcapng 元数据是小端还是大端。
        if (offset + 12 > bytes.size())
        {
          break;
        }

        const uint32_t magic_le = readU32(bytes, offset + 8, true);
        const uint32_t magic_be = readU32(bytes, offset + 8, false);
        if (magic_le == kByteOrderMagic)
        {
          section_little = true;
        }
        else if (magic_be == kByteOrderMagic)
        {
          section_little = false;
        }
        else
        {
          throw std::runtime_error("invalid pcapng byte-order magic");
        }
        block_len = readU32(bytes, offset + 4, section_little);
        have_section = true;
        link_types.clear();
      }
      else
      {
        if (!have_section)
        {
          throw std::runtime_error("pcapng data starts before a section header block");
        }
        block_len = readU32(bytes, offset + 4, section_little);
      }

      if (block_len < 12 || offset + block_len > bytes.size())
      {
        throw std::runtime_error("invalid pcapng block length");
      }

      if (block_type == kInterfaceDescriptionBlock)
      {
        // Interface Description Block 记录该接口的链路层类型。
        // 后面的 Enhanced Packet Block 会用 interface_id 引用这里。
        link_types.push_back(readU16(bytes, offset + 8, section_little));
      }
      else if (block_type == kEnhancedPacketBlock)
      {
        // Enhanced Packet Block 是真正的抓包帧。
        // 先根据 interface_id 找到链路层类型，再剥出 UDP payload。
        ++epb_count;
        const uint32_t interface_id = readU32(bytes, offset + 8, section_little);
        const uint32_t cap_len = readU32(bytes, offset + 20, section_little);
        const std::size_t packet_offset = offset + 28;
        if (interface_id < link_types.size() && packet_offset + cap_len <= offset + block_len)
        {
          UdpDatagram udp;
          if (extractUdpDatagram(&bytes[packet_offset], cap_len, link_types[interface_id], udp))
          {
            ++udp_count;
            const bool port_matches = options.port_filter < 0 ||
                                      udp.src_port == static_cast<uint16_t>(options.port_filter) ||
                                      udp.dst_port == static_cast<uint16_t>(options.port_filter);
            if (port_matches && udp.payload.size() >= ego_trajectory_udp::ads_udp::kPayloadSize)
            {
              // 协议表真正有用的数据是 UDP payload 的最后 176 字节。
              // decodePayload176() 会按 Intel 小端和 Factor 规则换算成实际物理量。
              const ego_trajectory_udp::ads_udp::DecodedPacket decoded =
                  ego_trajectory_udp::ads_udp::decodePayload176(udp.payload);
              ++decoded_count;
              if (shouldPrint(printed, options.limit))
              {
                if (options.csv)
                {
                  printCsvRow(epb_count, udp, decoded);
                }
                else
                {
                  printHumanRow(epb_count, udp, decoded);
                }
                ++printed;
              }
            }
          }
        }
      }

      offset += block_len;
    }

    std::cerr << "pcapng_epb=" << epb_count
              << " udp=" << udp_count
              << " decoded_ads_udp_176=" << decoded_count
              << " printed=" << printed << "\n";
  }
  catch (const std::exception& e)
  {
    std::cerr << "ads_udp_pcap_decode: " << e.what() << "\n";
    printUsage(argv[0]);
    return 1;
  }

  return 0;
}
