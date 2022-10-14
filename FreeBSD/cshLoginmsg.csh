#!/bin/csh

#FreeBSDCsh show iface ip as login message 

/bin/cat << "EOF" >> /etc/csh.login
set ifem = "em0"
set ifigb = "igb0"
set ifsfp = "igb0"
set ifsfpp = "ix0"

set ifdev = `/sbin/ifconfig | grep '^[a-z]' | cut -d: -f1 | head -n 1`
set ifdev_issfp = `/sbin/ifconfig | grep '^[a-z]' | cut -d: -f1 | head -n 3 | tail -n 1`

if ($ifdev == $ifem) then
        /sbin/ifconfig em0 inet
else if ($ifdev == $ifigb && $ifdev_issfp != $ifem) then
        /sbin/ifconfig igb0 inet
else if ($ifdev == $ifsfp && $ifdev_issfp == $ifem) then
        /sbin/ifconfig em0 inet
else if ($ifdev == $ifsfpp && $ifdev_issfp == $ifem) then
        /sbin/ifconfig em0 inet
endif

EOF
