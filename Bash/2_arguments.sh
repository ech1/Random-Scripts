#!/bin/bash
deploy=false
uglify=false
echo lol check out that syntax

while(( $# > 1 )); do case $1 in
    --deploy) deploy="$2" ;;
    --uglify) uglify="$2" ;;
    *) break;
  esac; shift 2
done

$deploy && echo "will deploy... deploy = $deploy"
$uglify && echo "will uglify... uglify = $uglify"

ls -lt | head
cd /home/ech0/Pictures/
printf "%s\n" *.{gif,png}

files=( * )

for file in "${files[@]}"; do
  echo "$file"
done
