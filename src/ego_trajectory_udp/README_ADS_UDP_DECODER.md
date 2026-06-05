# ADS UDP decoder

## Core rules

`ADS_UDP_Protocol_V1.0.xlsx` uses capture-frame offsets:

- Captured frame: `218` bytes
- Ethernet + IPv4 + UDP headers: first `42` bytes
- ADS UDP application payload: exactly `176` bytes

The code decodes only UDP application payloads whose length is exactly `176` bytes. All multi-byte protocol fields use Intel/little-endian byte order. Motorola/big-endian decoding is not used.

Heading uses the protocol compass frame: north is `0 deg`, east is `90 deg`, south is `180 deg`, west is `270 deg`; values increase clockwise and should stay in `0..360 deg`.

## Field Format

Offset below is relative to the 176-byte UDP application payload. Original XLSX capture offset is `offset + 42`.

| Offset | Field | Format | Scale | Unit | Meaning |
| --- | --- | --- | --- | --- | --- |
| 0 | Latitude | double | 1 | deg | WGS84 latitude |
| 8 | Longitude | double | 1 | deg | WGS84 longitude |
| 16 | ADS_ID | uint32 | 1 |  | Device or production ID |
| 20 | GPS_Time | int32 | 1e-3 | s | GPS seconds of current week |
| 24 | GPS_Week | int32 | 1 |  | GPS week since Jan 1980 |
| 28 | FSMessage1 | uint32 | 1 | bit/byte | Communication, battery, sensor, temperature status |
| 32 | FSMessage2 | uint32 | 1 | bit/byte | Emergency stop, INS state, overrun, trajectory-following status |
| 36 | Bat_State1 | uint32 | 1 |  | Battery 1 status |
| 40 | Bat_State2 | uint32 | 1 |  | Battery 2 status |
| 44 | Bat_State3 | uint32 | 1 |  | Battery 3 status |
| 48 | Bat_State4 | uint32 | 1 |  | Battery 4 status |
| 52 | MPCFlags | uint32 | 1 | bit | MPC/controller flags |
| 56 | Posi_RMS | float32 | 1 | m | Horizontal position RMS |
| 60 | Lat_Dev | float32 | 1 | m | Lateral deviation from planned path |
| 64 | Dist_X | float32 | 1 | m | Longitudinal distance from Target to VUT |
| 68 | Dist_Y | float32 | 1 | m | Lateral distance from Target to VUT |
| 72 | X_rel | float32 | 1 | m | Target relative X from target origin |
| 76 | Y_rel | float32 | 1 | m | Target relative Y from target origin |
| 80 | X_rel_VUT | float32 | 1 | m | VUT relative X from target origin |
| 84 | Y_rel_VUT | float32 | 1 | m | VUT relative Y from target origin |
| 88 | TTC | float32 | 1 | s | Time to collision |
| 92 | Heading | uint16 | 0.01 | deg | INS heading, compass frame, `0..360` |
| 94 | Speed | int16 | 0.01 | km/h | Total speed |
| 96 | Speed_E | int16 | 0.01 | km/h | East speed component |
| 98 | Speed_N | int16 | 0.01 | km/h | North speed component |
| 100 | ax | int16 | 0.01 | m/s^2 | Longitudinal acceleration |
| 102 | ay | int16 | 0.01 | m/s^2 | Lateral acceleration |
| 104 | dyaw | int16 | 0.01 | deg/s | Yaw rate |
| 106 | BVolt1 | uint16 | 0.1 | V | Battery 1 voltage |
| 108 | BVolt2 | uint16 | 0.1 | V | Battery 2 voltage |
| 110 | BVolt3 | uint16 | 0.1 | V | Battery 3 voltage |
| 112 | BVolt4 | uint16 | 0.1 | V | Battery 4 voltage |
| 114 | BTemp1 | int16 | 0.1 | C | Battery 1 core temperature |
| 116 | BTemp2 | int16 | 0.1 | C | Battery 2 core temperature |
| 118 | BTemp3 | int16 | 0.1 | C | Battery 3 core temperature |
| 120 | BTemp4 | int16 | 0.1 | C | Battery 4 core temperature |
| 122 | Bcurr1 | int16 | 0.1 | A | Battery 1 current |
| 124 | Bcurr2 | int16 | 0.1 | A | Battery 2 current |
| 126 | Bcurr3 | int16 | 0.1 | A | Battery 3 current |
| 128 | Bcurr4 | int16 | 0.1 | A | Battery 4 current |
| 130 | MTemp1 | int16 | 0.1 | C | Motor 1 temperature |
| 132 | MTemp2 | int16 | 0.1 | C | Motor 2 temperature |
| 134 | MTemp3 | int16 | 0.1 | C | Motor 3 temperature |
| 136 | MTemp4 | int16 | 0.1 | C | Motor 4 temperature |
| 138 | CPUTemp | int16 | 0.1 | C | CPU temperature |
| 140 | STE_Ang | int16 | 0.1 | deg | Steering angle |
| 142 | STE_OT | int16 | 1 | PWM | Steering output, about `-1000..1000` |
| 144 | MOV_OT1 | int16 | 1 | PWM | Drive output 1 |
| 146 | MOV_OT2 | int16 | 1 | PWM | Drive output 2 |
| 148 | MOV_OT3 | int16 | 1 | PWM | Drive output 3 |
| 150 | MOV_OT4 | int16 | 1 | PWM | Drive output 4 |
| 152 | BRA_OT | int16 | 1 | PWM | Brake output, about `-5000..5000` |
| 154 | SR_SW1 | uint16 | 1 | bit | Status word 1 |
| 156 | SR_SW2 | uint16 | 1 | bit | Status word 2 |
| 158 | SR_SW3 | uint16 | 1 | bit | Status word 3 |
| 160 | SR_SW4 | uint16 | 1 | bit | Status word 4 |
| 162 | reserved | int16 | 1 |  | Reserved |
| 164 | Sender | uint8 | 1 |  | Sender ID |
| 165 | Version | uint8 | 1 |  | Protocol version, usually `0xF0` |
| 166 | MessageID | uint8 | 1 |  | `1` DOTM, `2` SCID, `3` RCMD, `4` VUTM, `11` MONM |
| 167 | Counter | uint8 | 1 |  | Communication counter, `0..255` |
| 168 | GNSS_Status | uint8 | 1 | enum | GNSS positioning status |
| 169 | INS_Status | uint8 | 1 | enum | INS alignment status |
| 170 | SOC1 | uint8 | 1 | % | Battery 1 SOC |
| 171 | SOC2 | uint8 | 1 | % | Battery 2 SOC |
| 172 | SOC3 | uint8 | 1 | % | Battery 3 SOC |
| 173 | SOC4 | uint8 | 1 | % | Battery 4 SOC |
| 174 | O_Mode | uint8 | 1 | enum | `0x00` stand still, `0x0A` safety, `0x0B` remote, `0x0C` trajectory |
| 175 | Test_State | uint8 | 1 | bit | Initial ready, scenario ready, executing, test end |

Compact bit-field notes:

- `FSMessage1`: byte0 temperature, byte1 sensor status bits, byte2 battery state, byte3 communication status bits.
- `FSMessage2`: byte0 trajectory following, byte1 overrun, byte2 INS state, byte3 emergency stop.
- `SR_SW1..4`: drive status words. Important bits include ready, switched on, enabled, error, voltage enabled, quick stop, warning, running, target speed reached, and internal limit active.
- `Test_State`: bit0 initial condition ready, bit1 scenario ready, bit2 scenario executing, bit3 test end.

## Offline Decode

`ads_udp_pcap_decode.cpp` decodes `udp_data.pcapng` directly. It reads pcapng blocks, strips Ethernet/IP/UDP headers, then decodes the UDP payload.

```bash
rosrun ego_trajectory_udp ads_udp_pcap_decode udp_data.pcapng --port 31100 --limit 20
```

Export all decoded fields:

```bash
rosrun ego_trajectory_udp ads_udp_pcap_decode udp_data.pcapng --port 31100 --csv --limit 0 > ads_udp_decoded_06041217.csv
```

For the supplied `udp_data.pcapng`, the expected summary is `decoded_ads_udp_176=1380`. The first decoded packet should be close to:

```text
src=192.168.88.100:31000
dst=192.168.88.3:31100
udp_payload_len=176
latitude_deg=31.2916925206793
longitude_deg=121.208700390378
gps_week=2421
version=240
message_id=1
```

## Live Decode

`ads_udp_decoder_node.cpp` decodes online UDP packets delivered to a normal UDP socket. It does not read pcapng files by itself.

```bash
roslaunch ego_trajectory_udp ads_udp_decode.launch \
  bind_ip:=0.0.0.0 \
  local_port:=31100 \
  expected_remote_ip:=192.168.88.100 \
  expected_remote_port:=31000
```

Check one decoded message:

```bash
rostopic echo -n 1 /ads_udp_decoded
```

Successful live decode should show:

- `udp_payload_bytes` is `176`; other payload lengths are rejected as non-ADS packets.
- `decoded.version` is `240` (`0xF0`).
- `decoded.counter` changes over time.
- Latitude and longitude are in the expected area.
- `decoded.heading_deg` is in `0..360`.
- No repeated `drop short UDP datagram` or `failed to decode` warnings.

## Replay pcapng Online

Your understanding is correct:

- `ads_udp_pcap_decode.cpp`: offline pcapng file decoder.
- `ads_udp_decoder_node.cpp`: online UDP socket decoder.

You can replay `udp_data.pcapng` for online testing, but the online node must receive actual UDP datagrams. It cannot consume the pcapng file directly.

Two practical replay methods:

- Use a UDP payload replay sender: read each pcapng UDP payload and send the 176-byte ADS payload to `127.0.0.1:31100` or the target host IP.
- Use `tcpreplay` from another machine or interface so the packet is delivered to the host running `ads_udp_decoder_node`. The destination IP/port in the sample is `192.168.88.3:31100`, so the receiver must match or the packets must be rewritten.

To verify replay accuracy, decode the same file offline and compare with live `/ads_udp_decoded` output. The first packet values, counter sequence, GPS time, latitude, longitude, version, and message ID should match.




# 0605 接收udp解码，提取定位（x，y，heading），构造直行/左换道/右转轨迹，发布轨迹转udp
roslaunch ego_trajectory_udp ads_to_trajectory.launch trajectory:=straight
roslaunch ego_trajectory_udp ads_to_trajectory.launch trajectory:=left_lane_change
roslaunch ego_trajectory_udp ads_to_trajectory.launch trajectory:=right_turn
## 如果现场确认要用 X_rel/Y_rel 而不是 X_rel_VUT/Y_rel_VUT
roslaunch ego_trajectory_udp ads_to_trajectory.launch ads_pose_source:=target
