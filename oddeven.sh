#!/bin/bash
echo "Please Enter the No. ?"
read -s NUM

if [ $NUM == 0 ]; 
	then
	echo "The Number is $NUM"
elif [  `expr $NUM % 2` == 0 ]; 
	then
	echo "The Number is EVEN"
else
	echo "The Number is ODD"
fi	
