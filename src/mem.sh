#!/bin/ash

source /etc/kubescale/mem.conf
echo "MAX_RANGE: $MAX_RANGE"
echo "SIZE_MOD: $SIZE_MOD"

echo "begin allocating memory..."
for index in $(seq $MAX_RANGE); do
    value=$(seq -w -s '' $index $(($index + $SIZE_MOD)))
    eval array$index=$value
done
echo "...end allocating memory"
echo "going into infinite sleep loop"

while true
do
    sleep 10
done