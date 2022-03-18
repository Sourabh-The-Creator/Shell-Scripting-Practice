#!/bin/bash

age=10

# -eq : equal to [ "$var" -eq "$match" ]
# -ne : not equal 
# -gt : greator than
# -lt : less than
# -le : less than equal to
# -ge :  greator than equal to

#To use angular brackets we need to use (()) intstead of [] 
# < : less than (( "$var" < "$match" ))
# <= : less than equal to (( "$var" <= "$match" ))
# > : greator than (( "$var" >  "$match" ))
# >= : greator than equal to (( "$var" >= "$match" ))

# To use angular brackets with strings 
# = : is equal to [ "$var" = "$match" ]
# == : is equal to [ "$var" == "$match" ]
# != : is not equal to [ "$var" != "$match" ]

# use [[]] for < and > 
# < : is less than [[ "$var" < "$match" ]]
# > : is equal to [[ "$var" > "$match" ]]
# -z : is null (zero length)

if [ "$age" -gt  9 ]
then
	echo "Age is greator than 9"
elif [ "$age" -lt 9 ]
then
	echo "age is less than 9"
elif [ "$age" -eq 9 ]
then
	echo "Equal"
else 
	echo "Invalid"
fi

# File test operators
# -e is used to keep the cusror at the end of line

echo -e "Enter the name of file : "
read file
# -e checks if file exists or not
# -f : if file exists and if it is regular file or not
# -d : if dir exists or not
# -s : whether file is empty or not
# -c : whether it is character file
# -b : whether it is  block file
# -r : to check if file has read permission
# -w : to check if file has write permission
# -x : to check if file has execute permission

if [ -e $file ]
then 
	if [ -f $file ]
	then 
		if [ -w $file ]
		then 
			echo "Enter text, press ctrl+d to exit ";
			cat >> $file
		else
			echo "File dont have write permission";
		fi
	else
		echo "File is not regular file";
	fi
else
	echo "file not exists";
fi

# case statment similar to switch statement, syntax as below

#case expression in 
#	pattern )
#		statements;;
#	pattern )
#		statements;;
#       * )
#		default statement;;
#esac

read -p "Enter car type : " car
case $car in
	"van" )
		echo "rent is 100 rs";;
	"bike" )
		echo "rent is 50 rs";;
	"truck" )
		echo "rent is 500 rs";;
	* )
		echo "Not available";;
esac

# Logical operators
# if [ condition ] && [ condition2 ] or it can be written as if [ condition1 -a condition2 ] -a flag: and operator or [[ condition1 && condition2 ]]
# if [ condition1 ] || [ condition2 ] or it can be written as if [ condition1 -o  condtition2 ] -o : or operator or [[ condtion1 || condition2 ]]


