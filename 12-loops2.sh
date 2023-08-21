#!/bin/bash


DATE=$(date +%F)
SCRIPT_NAME=$0
LOG_DIR=/home/centos/shellpractice-logs
LOG_FILE=$LOG_DIR/$0-$DATE.log
USERID=$(id -u)
R="\e[31m" 

if [ $USERID -ne 0 ]
then
   echo -e "$R Run the command with your root access"
   exit 1
fi
