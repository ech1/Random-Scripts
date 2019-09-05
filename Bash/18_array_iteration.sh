#!/bin/bash

a=(1 2 3 4)

for y in "${a[@]}"; do
	echo "$y"
done

echo
for ((idx=0; idx <${#a[@]}; ++idx)); do
	echo "${a[$idx]}"
done


echo
a=($(tr ',' ' ' <<< "atamere,b,c,d"))
for y in "${a[@]}"; do
	echo "$y"
done

echo the length of the array is "${#a[@]}"
echo the length of the FIRST ELEMENT of array is "${#a[0]}"

