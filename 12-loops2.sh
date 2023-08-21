#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "Run the command with your root access"
   exit 1
fi
