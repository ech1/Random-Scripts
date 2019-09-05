#!/bin/bash
						      #need something to LOCATE all extensions (regex to find .html .css .rb .something and end of the line) 
						      #and use them to prompt you to choose one of the found extensions cause why not AND BLACKLIST SHIT EXTENSIONS

shuf -n 1 _ext.txt > shuf_ext.txt		      #put your extensions in ext.txt
var2=$(cat shuf_ext.txt)

while :
do
	shuf -n 1 _ext.txt > shuf_ext.txt	      #picks a random extension
	var2=$(cat shuf_ext.txt)		      #var2 becomes a random extension
	echo $var2

	locate .$var2 > $extension.txt		      #locates all the paths leading to that extension

	#cat $extension.txt
	shuf -n 1 $extension.txt > shuf$extension.txt #picks a random path and puts it in shufextension.txt
	var=$(cat shuf$extension.txt)		      #var becomes that path

	cat shuf$extension.txt
	nano $var
	rm -rf shuf$extension.txt
	rm -rf $extension.txt
	#nano $var
done
