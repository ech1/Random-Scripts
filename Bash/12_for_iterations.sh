#!/bin/bash

for i in {1..10}; do
	echo $i
done

arr=(a b c d e f)
for i in "${arr[@]}";do
	for j in "${arr[@]}";do
		echo "$i $j"
		break
	done
done
