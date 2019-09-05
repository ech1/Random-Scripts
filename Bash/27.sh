#!/bin/bash

[[ $s = 'something' ]] && echo 'matched' || echo "match"
[[ $s == 'something' ]] && echo 'matched' || echo "match"
[[ $s != 'something' ]] && echo "didn't matched" || echo "match"
[[ $s -eq 10 ]] && echo 'equal' || echo "not equal"
(( $s == 10 )) && echo 'equal' || echo 'not equal'


command && echo 'exited with 0' || echo 'non 0 exit'
cmd && cmd1 && echo 'previous cmds were successful' || echo 'one of them failed'
cmd || cmd1


if [[ $file1 -ef $file2 ]]; then
  echo "$file1 and $file2 have identical contents"
else
  echo "$file1 and $file2 differ"
fi


if diff -u "$file1" "$file2"; then
  echo "$file1 and $file2 have same content"
else
  echo "they differ"
fi



if [[ -r $filename ]]; then
  echo "$filename is a readable file"
fi

if [[ -w $filename ]]; then
  echo "$filename is a writeable file"
fi

if [[ -x $filename ]]; then
  echo "$filename is an executable file"
fi
