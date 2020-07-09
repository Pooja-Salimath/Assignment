#!/bin/bash -x

declare -A randome

max_times=0
min_times=0

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
	for i in "${randome[@]}"
		do
		((randome[$i]++))
		h="${randome[$i]}"

		if [[ $h > $max_times ]];
		then
			max=$i
			max_times=$h
		fi
done

echo "Max is: $max"
