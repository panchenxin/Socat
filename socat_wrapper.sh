#!/bin/bash

#IPv4 forward
/usr/bin/socat TCP4-LISTEN:22233,fork TCP4:45.8.186.92:55555 &
/usr/bin/socat UDP4-LISTEN:22233,fork UDP4:45.8.186.92:55555 &
/usr/bin/socat TCP4-LISTEN:13341,fork TCP4:191.96.242.130:44444 &
/usr/bin/socat UDP4-LISTEN:13341,fork UDP4:191.96.242.130:44444 &


#IPv6 forward
#/usr/bin/socat TCP4-LISTEN:22233,fork TCP6:[2401:b60:5:7308:3145:cff4:300:353e]:55555 &
#/usr/bin/socat UDP4-LISTEN:22233,fork UDP6:[2401:b60:5:7308:3145:cff4:300:353e]:55555 &

wait
