
#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
        a[i]=$((100+RANDOM%256))

done
echo "${a[@]}"

largest=${a[0]}
secondGreatest='unset'

smallest=${a[0]}
smaller=0

for((i=1; i < ${#a[@]}; i++))
do
  if [[ ${a[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${a[i]}
    elif (( ${a[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${a[i]} > $secondGreatest ]]; }
    then
    secondGreatest=${a[i]}
  fi
  if [[ ${a[i]} < $smallest ]]
  then
        smaller=$smallest
        smallest=${a[i]}
  elif [[ ${a[i]} < $smaller && ${a[i]} > $smallest ]]
  then
        smaller=${a[i]}
  fi
done
echo "Second Largest: $secondGreatest"
echo "Second Smallest: $smaller"
