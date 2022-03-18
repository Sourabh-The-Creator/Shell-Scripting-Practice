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
