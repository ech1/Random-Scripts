#!/bin/bash

greet ()
{
	echo "hello world"
	echo "ta maman"
}

bash -c 'greet'

echo "export f greet maggle"
export -f greet
bash -c 'greet'


getfunc(){
	declare -f "$@"
}

function func(){
	echo "i am a sample function"
}

funcd="$(getfunc func)"
getfunc func # or echo "$funcd"




foo(){
	while [[ "$#" -gt 0 ]]
	do
		case $1 in
			-f|--follow)
				local FOLLOW="following"
				;;
			-t|--tail)
				local TAIL="tail=$2"
				;;
		esac
		shift
	done
	echo "FOLLOW : $FOLLOW"
	echo "TAIL: $TAIL"
}

foo -f
foo -t 10
foo -f --tail 10
foo --follow --tail 10
