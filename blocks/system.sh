#!/bin/sh
cuppercent=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage }')
cputemp=$(sed 's/000$/°C/' /sys/class/thermal/thermal_zone0/temp)
MEMUSED=$(free -h | awk '(NR == 2) {print $3}')
MEMTOT=$(free -h |awk '(NR == 2) {print $2}')
echo ${MEMUSED}${MEMTOT} "cpu:"${cuppercent%%.*}"%" ${cputemp} 