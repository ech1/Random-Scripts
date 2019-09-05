#!/bin/bash

for arg; do
	echo arg=$arg
done

for arg in "$@"; do
	echo arg=$arg
done

for i; do echo lol; done
