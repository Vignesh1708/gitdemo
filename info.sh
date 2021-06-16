#!/bin/bash

echo "this scrit to collect information about system and its resources"

OS_INFO=$(cat /etc/os-release | head -1 | awk -F'"' '{print $2}')

echo "my Operating System = ${OS_INFO}"
