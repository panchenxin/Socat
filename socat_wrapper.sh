#!/bin/bash

#IPv4 forward
/usr/bin/socat TCP4-LISTEN:22233,fork TCP4:191.96.242.130:62222 &
/usr/bin/socat UDP4-LISTEN:22233,fork UDP4:191.96.242.130:62222 &
/usr/bin/socat TCP4-LISTEN:13341,fork TCP4:191.96.242.130:13341 &
/usr/bin/socat UDP4-LISTEN:13341,fork UDP4:191.96.242.130:13341 &


#IPv6 forward
#/usr/bin/socat TCP4-LISTEN:443,fork TCP6:[2606:4700:4700::1111]:80 &
#/usr/bin/socat UDP4-LISTEN:443,fork UDP6:[2606:4700:4700::1001]:80 &

wait
