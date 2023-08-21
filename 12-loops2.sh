#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
   echo "Stop immediately from the installation"
   exit 1