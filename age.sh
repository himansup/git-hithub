#!/bin/bash
read -p "Please Enter your Age: " AGE
echo "You Entered your age as $AGE Years"

if [ "$AGE" -lt 20 ] || [ "$AGE" -gt 50 ]; then
		echo "Sorry You are out of Age."
	elif [ "$AGE" -gt 20 ] && [ "$AGE" -lt 30 ]; then
		echo "You age is in between 20 and 30" 
	elif [ "$AGE" -gt 30 ] && [ "$AGE" -lt 40 ];then 
		echo "You age is in between 30 & 40 "
	elif [ "$AGE" -gt 40 ] && [ "$AGE" -lt 50 ];then 
		echo "You age is in between 40 to 50 "
	
fi

