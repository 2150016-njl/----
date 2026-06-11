
#!/bin/bash

# 启动第二个进程
# gnome-terminal -- bash -c "source devel/setup.bash; roslaunch rosbridge_server rosbridge_websocket.launch; echo 'Starting rosbridge_websocket.launch...'"


# # 等待第二个进程启动完成
# sleep 1

# 启动第三个进程
gnome-terminal -- bash -c "source devel/setup.bash; roslaunch interface geely_geek_try_1118.launch; echo 'Starting geely_geek.launch...'"

# 等待第三个进程启动完成
# sleep 2

# gnome-terminal -- bash -c "source devel/setup.bash; cd rosbag_record; ./play_selected_topics.sh"




