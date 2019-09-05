#!/bin/bash

a='I am a string'
echo "first match ${a/a/A}"
echo "all matches ${a//a/A}"
echo "match at beginning ${a/#I/y}"
echo "match at the end ${a/%g/N}"
echo "replace with nothing ${a/g/}"
echo "add prefix to array"
Array=(hello world)
echo "${Array[@]/#/Rlololololol}"

echo
echo SUBSTRINGS NOW
echo


var='0123456789abcdef'

echo ${var}
printf 'define a zero based offset :: %s\n' 		"${var:3}"
printf 'offset and length of substring :: %s\n' 	"${var:3:4}"
printf 'negative length counts from the end %s\n' 	"${var:3:-5}"
printf 'same as above but short %s\n'			"${var: -6}"
printf 'parentheses alternative	%s\n'			"${var:(-6)}"
printf 'negative offset & length %s\n'			"${var: -6:-5}"

echo
echo now with a set
set -- fedcba9876543210
echo

printf 'normal value %s\n'				"${@}"
printf 'define offset %s\n'				"${1:5}"
myarr[0]='0123456789abcefdfdfd'
printf 'define offset and length from array %s\n' 	"${myarr[0]:7:3}"

echo
set -- 1 2 3 4 5 9 8 7 6 0 a b c d g e f
echo

printf 'analogous expansions on a set %s\n' 		"${@:10}"
printf 'same but offset and length %s\n'		"${@:10:3}"
printf 'negative offset (end) %s\n'			"${@: -10:2}"

echo
echo let\'s delete patternsxddxdxd

aString='I am a string'
echo "shortest match : ${aString#*a}"
echo "longest match  : ${a##*a}"


