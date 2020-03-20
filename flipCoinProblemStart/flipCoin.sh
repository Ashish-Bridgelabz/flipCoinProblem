#!/bin/bash -x
#DISPLAY THE WELCOME TO FLIPCOIN STATEMENT
echo "Welcome to flipcoin simuator"
#DECLARE VARIABLE
count1=0
count2=0
count3=0
count4=0
read -p "enter a value:" user
declare -A FlipCoin
FlipCoin=([H]=$count1 [T]=$count) 
#USING LOOP FOR FLIP COIN MULTIPLE TIME
for((iter=0;iter<$user;iter++))
do
	checkFlipCoin=$((RANDOM%2))
	case $checkFlipCoin in
		0)
			FlipCoin[H]=$((${FlipCoin[H]}+1))
			;;
		1)
			FlipCoin[T]=$((${FlipCoin[T]}+1))
			;;
	esac
done
for key in "${!FlipCoin[@]}"
do
	echo "${key}:${FlipCoin[$key]}"
done 
PercentageofHead=`echo "scale=2 ;(${FlipCoin[H]}*100)/$user" | bc -l`
echo "Percentage of Head :" $PercentageofHead
PercentageofTail=`echo "scale=2 ;(${FlipCoin[T]}*100)/$user" | bc -l`
echo "Percentage of Tail :" $PercentageofTail 
#STORE THE DOUBLET OF FLIPCOIN COMBINATION
read -p "Enter the value" user 
FlipCoin=([HH]=$count1 [HT]=$count2 [TT]=$count3 [TH]=$count4)
for((iter=0;iter<$user;iter++))
do
	checkFlipCoin=$((RANDOM%4))

	case $checkFlipCoin in	
		0)
			FlipCoin[HH]=$((${FlipCoin[HH]}+1))
			;;
		1)
			FlipCoin[TT]=$((${FlipCoin[TT]}+1))
			;;
		2)
			FlipCoin[TH]=$((${FlipCoin[TH]}+1))
			;;
		3)
			FlipCoin[HT]=$((${FlipCoin[HT]}+1))
			;;
	esac
done
for key in "${!FlipCoin[@]}"
do
   echo "${key}:${FlipCoin[$key]}"
done 
#PRINTING PERSENTAGE OF DOUBLET FLIPING COIN
HHPercentage=`echo "scale=2 ;(${FlipCoin[HH]}*100)/($user)" | bc -l`
echo "Percentage of HH :" $HHPercentage
TTPercentage=`echo "scale=2 ;(${FlipCoin[TT]}*100)/($user)" | bc -l`
echo "Percentage of TT:" $TTPercentage
THPercentage=`echo "scale=2 ;(${FlipCoin[TH]}*100)/($user)" | bc -l`
echo "Percentage of TH:" $THPercentage
HTPercentage=`echo "scale=2 ;(${FlipCoin[HT]}*100)/($user)" | bc -l`
echo "Percentage of HT:" $HTPercentage
