#!/usr/bin/env bash
whom_variable="world"
printf "Hello, %s \n" "$whom_variable"

echo "who are you ?"
read name
echo "Hello, $name"

echo "action ?"
read action
echo "You are ${action}ing"
echo "you are \$name"
