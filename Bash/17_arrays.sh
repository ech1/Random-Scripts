#!/bin/bash

array=(1 2 3 4)

array2=('first' 'second' 'third')

array3=([3]='fourth element' [4]='fifth element')

echo ${array[0]}
echo ${array[1]}


declare -A array4
array4[first]='First Element'
array4[second]='Second Element'


array5=(`seq 1 10`)
array6=("$@") #these are the input arguments !!! 
	      #an array of input arguments <3

while read -r; do
	#array+=("$REPLY")		#using append
	array[$i]="$REPLY"		#using indexes
	let i++
done < <(seq 1 10)

echo ${array[@]}


#now let's access the array elements
echo element at index 0
echo "${array[0]}"

echo last element using substring exp syntax
echo "${array[@]: -1 }"

echo print last element without expansion
echo "${array[-1]}"

echo print all elements each quoted separately
echo "${array[@]}"

echo print all elements as a single quoted string
echo "${array[*]}"

echo print all elements from index 1 each quoted separately
echo "${array[@]:1}"

echo print 3 elements from index 1
echo "${array[@]:1:3}"

array[10]="eleventh element"

array+=('fourth element' 'fifth element' 'X1213EAATF454921')
echo "${array[*]}" # adds new elements at the end of array

array=("${array[@]}" "fourth element" "fifth element")
echo "${array[*]}" # new elements at the end of the array

array=("NEW ELEMENT" "${array[@]}")
echo "${array[*]}" # new element at the beginning of array


i=6

array=("${array[@]:0:$i}" 'NEW HAHAHAH' "${array[@]:$i}")
echo
echo "${array[*]}" #new element at the index n°6
echo
echo "${!array[@]}" # prints 0 1 2 3 4 5 6 7 8 9 10 (indexes)

unset -v 'array[6]'   # removes the sixth index

echo
echo "${array[@]}"
echo
echo "${!array[@]}"


echo LETS MERGE THOSE ARRAYS HAHAHHAHAHAH

array69=("${array[@]}" "${array2[@]}" "${array3[@]}")
echo "${array69[@]}"
