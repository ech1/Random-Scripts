#!/bin/bash
# RUN IT LIKE THAT :
# wget https://raw.githubusercontent.com/ech1/Random-Scripts/master/swamp_scripts/swamp.sh -O - | bash

# Version 0.4.2
# YOU NEED TO INSTALL : cpulimit tcpdump

gpid=$(pidof gmod)
gpid=$(pidof steam)
echo pid of gmod: $gpid

echo '0) Idle (minimalistic)'
#echo '1) Idle (online)'
#echo '2) active (borderless)'
#echo '3) active (full)'
#read choice
choice="0"

while true
do

while [ "$(pidof gmod)" -ge 1 ] 2>/dev/null
do
        echo "--------------------- Gmod Running ! -----------------------"
        echo "$(pidof gmod) waiting 30 seconds"
        sleep 30

        ramtotal=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
        echo "-total ram: $ramtotal"

        sudo timeout 0.1 sudo tcpdump -i enp1s0
        udp=$(sudo timeout 30 tcpdump -i enp1s0 host 208.103.169.51 2>/dev/null | wc -l)
        echo "-number of udp packets: $udp"

        ###########################UDP
        if [ "$udp" -lt 10 ] 2>/dev/null
        then
                echo "---NO not enough udps!"
                kill -9 $(pidof gmod)
                kill -9 $(pidof steam)
                kill -9 $(pidof cpulimit)
        else
                echo "---YES enough udps!"
        fi

        if [ "$udp" -lt 10 ] 2>/dev/null
        then
                echo '---Killing Gmod !'
        else

        ##########################RAM

        ramtotal=$(ps -p $(pidof gmod) -o vsize | grep -v VSZ)
        ramusage=$(echo $ramtotal'>'8000000 | bc -l)

        if [ "$ramusage" -eq 1 ] 2>/dev/null
        then
                echo '---NO TOO MUCH RAM USED !'
                kill -9 $(pidof gmod)
                kill -9 $(pidof steam)
                kill -9 $(pidof cpulimit)
        else
                echo "---YES ram usage is $ramtotal !"
                exec /usr/bin/timeout 3600 cpulimit -p $(pidof gmod) -l 5
        fi
        fi
done

wget -q --tries=1 --timeout=10 --spider https://swampservers.net
if [[ $? -eq 0 ]]; then
        echo '--------------- Internet Connection ON ----------------------'
        echo '--------------- gmod not running! 15 secs -------------------'

        case "$choice" in
        "0")
                exec /usr/bin/steam -tcp -offline -silent -no-browser -applaunch 4000 +connect cinema.swampservers.net:27015 -safe -noaddons -nochromium -console >/dev/null 2>/dev/null &
                ;;
        "1")
                exec /usr/bin/steam -silent -no-browser -applaunch 4000 +connect cinema.swampservers.net:27015 -windowed -safe -noaddons -nochromium -console >/dev/null 2>/dev/null &
                ;;
        "2")
                exec /usr/bin/steam -silent -applaunch 4000 +connect cinema.swampservers.net:27015 -windowed -w 1600 -h 900 -noborder -console >/dev/null 2>/dev/null &
                ;;
        "3")
                exec /usr/bin/steam -silent -applaunch 4000 +connect cinema.swampservers.net:27015 -windowed -noborder -w 1920 -h 1080 -console >/dev/null 2>/dev/null &
                ;;
        *)
                exit 1
                ;;
        esac
else
        echo '--------------- Internet Connection OFF ---------------------'
fi
sleep 15
done
