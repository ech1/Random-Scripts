#!/bin/bash

a='I am a simple string with digits 123456789'
pat='(.*) ([0-9]+)'
[[ "$a" =~ $pat ]]

echo "${BASH_REMATCH[0]}"
echo "${BASH_REMATCH[1]}"
echo "${BASH_REMATCH[2]}"
echo "${BASH_REMATCH[3]}"

echo $SHELL
cat /etc/shells


echo "$#"
echo "$*"
echo "$HITSIZE"
