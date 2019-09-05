#!/bin/bash

if [[ $1 -eq 1 ]]; then
	echo "1 was passed in the first parameter"
elif [[ $1 -gt 2 ]]; then
	echo "2 was not passed in the first parameter"
else
	echo "the first paramater was not 1 and is not more than 2"
fi



if grep "foo" bar.txt; then
	echo "foo was found"
else
	echo "foo was not found"
fi




if (( $1 + 5 > 91 )); then
	echo "$1 is greater than 86"
else
	echo "$1 is not greater than 86"
fi

