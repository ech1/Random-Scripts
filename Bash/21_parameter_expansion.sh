#!/bin/bash

v="hello"
echo "${v^}" # Hello
echo "{v^^}" # HELLO

v="BYE"
echo "{v,}"   # bYE
echo "${v,,}" # bye

v="Hello World"
echo "${v~~}" # hELLO wORLD
echo "${v~}"  # hello World


var='1234564879743513465498745133213546846453216847'
echo "the length of var is : ${#var}"

set -- 12 34 56 78 90 ab cd EF GH
echo "the length of the set is ${#@}"
echo "$#"
