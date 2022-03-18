#!/bin/bash

# Arithematic operations

num1=20
num2=25

echo $(( num1 + num2 ))
echo $(( num2 - num1 ))
echo $(( num1 * num2 ))
echo $(( num2 / num1 ))
echo $(( num2 % num1 ))

# above operations can be done with single parenthesis as below

echo $(expr $num1 + $num2 )
echo $(expr $num2 - $num1 )
# while using expr * is not treated as multiplication therefore use exscape character \ before *
echo $(expr $num1 \* $num2 )
echo $(expr $num2 / $num1 )
echo $(expr $num2 % $num1 )

# bash shell does not perform arithmetic operation on other than integer , s we need to use bc (basic calculator)

num1=20.5
num2=2

echo "$num1 + $num2" | bc
echo "$num1 - $num2" | bc
echo "$num1 * $num2" | bc
# to set the precision use scale=number of precision points u want
echo "scale=3;$num1 / $num2" | bc
echo "$num1 % $num2" | bc
# to calculate the sqrt or power we can use math library, -l is option to use math library
echo "scale=2;sqrt($num1)" | bc -l
echo "scal=2; 3^3" | bc -l

