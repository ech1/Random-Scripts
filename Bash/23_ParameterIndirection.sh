#!/bin/bash

red="the color red"
green="the color green"

color=red

echo "${!color}"
# the color red
# is displayed

foo=10
x=foo
echo ${x}

argtester() { for (( i=1; i<="$#"; i++ )); do echo "${i}";done; }; argtester -ab -cd -ef
argtester() { for (( i=1; i<="$#"; i++ )); do echo "${!i}";done; }; argtester -ab -cd -ef

echo FILENAMES !!!!

FILENAME="/tmp/example/myfile.txt"
echo "${FILENAME%/*}"
echo "${FILENAME##*/}"
