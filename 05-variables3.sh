#!/bin/bash

# Ask user name and password script

echo "Please enter your username"

read USERNAME #this is the variable that value stored which is given by user. 

echo "username entered is: $USERNAME"

echo "please enter your password"

read -s PASSWORD #this is the variable that value stored which is given by user. -s it will hide your password while you entering in the console


echo "user entered the password as:  $PASSWORD"