#!/bin/bash
echo which file ?

read filename

if [[ -e $filename ]]; then
	echo "$filename exists"
fi

if [[ -f $filename ]]; then
        echo "$filename is a regular file"
fi

if [[ -d $filename ]]; then
        echo "$filename is is a directory"
fi

if [[ -p $filename ]]; then
        echo "$filename is is a named pipe"
fi

if [[ -b $filename ]]; then
        echo "$filename is a block device"
fi

if [[ -c $filename ]]; then
        echo "$filename is a character device"
fi

if [[ -L $filename ]]; then
        echo "$filename is a symbolic link (to any file type)"
fi

if [[ -L $filename || -e $filename ]]; then
        echo "$filename is exists (but can be a broken symbolic link)"
fi

if [[ -L $filename && ! -e $filename ]]; then
        echo "$filename is a broken symbolic link"
fi

