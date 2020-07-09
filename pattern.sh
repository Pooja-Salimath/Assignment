#!/bin/bash -x

echo "Enter the First Name:"
read fname

pa="^[[:upper:]]+([a-z]{3,})"
if [[ $fname =~ $pa ]]
then
  echo "valid"
else
  echo "Not valid"
fi
