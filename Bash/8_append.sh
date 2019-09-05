#!/bin/bash

echo now we truncate
echo "first line" > /tmp/lines
echo "second line" > /tmp/lines
cat /tmp/lines

echo now we append
echo "first line" > /tmp/lines
echo "second line" >> /tmp/lines
echo "third line" >> /tmp/lines
echo "fourth fifth sixth line" >> /tmp/lines
cat /tmp/lines

echo "Hello from the other side of myPipe!" > myPipe
cat < myPipe

echo "now we sort !"
sort < /tmp/lines
cat /tmp/lines
