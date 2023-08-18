#!/bin/bash

#goal is to install the mysql

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
   echo "Stop immediately from the installation"
   exit 1
# else
#   echo "Proceed for the mysql server installation "
fi


yum install mysql -y