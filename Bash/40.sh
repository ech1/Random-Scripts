#!/bin/bash

#simple case statement
var=1
case $var in
1)
	echo "Antartica1"
	;;
2)
	echo "Brazil1"
	;;
3)
	echo "Cat1"
	;;
esac

#Fall through mecanism case statement
var=2
case $var in
1)
	echo "Antartica2"
	;&
2)
	echo "Brazil2"
	;&
3)
	echo "Cat2"
	;&
esac

# case statement with fall through (only if patterns match)
var=abc
case $var in
a*)
	echo "Antartica3"
	;;&
xyz)
	echo "Brazil3"
	;;&
*b*)
	echo "Cat3"
	;;&
esac
