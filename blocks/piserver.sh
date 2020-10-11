#!/bin/sh
server=192.168.1.148

if ping -c1 -W1 $server &>/dev/null; then
    echo "Pi ✅"
else
    echo "Pi ⛔"
fi
