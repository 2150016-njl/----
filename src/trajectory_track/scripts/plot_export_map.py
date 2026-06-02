#!/usr/bin/env python3
"""Analyze Overpass export.json, plot roads, and generate road-based trajectories.

Outputs are written to ./output by default:
  - road_map.svg
  - road_summary.csv
  - trajectory_straight_jiasi.csv
  - trajectory_lane_change_changji.csv
  - trajectory_circle_luhuan.csv

The script uses only Python standard library. The SVG can be opened directly in
a browser. CSV trajectory columns are compatible with the UDP node convention:
x/y are local ENU meters, heading is compass heading in degrees.
"""

import argparse
import csv
import json
import math
from pathlib import Path


ORIGIN_LAT = 31.29171
ORIGIN_LON = 121.20927
EARTH_RADIUS_M = 6378137.0

DRIVABLE_HIGHWAYS = {
    "service",
    "residential",
    "unclassified",
    "tertiary",
    "secondary",
    "primary",
    "living_street",
}


def local_xy(origin_lat, origin_lon, lat, lon):
    lat0 = math.radians(origin_lat)
    x = EARTH_RADIUS_M * math.cos(lat0) * math.radians(lon - origin_lon)
    y = EARTH_RADIUS_M * math.radians(lat - origin_lat)
    return x, y


def local_ll(origin_lat, origin_lon, x, y):
    lat = origin_lat + math.degrees(y / EARTH_RADIUS_M)
    lon = origin_lon + math.degrees(x / (EARTH_RADIUS_M * math.cos(math.radians(origin_lat))))
    return lat, lon


def dist(a, b):
    return math.hypot(b[0] - a[0], b[1] - a[1])


def polyline_length(points):
    return sum(dist(points[i - 1], points[i]) for i in range(1, len(points)))


def heading_from_delta(dx, dy):
    if abs(dx) < 1e-9 and abs(dy) < 1e-9:
        return 0.0
    heading = math.degrees(math.atan2(dx, dy))
    return heading + 360.0 if heading < 0.0 else heading


def resample_polyline(points, count):
    if len(points) < 2:
        raise ValueError("polyline must contain at least two points")

    total = polyline_length(points)
    if total <= 1e-9:
        raise ValueError("polyline length is zero")

    step = total / max(count - 1, 1)
    out = [points[0]]
    seg_i = 1
    seg_start = points[0]
    seg_end = points[1]
    seg_len = dist(seg_start, seg_end)
    remaining_on_seg = seg_len
    target = step
    walked = 0.0

    while len(out) < count and seg_i < len(points):
        if target <= walked + remaining_on_seg + 1e-9:
            ratio = 0.0 if seg_len <= 1e-9 else (target - walked) / seg_len
            x = seg_start[0] + ratio * (seg_end[0] - seg_start[0])
            y = seg_start[1] + ratio * (seg_end[1] - seg_start[1])
            out.append((x, y))
            target += step
        else:
            walked += remaining_on_seg
            seg_i += 1
            if seg_i >= len(points):
                break
            seg_start = points[seg_i - 1]
            seg_end = points[seg_i]
            seg_len = dist(seg_start, seg_end)
            remaining_on_seg = seg_len

    while len(out) < count:
        out.append(points[-1])
    return out[:count]


def trajectory_rows(points, origin_lat, origin_lon, speed_mps=5.0, dt=0.1):
    rows = []
    for i, point in enumerate(points):
        if i + 1 < len(points):
            dx = points[i + 1][0] - point[0]
            dy = points[i + 1][1] - point[1]
        else:
            dx = point[0] - points[i - 1][0]
            dy = point[1] - points[i - 1][1]
        lat, lon = local_ll(origin_lat, origin_lon, point[0], point[1])
        rows.append(
            {
                "index": i,
                "lat": lat,
                "lon": lon,
                "x_m": point[0],
                "y_m": point[1],
                "heading_deg": heading_from_delta(dx, dy),
                "vx_mps": speed_mps,
                "ax_mps2": 0.0,
                "time_s": i * dt,
            }
        )
    return rows


def lateral_offset_trajectory(points, max_offset_m=3.0):
    out = []
    n = len(points)
    for i, point in enumerate(points):
        if i + 1 < n:
            dx = points[i + 1][0] - point[0]
            dy = points[i + 1][1] - point[1]
        else:
            dx = point[0] - points[i - 1][0]
            dy = point[1] - points[i - 1][1]
        length = math.hypot(dx, dy)
        nx = 0.0 if length <= 1e-9 else -dy / length
        ny = 0.0 if length <= 1e-9 else dx / length

        # Smooth lane-change offset: 0 -> max_offset_m -> max_offset_m.
        s = i / max(n - 1, 1)
        if s < 0.55:
            u = s / 0.55
            offset = 0.5 * max_offset_m * (1.0 - math.cos(math.pi * u))
        else:
            offset = max_offset_m
        out.append((point[0] + nx * offset, point[1] + ny * offset))
    return out


def nearest_neighbor_chain(ways):
    segments = [list(w["xy"]) for w in ways if len(w["xy"]) >= 2]
    if not segments:
        return []

    segments.sort(key=lambda pts: pts[0][0])
    chain = segments.pop(0)
    while segments:
        end = chain[-1]
        best_i = 0
        best_reverse = False
        best_d = float("inf")
        for i, seg in enumerate(segments):
            d0 = dist(end, seg[0])
            d1 = dist(end, seg[-1])
            if d0 < best_d:
                best_i = i
                best_reverse = False
                best_d = d0
            if d1 < best_d:
                best_i = i
                best_reverse = True
                best_d = d1
        seg = segments.pop(best_i)
        if best_reverse:
            seg = list(reversed(seg))
        if dist(chain[-1], seg[0]) < 0.5:
            chain.extend(seg[1:])
        else:
            chain.extend(seg)
    return chain


def load_roads(path, origin_lat, origin_lon):
    with open(path, "r", encoding="utf-8-sig") as f:
        data = json.load(f)

    roads = []
    for elem in data.get("elements", []):
        if elem.get("type") != "way" or len(elem.get("geometry", [])) < 2:
            continue
        tags = elem.get("tags", {})
        geometry = elem["geometry"]
        ll = [(float(p["lat"]), float(p["lon"])) for p in geometry]
        xy = [local_xy(origin_lat, origin_lon, lat, lon) for lat, lon in ll]
        name = tags.get("name", "")
        name_en = tags.get("name:en", "")
        highway = tags.get("highway", "")
        roads.append(
            {
                "id": elem.get("id"),
                "tags": tags,
                "highway": highway,
                "name": name,
                "name_en": name_en,
                "oneway": tags.get("oneway", ""),
                "ll": ll,
                "xy": xy,
                "length_m": polyline_length(xy),
                "drivable": highway in DRIVABLE_HIGHWAYS
                and tags.get("access") not in ("private", "no")
                and tags.get("motor_vehicle") not in ("private", "no"),
            }
        )
    return roads


def write_summary(roads, path):
    fields = ["id", "highway", "name", "name_en", "oneway", "drivable", "points", "length_m"]
    with open(path, "w", newline="", encoding="utf-8-sig") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for road in sorted(roads, key=lambda r: r["length_m"], reverse=True):
            writer.writerow(
                {
                    "id": road["id"],
                    "highway": road["highway"],
                    "name": road["name"],
                    "name_en": road["name_en"],
                    "oneway": road["oneway"],
                    "drivable": road["drivable"],
                    "points": len(road["xy"]),
                    "length_m": f"{road['length_m']:.2f}",
                }
            )


def write_trajectory(rows, path):
    fields = ["index", "lat", "lon", "x_m", "y_m", "heading_deg", "vx_mps", "ax_mps2", "time_s"]
    with open(path, "w", newline="", encoding="utf-8-sig") as f:
        writer = csv.DictWriter(f, fieldnames=fields)
        writer.writeheader()
        for row in rows:
            writer.writerow(
                {
                    "index": row["index"],
                    "lat": f"{row['lat']:.10f}",
                    "lon": f"{row['lon']:.10f}",
                    "x_m": f"{row['x_m']:.3f}",
                    "y_m": f"{row['y_m']:.3f}",
                    "heading_deg": f"{row['heading_deg']:.3f}",
                    "vx_mps": f"{row['vx_mps']:.3f}",
                    "ax_mps2": f"{row['ax_mps2']:.3f}",
                    "time_s": f"{row['time_s']:.3f}",
                }
            )


def svg_path(points, sx, sy):
    commands = []
    for i, point in enumerate(points):
        x, y = sx(point[0]), sy(point[1])
        commands.append(("M" if i == 0 else "L") + f"{x:.1f},{y:.1f}")
    return " ".join(commands)


def write_svg(roads, trajectories, path):
    all_points = [p for road in roads for p in road["xy"]]
    for points, _color, _width in trajectories:
        all_points.extend(points)

    min_x = min(p[0] for p in all_points)
    max_x = max(p[0] for p in all_points)
    min_y = min(p[1] for p in all_points)
    max_y = max(p[1] for p in all_points)
    pad = 40.0
    width = 1200.0
    height = 900.0
    scale = min((width - 2 * pad) / max(max_x - min_x, 1.0), (height - 2 * pad) / max(max_y - min_y, 1.0))

    def sx(x):
        return pad + (x - min_x) * scale

    def sy(y):
        return height - pad - (y - min_y) * scale

    lines = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{int(width)}" height="{int(height)}" viewBox="0 0 {int(width)} {int(height)}">',
        '<rect width="100%" height="100%" fill="#f7f6ef"/>',
        '<style>text{font-family:Arial,"Microsoft YaHei",sans-serif;font-size:13px;fill:#333}.road{fill:none;stroke-linecap:round;stroke-linejoin:round}</style>',
    ]

    for road in roads:
        color = "#b9b9b9"
        stroke_width = 1.2
        if road["drivable"]:
            color = "#777777"
            stroke_width = 2.4
        lines.append(
            f'<path class="road" d="{svg_path(road["xy"], sx, sy)}" stroke="{color}" stroke-width="{stroke_width}"/>'
        )

    for points, color, stroke_width in trajectories:
        lines.append(
            f'<path class="road" d="{svg_path(points, sx, sy)}" stroke="{color}" stroke-width="{stroke_width}" stroke-dasharray="10 6"/>'
        )

    origin_x, origin_y = sx(0.0), sy(0.0)
    legend_y = 58
    lines.append('<line x1="40" y1="58" x2="115" y2="58" stroke="#dc2626" stroke-width="4" stroke-dasharray="10 6"/>')
    lines.append('<text x="125" y="63">straight: Jiasi Road centerline</text>')
    lines.append('<line x1="40" y1="82" x2="115" y2="82" stroke="#f97316" stroke-width="4" stroke-dasharray="10 6"/>')
    lines.append('<text x="125" y="87">lane_change: East Changji Road with smooth lane offset</text>')
    lines.append('<line x1="40" y1="106" x2="115" y2="106" stroke="#7c3aed" stroke-width="4" stroke-dasharray="10 6"/>')
    lines.append('<text x="125" y="111">circle: Luhuan Road loop-like route</text>')
    lines.append(f'<circle cx="{origin_x:.1f}" cy="{origin_y:.1f}" r="6" fill="#ef4444"/>')
    lines.append(f'<text x="{origin_x + 8:.1f}" y="{origin_y - 8:.1f}">origin / 新能源汽车工程中心附近</text>')
    lines.append('<text x="40" y="35">OSM map roads are gray; dashed lines are regenerated global trajectories</text>')
    lines.append("</svg>")

    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", default="export.json")
    parser.add_argument("--output-dir", default="output")
    parser.add_argument("--origin-lat", type=float, default=ORIGIN_LAT)
    parser.add_argument("--origin-lon", type=float, default=ORIGIN_LON)
    parser.add_argument("--points", type=int, default=1000)
    parser.add_argument("--speed", type=float, default=5.0)
    parser.add_argument("--dt", type=float, default=0.1)
    args = parser.parse_args()

    out_dir = Path(args.output_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    roads = load_roads(args.input, args.origin_lat, args.origin_lon)
    write_summary(roads, out_dir / "road_summary.csv")

    jiasi = [r for r in roads if r["drivable"] and r["name_en"] == "Jiasi Road"]
    changji = [r for r in roads if r["drivable"] and r["id"] == 413977263]
    luhuan_ids = {164316009, 993386745, 1047794582, 993386746, 1047794583}
    luhuan = [r for r in roads if r["drivable"] and r["id"] in luhuan_ids]
    if not jiasi:
        raise RuntimeError("No drivable Jiasi Road geometry found in export.json")
    if not changji:
        raise RuntimeError("No drivable East Changji Road geometry found in export.json")
    if not luhuan:
        raise RuntimeError("No drivable Lühuan Road geometry found in export.json")

    jiasi_chain = nearest_neighbor_chain(jiasi)
    changji_chain = nearest_neighbor_chain(changji)
    luhuan_chain = nearest_neighbor_chain(luhuan)

    straight = resample_polyline(jiasi_chain, args.points)
    lane_change = lateral_offset_trajectory(resample_polyline(changji_chain, args.points), max_offset_m=3.5)
    circle = resample_polyline(luhuan_chain, args.points)

    write_trajectory(trajectory_rows(straight, args.origin_lat, args.origin_lon, args.speed, args.dt),
                     out_dir / "trajectory_straight_jiasi.csv")
    write_trajectory(trajectory_rows(lane_change, args.origin_lat, args.origin_lon, args.speed, args.dt),
                     out_dir / "trajectory_lane_change_changji.csv")
    write_trajectory(trajectory_rows(circle, args.origin_lat, args.origin_lon, args.speed, args.dt),
                     out_dir / "trajectory_circle_luhuan.csv")
    with open(out_dir / "trajectory_manifest.csv", "w", newline="", encoding="utf-8-sig") as f:
        writer = csv.DictWriter(f, fieldnames=["trajectory", "file", "source", "color"])
        writer.writeheader()
        writer.writerows(
            [
                {
                    "trajectory": "straight",
                    "file": "trajectory_straight_jiasi.csv",
                    "source": "Jiasi Road centerline",
                    "color": "#dc2626",
                },
                {
                    "trajectory": "lane_change",
                    "file": "trajectory_lane_change_changji.csv",
                    "source": "East Changji Road with smooth lane offset",
                    "color": "#f97316",
                },
                {
                    "trajectory": "circle",
                    "file": "trajectory_circle_luhuan.csv",
                    "source": "Luhuan Road loop-like route",
                    "color": "#7c3aed",
                },
            ]
        )

    write_svg(
        roads,
        [
            (straight, "#dc2626", 3.0),
            (lane_change, "#f97316", 3.0),
            (circle, "#7c3aed", 3.0),
        ],
        out_dir / "road_map.svg",
    )

    print(f"Loaded roads: {len(roads)}")
    print(f"Drivable roads: {sum(1 for r in roads if r['drivable'])}")
    print(f"Jiasi Road chain length: {polyline_length(jiasi_chain):.1f} m")
    print(f"East Changji Road lane-change length: {polyline_length(changji_chain):.1f} m")
    print(f"Lühuan Road chain length: {polyline_length(luhuan_chain):.1f} m")
    print(f"Wrote: {out_dir / 'road_map.svg'}")
    print(f"Wrote: {out_dir / 'road_summary.csv'}")
    print("Wrote trajectories: trajectory_straight_jiasi.csv, trajectory_lane_change_changji.csv, trajectory_circle_luhuan.csv")


if __name__ == "__main__":
    main()
