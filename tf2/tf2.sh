#!/bin/sh


echo '[+] TF2 script'
echo '[+] 1) tr_walkway_rc2 	(RED)'
echo '[+] 2) jump_mireal 	(BLU)'
echo '[+] 3) mge (onlinewars)'
echo '[+] 4) mge (panda)'
echo '[+] 5) trade_minecraft'
read choice

case $choice in
	1)
		/usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +sv_allow_point_servercommand always -novid +map workshop/606778917 -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &
		;;
	2)
		/usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +map jump_mireal -noborder -console -novid +viewmodel_fov 130 >/dev/null 2>/dev/null &
		;;
	3)
		/usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +connect 46.174.48.183:27015 -novid -noborder -console +viewmodel_fov 130 +hud_saytext_time 0 +hud_deathnotice_time 1 +bind u say_team +bind y  >/dev/null 2>/dev/null &
		;;
	4)
		echo
		 /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +connect 176.57.142.80:27055 -novid -noborder -console +viewmodel_fov 130 +hud_saytext_time 0 +hud_deathnotice_time 1 +bind u say_team +bind y say >/dev/null 2>/dev/null &
		;;
	5)
		echo
		/usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +connect 5.135.189.29:27015  -novid -noborder -console +viewmodel_fov 130 +hud_saytext_time 0 +hud_deathnotice_time 1 +unbind u +unbind y >/dev/null 2>/dev/null &
		;;
	*)
		echo 'ERR0R'
		break
		;;
esac


#/usr/bin/steam -silent -no-browser -applaunch 440 -windowed -w 2560 -h 1440 +sv_allow_point_servercommand always +map workshop/606778917 -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &

#/usr/bin/steam -silent -no-browser -applaunch 440 -windowed -w 2560 -h 1440 +sv_allow_point_servercommand always +map jump_mireal -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &

#/usr/bin/steam -silent -no-browser -applaunch 440 -windowed -w 2560 -h 1440 +connect -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &
