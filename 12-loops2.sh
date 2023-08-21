#!/bin/bash

USERID=$(id -u)
R="\e[31m" 

if [ $USERID -ne 0 ]
then
   echo "$RED -e Run the command with your root access"
   exit 1
fi
