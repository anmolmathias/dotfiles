#!/usr/bin/bash
if pidof wlsunset; then
   killall -9 wlsunset
else
   wlsunset -l 29.1 -L 78.4
fi
