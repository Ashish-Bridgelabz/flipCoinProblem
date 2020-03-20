#!/bin/bash -x
#DISPLAY THE WELCOME TO FLIPCOIN STATEMENT
echo "Welcome to flipcoin simuator"
#DECLARE VARIABLE
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
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
#DISPLAY TRIPLET
#STORE THE DOUBLET OF FLIPCOIN COMBINATION
read -p "Enter the value" user 
FlipCoin=([HHH]=$count1 [HHT]=$count2 [HTT]=$count3 [HTH]=$count4 [TTT]=$count5 [TTH]=$count6 [THH]=$count7 [THT]=$count8)
for((iter=0;iter<$user;iter++))
do
   checkFlipCoin=$((RANDOM%8))

   case $checkFlipCoin in  
      0)
         FlipCoin[HHH]=$((${FlipCoin[HHH]}+1))
         ;;
      1)
         FlipCoin[HHT]=$((${FlipCoin[HHT]}+1))
         ;;
      2)
         FlipCoin[HTT]=$((${FlipCoin[HTT]}+1))
         ;;
      3)
         FlipCoin[HTH]=$((${FlipCoin[HTH]}+1))
         ;;
		4)
			FlipCoin[TTT]=$((${FlipCoin[TTT]}+1))
         ;;
		5)
			FlipCoin[TTH]=$((${FlipCoin[TTH]}+1))
			;;
		6)
			FlipCoin[THH]=$((${FlipCoin[THH]}+1))
			;;
		7)
			FlipCoin[THT]=$((${FlipCoin[THT]}+1))
			;;
	 esac
done
for key in "${!FlipCoin[@]}"
do
   echo "${key}:${FlipCoin[$key]}"
done 
#PRINTING PERCENTAGE OF DOUBLET FLIPING COIN
HHHPercentage=`echo "scale=2 ;(${FlipCoin[HHH]}*100)/($user)" | bc -l`
echo "Percentage of HHH:" $HHHPercentage
HHTPercentage=`echo "scale=2 ;(${FlipCoin[HHT]}*100)/($user)" | bc -l`
echo "Percentage of HHT:" $HHTPercentage
HTTPercentage=`echo "scale=2 ;(${FlipCoin[HTT]}*100)/($user)" | bc -l`
echo "Percentage of HTT:" $HTTPercentage
HTHPercentage=`echo "scale=2 ;(${FlipCoin[HTH]}*100)/($user)" | bc -l`
echo "Percentage of HTH:" $HTHPercentage
TTTPercentage=`echo "scale=2 ;(${FlipCoin[TTT]}*100)/($user)" | bc -l`
echo "Percentage of TTT:" $TTTPercentage
TTHPercentage=`echo "scale=2 ;(${FlipCoin[TTH]}*100)/($user)" | bc -l`
echo "Percentage of TTH:" $TTHPercentage
THHPercentage=`echo "scale=2 ;(${FlipCoin[THH]}*100)/($user)" | bc -l`
echo "Percentage of THH:" $THHPercentage
THTPercentage=`echo "scale=2 ;(${FlipCoin[THT]}*100)/($user)" | bc -l`
echo "Percentage of THT:" $THTPercentage



