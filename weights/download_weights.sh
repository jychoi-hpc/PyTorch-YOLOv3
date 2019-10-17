#!/bin/bash

if hash aria2c 2>/dev/null; then
    WGET='aria2c -x 8 -s 8'
else
    WGET='wget -c'
fi

# Download weights for vanilla YOLOv3
$WGET https://pjreddie.com/media/files/yolov3.weights
# # Download weights for tiny YOLOv3
$WGET https://pjreddie.com/media/files/yolov3-tiny.weights
# Download weights for backbone network
$WGET https://pjreddie.com/media/files/darknet53.conv.74
