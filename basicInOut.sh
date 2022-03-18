#!/bin/bash

#this is comment
echo "Hello World"

echo $BASH
echo $BASH_VERSION
echo $PWD

name="Sourabh"
echo "Name is $name"

# To take the input use read command
echo  "Enter credentials : "
# -p flag allows us to read on the same line and -s hides the typed letters but stores in variables 
read -p "Username : " username
read -sp "password : " passwd
echo "username is $username password is $passwd"


# To take input a array use -a option
echo "Enter names : "
read -a names
echo "Names are ${names[0]}, ${names[1]}"


# When read is written with no variable input goes into default variable $REPLY
read 
echo "Reply var : $REPLY"


# To store Args passed from command line use $1 $2 and so on.....  

echo "$1 and $2 and $3"

# if we want to store args as array then bash stores it in @, and we can retrive it by $@

args=("$@")

#to print all args 
echo "$@"

#echo "$args"
echo "${args[1]} ${args[2]}" 

#to print the number of args passed wecan use $#
echo "$#"
