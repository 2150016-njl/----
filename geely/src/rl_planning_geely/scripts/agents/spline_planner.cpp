#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include <cmath>
#include <vector>
#include <algorithm>

namespace py = pybind11;

struct Spline {
    std::vector<double> x;
    std::vector<double> a, b, c, d;

    Spline() = default;

    Spline(const std::vector<double> &x, const std::vector<double> &a, const std::vector<double> &b, const std::vector<double> &c, const std::vector<double> &d)
        : x(x), a(a), b(b), c(c), d(d) {}
};

struct Spline3D {
    Spline sx, sy, sz;
    std::vector<double> s;

    Spline3D() = default;

    Spline3D(const Spline &sx, const Spline &sy, const Spline &sz, const std::vector<double> &s)
        : sx(sx), sy(sy), sz(sz), s(s) {}
};

int search_index(const Spline &sp, double t) {
    int min_i = 0;
    int max_i = sp.x.size() - 2;
    int index = 0;

    if (max_i == -1) {
        return 0;
    } else if (min_i == max_i) {
        return 0;
    }

    for (int i = 0; i < sp.x.size() - 2; ++i) {
        if (sp.x[i] <= t && t <= sp.x[i + 1]) {
            index = i;
            break;
        }
    }

    return index;
}

double calc(const Spline &sp, double t) {
    if (t < sp.x[0]) {
        return sp.a[0];
    } else if (t > sp.x.back()) {
        return sp.a.back();
    }

    size_t i = std::lower_bound(sp.x.begin(), sp.x.end(), t) - sp.x.begin();
    double dx = t - sp.x[i];
    return sp.a[i] + sp.b[i] * dx + sp.c[i] * dx * dx + sp.d[i] * dx * dx * dx;
}

double calcd(const Spline &sp, double t) {
    if (t < sp.x[0]) {
        return sp.b[0];
    } else if (t > sp.x.back()) {
        return sp.b.back();
    }

    size_t i = std::lower_bound(sp.x.begin(), sp.x.end(), t) - sp.x.begin();
    double dx = t - sp.x[i];
    return sp.b[i] + 2.0 * sp.c[i] * dx + 3.0 * sp.d[i] * dx * dx;
}

std::pair<double, double> calc_position(const Spline3D &csp, double cur_s){
    double x = calc(csp.sx, cur_s);
    double y = calc(csp.sy, cur_s);
    return {x, y};
}

double calc_yaw(const Spline3D &csp, double cur_s){
    double x = calcd(csp.sx, cur_s);
    double y = calcd(csp.sy, cur_s);
    double delta = 0;
    if (x <= 0) {
        if (y <= 0) {
            x = -x;
            y = -y;
            delta = -M_PI;
        } else {
            delta = M_PI;
        }
    }
    return std::atan2(y, x) + delta;
}

std::pair<double, int> calc_cur_s(const Spline3D &csp, const std::pair<double, double> &ego_pos, int index) {
    double min_dist = std::numeric_limits<double>::infinity();
    int min_index = 0;
    double s = 0.01;

    for (size_t i = index; i < csp.s.size(); ++i) {
        double global_x = csp.sx.a[i] + csp.sx.b[i] * s + csp.sx.c[i] * s * s + csp.sx.d[i] * s * s * s;
        double global_y = csp.sy.a[i] + csp.sy.b[i] * s + csp.sy.c[i] * s * s + csp.sy.d[i] * s * s * s;

        double dist = std::hypot(ego_pos.first - global_x, ego_pos.second - global_y);
        if (dist < min_dist) {
            min_dist = dist;
            min_index = i;
        }
    }

    double s_match = csp.s[min_index];
    double yaw_match = calc_yaw(csp, s_match);
    double x_match = calc_position(csp, s_match).first;
    double y_match = calc_position(csp, s_match).second;

    double delta_x = ego_pos.first - x_match;
    double delta_y = ego_pos.second - y_match;
    double delta_s = delta_x * std::cos(yaw_match) + delta_y * std::sin(yaw_match);

    s = std::max(0.01, std::round(s_match + delta_s));

    return {s, min_index};
}

double calc_cur_d(const std::pair<double, double> &ego_pos, const Spline3D &csp, double cur_s) {
    double x_ref = calc_position(csp, cur_s).first;
    double y_ref = calc_position(csp, cur_s).second;
    double yaw_ref = calc_yaw(csp, cur_s);

    double delta_x = ego_pos.first - x_ref;
    double delta_y = ego_pos.second - y_ref;
    double cur_d = std::hypot(delta_x, delta_y) * ((delta_y * std::cos(yaw_ref) - delta_x * std::sin(yaw_ref)) >= 0 ? 1 : -1);

    return cur_d;
}


PYBIND11_MODULE(spline_planner, m) {
    py::class_<Spline>(m, "Spline")
        .def(py::init<>())
        .def(py::init<const std::vector<double>&, const std::vector<double>&, const std::vector<double>&, const std::vector<double>&, const std::vector<double>&>())
        .def_readwrite("x", &Spline::x)
        .def_readwrite("a", &Spline::a)
        .def_readwrite("b", &Spline::b)
        .def_readwrite("c", &Spline::c)
        .def_readwrite("d", &Spline::d);

    py::class_<Spline3D>(m, "Spline3D")
        .def(py::init<>())
        .def(py::init<const Spline&, const Spline&, const Spline&, const std::vector<double>&>())
        .def_readwrite("sx", &Spline3D::sx)
        .def_readwrite("sy", &Spline3D::sy)
        .def_readwrite("sz", &Spline3D::sz)
        .def_readwrite("s", &Spline3D::s);

    m.def("calc_cur_s", &calc_cur_s);
    m.def("calc_cur_d", &calc_cur_d);
}

