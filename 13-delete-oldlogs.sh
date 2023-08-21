#!/bin/bash

APPS_LOG_DIR=/home/centos/apps-logs

DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellpractice-logs

SCRIPT_NAME=$0
LOG_FILE=$LOG_DIR/$SCRIPT_NAME-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "script started executing at $DATE" &>> $LOG_FILE

while read line
do
    echo "Deleting $line" &>> $LOG_FILE
    rm -rf $line
done <<< $FILES_TO_DELETE

