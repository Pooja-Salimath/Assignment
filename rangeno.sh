#!/bin/bash/ -x

for n in $(seq 1 100)
do
	num=$n
	rev=0

	while [ $num != 0 ]
	do
		rem=`expr $num % 10`
		rev=`expr $rev \* 10 + $rem`
		num=`expr $num / 10`
	done

	if [ $rev == $n ]
	then
		echo "$n"
	else
		((n++))
	fi
done
