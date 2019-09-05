#!/bin/bash

for ip in $(seq 1 5); do ping -c 1 192.168.0.$ip >> /dev/null && echo "Online 192.168.0.$ip"; done

