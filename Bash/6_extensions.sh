#!/bin/bash

echo What is the extension ?
read extension
echo $extension

while :
do
	locate .$extension > $extension.txt

	#cat $extension.txt
	shuf -n 1 $extension.txt > shuf$extension.txt
	var=$(cat shuf$extension.txt)

	cat shuf$extension.txt
	nano $var
	rm -rf shuf$extension.txt
	rm -rf $extension.txt
	#nano $var
done
