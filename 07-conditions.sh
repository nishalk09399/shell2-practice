#!/bin/bash

#check the number it is greater than 10 or not. write a shell script for this 

NUMBER=$1

if[ $NUMBER -gt 10 ]
then
echo "$NUMBER is greater then 10"
else
echo "$NUMBER is not greater then 10"
fi