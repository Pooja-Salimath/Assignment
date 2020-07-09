#!/bin/bash -x

echo "Enter the Last Name:"
read lname

pa="^[[:upper:]]+([a-z]{3,})"

if [[ $lname =~ $pa ]]
then
	echo "valid"
else
	echo "Not valid"
fi



