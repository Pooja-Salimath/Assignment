#!/bin/bash -x

echo "Enter an Number:"
read n
if [ $n -lt 1 ];then
echo "not allowed!"
exit 1
fi

i=2
count=0
flag=0

for ((i;i<$n;)); do

  if [ `expr $n % $i` -eq 0 ];then
      factor=$i

  for ((j=2;j<=`expr $factor / 2`; j++));do
   flag=0
   if [ `expr $factor % $j` -eq 0 ];then
   flag=1
   break
   fi
  done
  if [ $flag -eq 0 ];then
  echo "$factor"
  count=1
  fi
  fi
  i=`expr $i + 1`
  done
