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
echo "Repy var : $REPLY"


# To store Args passed from command line use $1 $2 and so on.....  
$1 $2 $3
echo "$1 and $2 and $3"


