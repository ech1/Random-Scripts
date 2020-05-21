#!/bin/bash
# RUN IT LIKE THAT :
# wget https://raw.githubusercontent.com/ech1/Random-Scripts/master/swamp_scripts/swamp.sh 
# chmod +x swamp.sh
# ./swamp.sh

gpid=$(pidof gmod)
echo pid of gmod: $gpid
while true
do
whoami
sudo whoami
whoami

echo '0) Idle (minimalistic)'
echo '1) Idle (semi-minimal)'
echo '2) active (borderless)'
echo '3) active (full)'
read choice

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
        if [ "$udp" -lt 10 ] 2>/dev/null
        then
                echo "---NO not enough udps!"
                kill -9 $(pidof steam)
        else
                echo "---YES enough udps!"
        fi

        ##########################RAM

        ramtotal=$(ps -p $(pidof gmod) -o vsize | grep -v VSZ)
        ramusage=$(echo $ramtotal'>'8000000 | bc -l)
        if [ "$ramusage" -eq 1 ] 2>/dev/null
        then
                echo '---NO TOO MUCH RAM USED !'
                kill -9 $(pidof steam)
        else
                echo "---YES ram usage is $ramtotal !"
        fi
done
echo '-------------------------- gmod not running! 9 secs -----------------------------'
sleep 9

case "$choice" in
"0")
        exec /usr/bin/steam -silent -no-browser -applaunch 4000 +connect cinema.swampservers.net:27015 -windowed -safe -noaddons -nochromium -console >/dev/null &
        ;;
"1")
        exec /usr/bin/steam -silent -no-browser -applaunch 4000 +connect cinema.swampservers.net:27015 -windowed -w 1600 -h 900 -noaddons -nochromium -console >/dev/null &
        ;;
"2")
        exec /usr/bin/steam -silent -applaunch 4000 +connect cinema.swampservers.net:27015 -windowed -w 1600 -h 900  -console >/dev/null &
        ;;
"3")
        exec /usr/bin/steam -silent -applaunch 4000 +connect cinema.swampservers.net:27015 -full -console >/dev/null &
        ;;
*)
        exit 1
        ;;
esac

#exec /usr/bin/steam -silent -no-browser -applaunch 4000 -windowed -safe -noaddons -nochromium -console +connect cinema.swampservers.net:27015 >/dev/null &
#exec /usr/bin/steam -silent -applaunch 4000 -windowed -w 1600 -h 900 -noborder -console +connect cinema.swampservers.net:27015 >/dev/null &
done
