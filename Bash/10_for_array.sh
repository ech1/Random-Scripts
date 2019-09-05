#!/bin/bash

arr=(a b c d e f)
for i in "${arr[@]}";do
	echo "$i"
done

echo
for ((i=0;i<${#arr[@]};i++));do
	echo "${arr[$i]}"
done




echo
for ((i=0;i<${#arr[@]};i++));do
	read ${arr[$i]}
done

echo
for ((i=0;i<${#arr[@]};i++));do
	echo "${arr[$i]}"
done



