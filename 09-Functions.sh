#!/bin/bash

DATE=$(date +%F-%H-%M-%S)

SCRIPT_NAME=$0

USERID=$(id -u)

LOG_FILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE(){

    if [ $1 -ne 0 ]
    then 
        echo "Installation is failure"
        exit1
    else
        echo "Installation is success"

    fi
}

if [ $USERID -ne 0 ]
then
   echo "Stop immediately from the installation"
   exit 1
# else
#   echo "Proceed for the mysql server installation "
fi


yum install mysql -y

VALIDATE $? "Installing Mysql"

yum install postfix -y

VALIDATE $? "Installing Postfix"
