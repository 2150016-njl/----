cmake_minimum_required(VERSION 3.0.2)
project(ego_trajectory_udp)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  message_generation
  nav_msgs
  roscpp
  std_msgs
  visualization_msgs
)

add_message_files(
  FILES
  AdsUdpState.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS geometry_msgs message_runtime nav_msgs roscpp std_msgs visualization_msgs
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(ego_trajectory_udp_node src/ego_trajectory_udp_node.cpp)
add_dependencies(ego_trajectory_udp_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(ego_trajectory_udp_node ${catkin_LIBRARIES})

add_executable(trajectory_polynomial_udp_node src/trajectory_polynomial_udp_node.cpp)
add_dependencies(trajectory_polynomial_udp_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(trajectory_polynomial_udp_node ${catkin_LIBRARIES})

add_executable(ego_trajectory_visualizer_node src/ego_trajectory_visualizer_node.cpp)
target_link_libraries(ego_trajectory_visualizer_node ${catkin_LIBRARIES})

add_executable(ads_udp_decoder_node src/ads_udp_decoder_node.cpp)
add_dependencies(ads_udp_decoder_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(ads_udp_decoder_node ${catkin_LIBRARIES})

add_executable(ads_udp_pcap_decode src/ads_udp_pcap_decode.cpp)
target_link_libraries(ads_udp_pcap_decode ${catkin_LIBRARIES})

install(TARGETS
  ego_trajectory_udp_node
  trajectory_polynomial_udp_node
  ego_trajectory_visualizer_node
  ads_udp_decoder_node
  ads_udp_pcap_decode
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
