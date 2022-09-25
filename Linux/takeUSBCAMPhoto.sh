#!/bin/sh

/usr/bin/ffmpeg -f v4l2 -i /dev/video0 -video_size 640x480 -frames 1  burak.jpeg

