#!/bin/bash


DATE=$(date +%F)

SCRIPT_NAME=$0

LOG_DIR=/home/centos/shellpractice-logs
LOG_FILE=$LOG_DIR/$0-$DATE.log

USERID=$(id -u)
R="\e[31m" 
Y="\e[33m"


if [ $USERID -ne 0 ]
then
   echo -e "$R Run the command with your root access"
   exit 1
fi

for i in $@
do 
    yum list installed $i &>>$LOG_FILE
    if [ $? -ne 0 ]
    then 
        echo "$i is not avilable, pls install it"
        yum install $i -y &>>$LOG_FILE
    else
        echo -e "$Y package is already installed"
    fi
done

