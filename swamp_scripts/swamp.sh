#!/bin/bash


echo "+----------------------------------------+"
echo "|----------Swamp Automation Script-------|"
echo "+----------------------------------------+"
ps auxw | grep steam | grep -v grep > /dev/null

if [ $? != 0 ]
then
        echo "|----------Starting Steam...-------------|"
        echo "+----------------------------------------+"
        sudo /bin/sh -e /usr/games/steam > /dev/null & sleep 10
else 
        echo "|----------Steam already started---------|"
        echo "+----------------------------------------+"
fi

chmod +x GModCEFCodecFix-Linux && ./GModCEFCodecFix-Linux & sleep 10

while true
do
printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
echo "+----------------------------------------+"
echo "|---------Swamp Automation Script--------|"
echo "+----------------------------------------+"
#ps auxw | grep gmod | grep 208.103.169.72
ps auxw | grep gmod | grep 208.103.169.51 | grep -v grep > /dev/null

if [ $? != 0 ]
then
        printf "\n\n\n\n\n"
        echo "+----------------------------------------+"
        echo "|-----Connection lost, restarting...-----|"
        echo "+----------------------------------------+"
        /bin/sh -e /usr/games/steam -applaunch 4000 -dev -console +connect 208.103.169.51:27015 -windowed -w 1200 -h 600 & sleep 10
else
        printf "\n\n\n\n\n"
        echo    "+----------------------------------------+"
        echo    "|---------Swamp Cinema is running--------|"
        echo    "+----------------------------------------+"
        printf "\n\n\n\n\n"
        printf "+-------------------------------------------------------------------------------------------------+\n"
        sleep 1 ; echo "cpulimit --path=/home/ech0/.steam/steam/steamapps/common/GarrysMod/bin/linux64/gmod --limit=10"
        printf "+-------------------------------------------------------------------------------------------------+\n"
fi
sleep 10;
done

