int8   priority     # 道路优先级
int8   global_id     # 道路全局id（从左至右，从0开始）
int8 predecessor_id # 上一车道id
int8 successor_id # 下一车道id
int8 left_neighbor_id # 左边相邻车道id
int8 right_neighbor_id # 右边相邻车道id
int8   type     # 类型（预留）
LanePoint[] lane_points # 道路参考线（z）
