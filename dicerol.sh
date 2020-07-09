#!/bin/bash -x

declare -A randome

for (( i=0; i<10; i++ ));
do
	for ((  dice=1; dice<=6; dice++ ))
	do
   	randomdice=$((RANDOM%6+1))
   	#echo$randomdice"
		randome[$dice]="$randomdice"
	done
echo "${randome[@]}"

done
echo "${randome[@]}"
