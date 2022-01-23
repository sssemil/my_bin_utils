#!/bin/bash

while getopts c: flag; do
    case "${flag}" in
    c) core_count=${OPTARG} ;;
    esac
done

total_cpu_count=$(nproc --all)

echo "Leaving ${core_count} out of ${total_cpu_count} cores enabled..."

for ((i = 1; i < total_cpu_count; i++)); do
    echo 1 >"/sys/devices/system/cpu/cpu${i}/online"
done

for ((i = core_count; i < total_cpu_count; i++)); do
    echo 0 >"/sys/devices/system/cpu/cpu${i}/online"
done
