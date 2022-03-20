#!/bin/bash

#function: used to define piece of task in order to do repeatatively 
#syntax
# function name(){}
# or name(){}

function Hello(){
	echo "Hello"
}

quit(){
	exit
}

# to call function simply use name of the function 
Hello
echo "Hiii"

# to pass args use $1 $2 ...
# local keyword is used to make the variable local and should not be accessible from out of scope of function
print(){
	local name=$1
	echo $name
}
name="Tom"
# pass args next to fun name
print sam
echo "$name"
quit




