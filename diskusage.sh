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

while IFS= read line
do
    #this command will give you disk usage in number format for comparision
    usage=$(echo $line | awk '{print $6}' | cut -d % -f1)

    #this command will give you the which partioner is consuming memory
    partition=$(echo $line | awk '{print $1}')

    #now you need to check wheather it is more then treshold or not
    if [ $usage -gt $DISK_USAGE_TRESHOLD ];
    then
        message+="HIGH DISK USAGE ON $partition: $usage"

    fi

done <<< $DISK_USAGE

echo "message: $message"