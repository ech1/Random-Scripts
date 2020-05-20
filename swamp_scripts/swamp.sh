#!/bin/bash

gpid=$(pidof gmod)
echo pid of gmod: $gpid
while true
do

while [ "$(pidof gmod)" -ge 1 ] 2>/dev/null
do
        echo "---------------------------------gmod running!-----------------------------------"
        echo "$(pidof gmod) waiting 30 seconds"
        sleep 30

        ramtotal=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
        echo "-total ram: $ramtotal"

        udp=$(sudo timeout 3 tcpdump -u port 27015 2>/dev/null | wc -l)
        echo "-number of udp packets: $udp"

        ###########################UDP
        if [ "$udp" -lt 30 ] 2>/dev/null
        then
                echo "---NO not enough udps!"
                kill -9 $(pidof steam)
        else
                echo "---YES enough udps!"
        fi

        ##########################RAM
        ramusage=$(echo $ramtotal'>'75 | bc -l)
        if [ "$ramusage" -eq 1 ] 2>/dev/null
        then
                echo '---NO TOO MUCH RAM USED !'
                kill -9 $(pidof steam)
        else
                echo '---YES ram usage below 75 !'
        fi
done
echo '-------------------------- gmod not running! 3 secs -----------------------------'
sleep 3
exec /usr/bin/steam -silent -no-browser -applaunch 4000 -windowed -safe -noaddons -nochromium -console +connect cinema.swampservers.net:2701
done
