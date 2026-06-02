cmake_minimum_required(VERSION 3.0.2)
project(trajectory_udp_sender)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  nav_msgs
  roscpp
  std_msgs
  visualization_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS geometry_msgs nav_msgs roscpp std_msgs visualization_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(trajectory_udp_node src/trajectory_udp_node.cpp)
target_link_libraries(trajectory_udp_node ${catkin_LIBRARIES})

add_executable(trajectory_visualizer_node src/trajectory_visualizer_node.cpp)
target_link_libraries(trajectory_visualizer_node ${catkin_LIBRARIES})

install(TARGETS trajectory_udp_node trajectory_visualizer_node
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(FILES export.json
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
