#!/bin/bash


echo "+----------------------------------------+"
echo "|----------Swamp Automation Script-------|"
echo "+----------------------------------------+"
ps auxw | grep steam | grep -v grep > /dev/null

if [ $? != 0 ]
then
        echo "|----------Starting Steam...-------------|"
        echo "+----------------------------------------+"
        sudo -u ech0 /usr/bin/steam %U > /dev/null & sleep 60
else 
        echo "|----------Steam already started---------|"
        echo "+----------------------------------------+"
        sleep 10
fi



while true
do
printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
echo "+----------------------------------------+"
echo "|---------Swamp Automation Script--------|"
echo "+----------------------------------------+"
#ps auxw | grep gmod | grep 208.103.169.72
ps auxw | grep gmod | grep 208.103.169.72 | grep -v grep > /dev/null

if [ $? != 0 ]
then
        printf "\n\n\n\n\n"
        echo "+----------------------------------------+"
        echo "|-----Connection lost, restarting...-----|"
        echo "+----------------------------------------+"
        sudo -u ech0 /usr/bin/steam %U -applaunch 4000 -dev -console +connect 208.103.169.72:27015 -windowed -w 1265 -h 716 -novid -high
else
        printf "\n\n\n\n\n"
        echo    "+----------------------------------------+"
        echo    "|---------Swamp Cinema is running--------|"
        echo    "+----------------------------------------+"
        printf "\n\n\n\n\n"
        printf "+-------------------------------------------------------------------------------------------------+\n"
        sleep 1 ; netstat -alnp | grep p | grep gmod
        printf "+-------------------------------------------------------------------------------------------------+\n"
fi
sleep 10;
done
