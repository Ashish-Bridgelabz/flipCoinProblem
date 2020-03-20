#!/bin/bash -x
#DISPLAY THE WELCOME TO FLIPCOIN STATEMENT
echo "Welcome to flipcoin simuator"
#GENERATING RANDOM VALUE
result=$((RANDOM%2))
isHead=1
#CONDITION IS TRUE THEN HEAD OTHERWISE TAIL
if(( $isHead == $result))
then
	echo "Head"
else
	echo "Tail"
fi
