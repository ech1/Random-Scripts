#!/bin/bash
echo $(( 1 + 2 ))
var1=4
var2=5
((output=$var1 * $var2))
printf "%d\n" "$output"

let num=1+2
let num="1+2"
let 'num= 1 + 2'
let num=1 num+=2

((a=$a+1))
((a = a + 1))
((a += 1))

if (( a > 1 )); then echo "a is greater than 1"; fi
result=$((a + 1))
echo "The result of a + 1 is $((a + 1))"
