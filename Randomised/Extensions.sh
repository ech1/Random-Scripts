#!/bin/bash

echo "[+]		Enter the extension please.		[+]"
read EXT
echo "[+]			$EXT				[+]"

while :
do
	locate .$EXT > /var/tmp/$EXT.txt      			#locates all the paths leading to that extension

	shuf -n 1 /var/tmp/$EXT.txt > /var/tmp/shuf$EXT.txt	#picks a random path and puts it in shuf$EXT.txt
	var=$(cat /var/tmp/shuf$EXT.txt)			#var becomes that path

	#var = $(shuf -n 1 $EXT.txt)
	echo "[+]	$(echo $var)	[+]" 			# prints out what you're about to nano into
	nano $var						# NANO TIME
	rm -rf /var/tmp/shuf$EXT.txt				# once you close nano of that file it cleans up
	rm -rf /var/tmp/$EXT.txt				# cleans up ...
done

#Basically it will look through your computer for any script that ends with the extension you choose
# html, js, css, cpp, js, py, sql, etc
# it will open a random script in nano that has the extension you chose
# and will keep on opening random scripts endlessly
# I use that to learn the syntax of a chosen language, copying the scripts one after the other

# maybe you'll find some use to it lel
# have fun
