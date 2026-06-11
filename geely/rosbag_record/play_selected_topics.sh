#!/bin/bash

BAG_FILE="/home/plusgo/025_0175_0.bag"
SELECTED_TOPICS=("/localization/global_fusion/Location/tju" "/merged_objects")

if [ ! -f "$BAG_FILE" ]; then
    echo "Error: Bag file $BAG_FILE not found!"
    exit 1
fi

echo "Playing back selected topics from $BAG_FILE..."
rosbag play -l "$BAG_FILE" --topics "${SELECTED_TOPICS[@]}"

if [ $? -eq 0 ]; then
    echo "Playback completed successfully."
else
    echo "Playback failed. Please check the bag file and topics."
    exit 1
fi
