#!/bin/bash

USERID=$(id -u)
R="\e[31m" 

if [ $USERID -ne 0 ]
then
   echo -e "$R Run the command with your root access"
   exit 1
fi
