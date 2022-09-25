#!/bin/sh
echo "Please be sure v4l2-utils is exist"
echo "record starting.."
/usr/bin/ffmpeg -f v4l2 -i /dev/video0 -video_size 640x480 -frames 15  burak.mkv

