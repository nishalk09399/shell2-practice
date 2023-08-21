#!/bin/bash

# colors
# validations
# log redirections

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)

SCRIPT_NAME=$0
LOG_FILE=$LOGFILE_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m" 
G="\e[32m" 
Y="\e[33m"
N="\e[0m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|Filesystem')
DISK_USAGE_TRESHOLD=1

While IFS= read line
do
    echo "output: $line"
done <<< $DISK_USAGE