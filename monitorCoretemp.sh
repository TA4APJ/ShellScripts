#!/bin/csh

set is_coretemp = `/sbin/kldstat | /usr/bin/grep -i "coretemp" | /usr/bin/cut -d " " -f 13`

echo $is_coretemp
set coretemp = "coretemp.ko"
if ($is_coretemp != $coretemp) then 	
	echo "coretemp yuklu degil, yukleniyor.."
	kldload coretemp
else
	echo "coretemp yuklu"
endif

while (1)

	sysctl -a | grep -i temperature 
	sleep 1
end
