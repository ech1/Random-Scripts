#!/bin/bash

i=5
until [[ i -eq 10 ]]; do
	echo "i=$i"
	i=$((i+1))
done

case "$BASH_VERSION" in
	[34]*)
		echo {1..4}
		;;
	*)
		seq -s" " 1 4
esac
