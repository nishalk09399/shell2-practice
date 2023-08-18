#!/bin/bash

#goal is to install the mysql

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
   echo "Stop immediately from the installation"
# else
#   echo "Proceed for the mysql server installation "
fi


yum install git -y