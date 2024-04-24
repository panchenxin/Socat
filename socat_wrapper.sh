#!/bin/bash

#IPv4 forward
/usr/bin/socat TCP4-LISTEN:22233,fork TCP4:45.8.186.92:55555 &
/usr/bin/socat TCP4-LISTEN:18365,fork TCP4:45.78.17.118:18365 &
/usr/bin/socat TCP4-LISTEN:26941,fork TCP4:45.8.186.92:26941 &
/usr/bin/socat UDP4-LISTEN:26941,fork UDP4:45.8.186.92:26941 &
 



#IPv6 forward
#/usr/bin/socat TCP4-LISTEN:22233,fork TCP6:[2401:b60:5:7308:3145:cff4:300:353e]:55555 &
#/usr/bin/socat UDP4-LISTEN:22233,fork UDP6:[2401:b60:5:7308:3145:cff4:300:353e]:55555 &

wait
