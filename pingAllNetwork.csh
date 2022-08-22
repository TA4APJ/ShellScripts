#!/bin/csh
# Ping given network range with one sec timeout

foreach  i (`seq 1 254`)
echo $i
ping -c1 -i0.5 -t1 192.168.20.$i
end
