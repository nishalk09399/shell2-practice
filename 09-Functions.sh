#!/bin/bash

DATE=$(date +%Y-%m-%d)
USERID=$(id -u)

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
