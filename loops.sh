#!/bin/bash

# while loop
n=5;
while [ $n -ge 1 ]
do
	echo "value : $n" 
	n=$(expr $n - 1 )      
done	
