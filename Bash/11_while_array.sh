#!/bin/bash
arr=(1 2 3 4 5 a b d e f g HIHJK LMNOP X251DEA)
i=0
while (( $i < ${#arr[@]} ));do
	echo "${arr[$i]}"
	((i++))
done
