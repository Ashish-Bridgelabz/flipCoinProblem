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
#CONSTANT VARIABLE
count_H=0
count_T=0
read -p "enter a value:" user
declare -A FlipCoin	
#USING LOOP TO FLIP COIN MULTIPLE TIME
for((iter=0;iter<$user;iter++))
do
	#CHECKRANDOM HEAD OR TAIL
	checkFlipCoin=$((RANDOM%2))
	case $checkFlipCoin in
		0)
			FlipCoin[$iter]="H"
			((Count_H++))
			;;
		1)
			FlipCoin[$iter]="T"
			((Count_T++))
			;;
	esac
done
#PRINTING KEY AND VALUE OF COIN IN A DICTIONARY
echo "generate singlet head and tail" ${FlipCoin[@]}
#PRINTING PERSENTAGE OF FLIPING COIN 
PercentageofHead=`echo "scale=2 ; ($Count_H*100)/$user" | bc -l`
echo "Percentage of Head :" $PercentageofHead
PercentageofTail=`echo "scale=2 ; ($Count_T*100)/$user" | bc -l`
echo "Percentage of Tail :" $PercentageofTail 
