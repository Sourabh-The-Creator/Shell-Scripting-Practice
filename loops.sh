#!/bin/bash

# while loop
n=5;
while [ $n -ge 1 ]
do
	echo "value : $n" 
	n=$(expr $n - 1 )      
done

#until loop
# similar to do while loop, when condition in until [] true then only loop stops else loop continues till the condition is false. until~while but until runs when condition is false.
until [ $n -gt 10 ]
do
	echo "$n"
	n=$(( n+1 ))
done

# for loop syntax
#for variable in 1 2 3 4....N
#do
#	command1 on $variable;
#	command2 on $variable;
#done

# or can use file as input 
#for variable in file1 file2 file2
#do
#       command1 on $variable;
#       command2 on $variable;
#done

# or can use linux command as input
#for variable in $( linux command )
#do
#       command1 on $variable;
#       command2 on $variable;
#done

# or also we can use like in other language
#for (( EXP1; EXP2; EXP3 ))
#do
#       command1 on $variable;
#       command2 on $variable;
#done


for var in 1 2 3 4 5 
do
	echo $var
done

# using range()
# {} used for range syntax: { START..END..INCREMENT/DECREMENT } works on bash version > 4.0
echo $BASH_VERSION
for var in {1..10..2}
do
        echo $var
done

for (( i=0; i<10; i++ ))
do
        echo $i
done

for cmd in ls pwd date
do
	echo "-------$cmd------"
	$cmd
done


# select loop 
# select loop is used when we want to print menu like options from which we can choose any one option, often used with case (switch) statmentsi
# outut will be similar to
# 1) mark
# 2) tom
# 3) ben
# 4) peter
# ? 1
# mark selected

select name in mark tom ben peter
do
	case $name in
		mark) 
			echo  "$name";;
		tom)
			echo $name;;
		ben)
			echo $name;;
		peter)
			echo $peter;;
	esac
done

# break: used to out f the loop
# continue : used to continue the loop 
