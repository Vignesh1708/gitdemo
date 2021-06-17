#!/bin/bash

echo "this scrit to collect information about system and its resources"

OS_INFO=$(cat /etc/os-release | head -1 | awk -F'"' '{print $2}')

echo "my Operating System = ${OS_INFO}"

CPU_INFO=$(cat /proc/cpuinfo | grep -i processor | wc -l)

echo "My CPU Cores = ${CPU_INFO}"

MEM_INFO=$(free -h | awk '{print $2}' | head -2 | tail -1)

echo "My Total Memory = ${MEM_INFO}"

echo "This is all out resource available in my server"
