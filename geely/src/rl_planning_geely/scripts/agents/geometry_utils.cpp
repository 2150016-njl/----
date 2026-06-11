#include <cmath>
#include <vector>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

namespace py = pybind11;
using namespace std;

struct Point {
    double x, y;
};

struct Line {
    Point start, end;
};

bool ccw(Point A, Point B, Point C) {
    return (C.y - A.y) * (B.x - A.x) > (B.y - A.y) * (C.x - A.x);
}

bool intersect(Point A, Point B, Point C, Point D) {
    return ccw(A, C, D) != ccw(B, C, D) && ccw(A, B, C) != ccw(A, B, D);
}

std::vector<Point> calculate_corners(Point center, double extent_x, double extent_y, double rotation) {
    std::vector<Point> corners(4);
    double radians = rotation * M_PI / 180.0;
    double cos_yaw = cos(radians);
    double sin_yaw = sin(radians);

    corners[0] = {center.x - extent_y, center.y - extent_x};
    corners[1] = {center.x + extent_y, center.y - extent_x};
    corners[2] = {center.x + extent_y, center.y + extent_x};
    corners[3] = {center.x - extent_y, center.y + extent_x};

    for (auto& corner : corners) {
        double temp_x = corner.x - center.x;
        double temp_y = corner.y - center.y;

        corner.x = cos_yaw * temp_x + sin_yaw * temp_y + center.x;
        corner.y = -sin_yaw * temp_x + cos_yaw * temp_y + center.y;
    }

    return corners;
}

bool lines_intersect(const Line& l1, const Line& l2, Point& intersection) {
    double a1 = l1.end.y - l1.start.y;
    double b1 = l1.start.x - l1.end.x;
    double c1 = a1 * l1.start.x + b1 * l1.start.y;

    double a2 = l2.end.y - l2.start.y;
    double b2 = l2.start.x - l2.end.x;
    double c2 = a2 * l2.start.x + b2 * l2.start.y;

    double determinant = a1 * b2 - a2 * b1;
    if (std::abs(determinant) < 1e-10) {
        return false;
    } else {
        intersection.x = (b2 * c1 - b1 * c2) / determinant;
        intersection.y = (a1 * c2 - a2 * c1) / determinant;
        return true;
    }
}

std::vector<double> lines_intersect_optimized(Point line1_start, Point line1_end, Point line2_start, Point line2_end) {
    if (intersect(line1_start, line1_end, line2_start, line2_end)) {
        double det = (line1_end.x - line1_start.x) * (line2_end.y - line2_start.y) - (line2_end.x - line2_start.x) * (line1_end.y - line1_start.y);
        if (det == 0) {
            return {};
        } else {
            double t = ((line2_start.x - line1_start.x) * (line2_end.y - line2_start.y) - (line2_start.y - line1_start.y) * (line2_end.x - line2_start.x)) / det;
            double u = ((line2_start.x - line1_start.x) * (line1_end.y - line1_start.y) - (line2_start.y - line1_start.y) * (line1_end.x - line1_start.x)) / det;
            if (t >= 0 && t <= 1 && u >= 0 && u <= 1) {
                std::vector<double> intersection(2);
                intersection[0] = line1_start.x + t * (line1_end.x - line1_start.x);
                intersection[1] = line1_start.y + t * (line1_end.y - line1_start.y);
                return intersection;
            }
        }
    }
    return {};
}

std::vector<double> simulate_sensor_input(Point ego_location, const std::vector<Point>& objs_centers, const std::vector<double>& objs_extents_x, const std::vector<double>& objs_extents_y, const std::vector<double>& objs_rotations, int num_points, double path_length, double vehicle_angle) {
    std::vector<double> distances(num_points, path_length);
    std::vector<std::vector<Point>> paths(num_points, std::vector<Point>(2));
    std::vector<std::vector<Point>> rotated_corners(objs_centers.size());

    // 计算车辆的航向角
//    double vehicle_angle = atan2(1.0, 0.0); // 假设车辆朝向角为0度（即x轴正方向）
    double cos_vehicle_angle = cos(vehicle_angle);
    double sin_vehicle_angle = sin(vehicle_angle);

    for (size_t j = 0; j < objs_centers.size(); ++j) {
        // 计算物体的四个角点
        auto corners = calculate_corners(objs_centers[j], objs_extents_x[j], objs_extents_y[j], objs_rotations[j]);

        // 对物体的四个角点进行整体逆时针旋转变换
        for (auto& corner : corners) {
            double temp_x = corner.x - ego_location.x;
            double temp_y = corner.y - ego_location.y;

            corner.x = cos_vehicle_angle * temp_x + sin_vehicle_angle * temp_y + ego_location.x;
            corner.y = -sin_vehicle_angle * temp_x + cos_vehicle_angle * temp_y + ego_location.y;
        }
        rotated_corners[j] = corners;
    }

    for (int i = 0; i < num_points; ++i) {
        double angle = 2 * M_PI * i / num_points;
        Point direction = {cos(angle), sin(angle)};
        paths[i][0] = ego_location;
        paths[i][1] = {ego_location.x + direction.x * path_length, ego_location.y + direction.y * path_length};

        for (size_t j = 0; j < objs_centers.size(); ++j) {
            Point closest_intersection = paths[i][1];
            double closest_distance = distances[i];
            for (int k = 0; k < 4; ++k) {
                std::vector<double> intersection_result = lines_intersect_optimized(ego_location, paths[i][1], rotated_corners[j][k], rotated_corners[j][(k+1) % 4]);
                if (!intersection_result.empty()) {
                    Point intersection = {intersection_result[0], intersection_result[1]};
                    double dist = sqrt(pow(intersection.x - ego_location.x, 2) + pow(intersection.y - ego_location.y, 2));
                    if (dist < closest_distance) {
                        closest_distance = dist;
                        closest_intersection = intersection;
                    }
                }
            }
            if (closest_distance < distances[i]) {
                distances[i] = closest_distance;
                paths[i][1] = closest_intersection;
            }
        }
    }

    return distances;
}

PYBIND11_MODULE(geometry_utils, m) {
    py::class_<Point>(m, "Point")
        .def(py::init<double, double>())
        .def_readwrite("x", &Point::x)
        .def_readwrite("y", &Point::y);

    py::class_<Line>(m, "Line")
        .def(py::init<Point, Point>())
        .def_readwrite("start", &Line::start)
        .def_readwrite("end", &Line::end);

    m.def("calculate_corners", &calculate_corners, "计算旋转矩形的角点");
    m.def("lines_intersect", &lines_intersect, "检查两条线段是否相交并找到交点");
    m.def("simulate_sensor_input", &simulate_sensor_input, "模拟传感器输入，通过径向路径检查物体交点");
}