#!/bin/bash

fun() {
	local var="Sample Value to be returned"
	echo "$var"
}

echo "$(fun)"

is_alive(){
	ping -c1 "$1" &> /dev/null
}

if is_alive $1; then
	ssh $1
fi
while ! is_alive $1; do
	echo $1 is not alive !
	sleep 5
done

