#!/usr/bin/env python3
"""Generate demo trajectories and send them as UDP packets for chassis tracking.

The wire format follows trajectory_更新.xlsx. The 42-byte Ethernet/IP/UDP
header shown in the spreadsheet is produced by the OS/network stack, so this
node sends the application payload that starts at spreadsheet offset 42.
"""

import json
import math
import socket
import struct

import rospy
from std_msgs.msg import String, UInt8MultiArray


DEFAULT_ORIGIN_LAT = 31.29171
DEFAULT_ORIGIN_LON = 121.20927

TRAJECTORY_IDS = {
    "straight": 1,
    "lane_change": 2,
    "circle": 3,
}

PACKET_FLAG_START = 0x01
PACKET_FLAG_MIDDLE = 0x02
PACKET_FLAG_END = 0x04
PACKET_FLAG_SINGLE = 0x08


def clamp(value, low, high):
    return max(low, min(high, value))


def param_bool(name, default):
    value = rospy.get_param(name, default)
    if isinstance(value, bool):
        return value
    if isinstance(value, str):
        return value.strip().lower() in ("1", "true", "yes", "on")
    return bool(value)


def quantize(value, factor, low, high):
    raw = int(round(value / factor))
    return clamp(raw, low, high)


def normalize_heading_deg(heading_deg):
    heading = heading_deg % 360.0
    if heading < 0.0:
        heading += 360.0
    return heading


def heading_from_delta(dx, dy):
    # Compass heading in ENU: 0 deg is north/+y, 90 deg is east/+x.
    if abs(dx) < 1e-9 and abs(dy) < 1e-9:
        return 0.0
    return normalize_heading_deg(math.degrees(math.atan2(dx, dy)))


def local_xy_to_wgs84(origin_lat, origin_lon, x_m, y_m):
    radius = 6378137.0
    lat = origin_lat + math.degrees(y_m / radius)
    lon = origin_lon + math.degrees(x_m / (radius * math.cos(math.radians(origin_lat))))
    return lat, lon


def build_point(x_m, y_m, heading_deg, vx_mps, ax_mps2, t_s, origin_lat, origin_lon):
    lat, lon = local_xy_to_wgs84(origin_lat, origin_lon, x_m, y_m)
    return {
        "x": x_m,
        "y": y_m,
        "lat": lat,
        "lon": lon,
        "heading": normalize_heading_deg(heading_deg),
        "vx": vx_mps,
        "ax": ax_mps2,
        "t": t_s,
    }


def generate_straight(total_points, point_spacing, dt, speed, origin_lat, origin_lon):
    points = []
    for i in range(total_points):
        x = i * point_spacing
        y = 0.0
        points.append(build_point(x, y, 90.0, speed, 0.0, i * dt, origin_lat, origin_lon))
    return points


def generate_lane_change(total_points, point_spacing, dt, speed, origin_lat, origin_lon):
    points = []
    lane_width = rospy.get_param("~lane_width", 3.5)
    lane_change_length = rospy.get_param("~lane_change_length", 80.0)
    last_x = 0.0
    last_y = 0.0

    for i in range(total_points):
        x = i * point_spacing
        if x <= lane_change_length:
            y = 0.5 * lane_width * (1.0 - math.cos(math.pi * x / lane_change_length))
        else:
            y = lane_width

        heading = 90.0 if i == 0 else heading_from_delta(x - last_x, y - last_y)
        points.append(build_point(x, y, heading, speed, 0.0, i * dt, origin_lat, origin_lon))
        last_x = x
        last_y = y

    return points


def generate_circle(total_points, point_spacing, dt, speed, origin_lat, origin_lon):
    points = []
    radius = rospy.get_param("~circle_radius", 30.0)
    angle_step = point_spacing / radius

    for i in range(total_points):
        theta = i * angle_step
        x = radius * math.sin(theta)
        y = radius * (1.0 - math.cos(theta))
        dx = radius * math.cos(theta)
        dy = radius * math.sin(theta)
        heading = heading_from_delta(dx, dy)
        points.append(build_point(x, y, heading, speed, 0.0, i * dt, origin_lat, origin_lon))

    return points


def packet_flag(packet_index, total_packets):
    if total_packets <= 1:
        return PACKET_FLAG_SINGLE
    if packet_index == 0:
        return PACKET_FLAG_START
    if packet_index == total_packets - 1:
        return PACKET_FLAG_END
    return PACKET_FLAG_MIDDLE


class TrajectoryUdpNode:
    def __init__(self):
        self.udp_ip = rospy.get_param("~udp_ip", "127.0.0.1")
        self.udp_port = int(rospy.get_param("~udp_port", 5005))
        self.rate_hz = float(rospy.get_param("~rate_hz", 10.0))
        self.total_points = int(rospy.get_param("~total_points", 1000))
        self.chunk_size = int(rospy.get_param("~chunk_size", 80))
        self.point_spacing = float(rospy.get_param("~point_spacing", 0.5))
        self.dt = float(rospy.get_param("~dt", 0.1))
        self.speed = float(rospy.get_param("~speed", self.point_spacing / self.dt))
        self.origin_lat = float(rospy.get_param("~origin_lat", DEFAULT_ORIGIN_LAT))
        self.origin_lon = float(rospy.get_param("~origin_lon", DEFAULT_ORIGIN_LON))
        self.trajectory = rospy.get_param("~trajectory", "all")
        self.loop = param_bool("~loop", False)
        self.endian = rospy.get_param("~endian", "big").lower()
        self.include_link_header = param_bool("~include_link_header", False)
        self.pad_last_packet = param_bool("~pad_last_packet", False)
        self.sender = int(rospy.get_param("~sender", 10))
        self.version = int(rospy.get_param("~version", 0xF0))
        self.message_id = int(rospy.get_param("~message_id", 4))
        self.counter = 0

        if self.chunk_size <= 0:
            raise ValueError("~chunk_size must be positive")
        if self.total_points <= 0:
            raise ValueError("~total_points must be positive")
        if self.endian not in ("big", "little"):
            raise ValueError("~endian must be 'big' or 'little'")

        self.byte_order = ">" if self.endian == "big" else "<"
        self.header_struct = struct.Struct(self.byte_order + "HBBBBH")
        self.point_struct = struct.Struct(self.byte_order + "iiHhhH")

        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.payload_pub = rospy.Publisher("trajectory_udp_payload", UInt8MultiArray, queue_size=10)
        self.info_pub = rospy.Publisher("trajectory_packet_info", String, queue_size=10)

    def make_trajectories(self):
        generators = {
            "straight": generate_straight,
            "lane_change": generate_lane_change,
            "circle": generate_circle,
        }
        selected = list(generators.keys()) if self.trajectory == "all" else [self.trajectory]
        unknown = [name for name in selected if name not in generators]
        if unknown:
            raise ValueError("unknown trajectory name(s): {}".format(", ".join(unknown)))

        trajectories = []
        for name in selected:
            points = generators[name](
                self.total_points,
                self.point_spacing,
                self.dt,
                self.speed,
                self.origin_lat,
                self.origin_lon,
            )
            trajectories.append((name, TRAJECTORY_IDS[name], points))
        return trajectories

    def pack_point(self, point):
        return self.point_struct.pack(
            quantize(point["x"], 1e-3, -2147483648, 2147483647),
            quantize(point["y"], 1e-3, -2147483648, 2147483647),
            quantize(point["heading"], 0.01, 0, 65535),
            quantize(point["vx"], 0.01, -32768, 32767),
            quantize(point["ax"], 0.01, -32768, 32767),
            quantize(point["t"], 0.01, 0, 65535),
        )

    def pack_packet(self, chunk):
        header = self.header_struct.pack(
            0x7E7E,
            self.sender,
            self.version,
            self.message_id,
            self.counter,
            len(chunk),
        )
        body = b"".join(self.pack_point(point) for point in chunk)
        payload = header + body

        if self.include_link_header:
            payload = (b"\x00" * 42) + payload
        return payload

    def publish_packet(self, payload, info):
        self.sock.sendto(payload, (self.udp_ip, self.udp_port))

        ros_payload = UInt8MultiArray()
        ros_payload.data = list(bytearray(payload))
        self.payload_pub.publish(ros_payload)
        self.info_pub.publish(String(data=json.dumps(info, sort_keys=True)))

    def run_once(self, trajectories):
        rate = rospy.Rate(self.rate_hz)
        for name, trajectory_id, points in trajectories:
            total_packets = int(math.ceil(float(len(points)) / float(self.chunk_size)))
            for packet_index in range(total_packets):
                if rospy.is_shutdown():
                    return

                start = packet_index * self.chunk_size
                end = min(start + self.chunk_size, len(points))
                chunk = points[start:end]
                valid_point_num = len(chunk)
                if self.pad_last_packet and chunk and valid_point_num < self.chunk_size:
                    chunk = chunk + [chunk[-1]] * (self.chunk_size - valid_point_num)
                flag = packet_flag(packet_index, total_packets)
                payload = self.pack_packet(chunk)

                info = {
                    "trajectory": name,
                    "trajectory_id": trajectory_id,
                    "packet_flag": flag,
                    "packet_index": packet_index,
                    "total_packets": total_packets,
                    "counter": self.counter,
                    "point_start": start,
                    "point_num": len(chunk),
                    "valid_point_num": valid_point_num,
                    "payload_bytes": len(payload),
                    "origin_lat": self.origin_lat,
                    "origin_lon": self.origin_lon,
                    "endian": self.endian,
                }
                self.publish_packet(payload, info)
                rospy.loginfo(
                    "sent %s packet %d/%d flag=0x%02X counter=%d points=%d bytes=%d",
                    name,
                    packet_index + 1,
                    total_packets,
                    flag,
                    self.counter,
                    len(chunk),
                    len(payload),
                )

                self.counter = (self.counter + 1) & 0xFF
                rate.sleep()

    def run(self):
        trajectories = self.make_trajectories()
        while not rospy.is_shutdown():
            self.run_once(trajectories)
            if not self.loop:
                break


def main():
    rospy.init_node("trajectory_udp_node")
    node = TrajectoryUdpNode()
    node.run()


if __name__ == "__main__":
    main()
