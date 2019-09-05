#!/bin/bash


if [[ "$string1" == "$string2" ]]; then
	echo "\$string1 and \$string2 are identical"
fi
if [[ "$string1" != "$string2" ]]; then
	echo "\$string1 not equal to  \$string2"
fi

echo "the string $string matches the pattern $pattern"
