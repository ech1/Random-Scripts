#!/bin/sh


echo '[+] TF2 script'
echo '[+] 1) tr_walkway_rc2             (RED)'
echo '[+] 2) jump_mireal        (BLU)'
echo '[+] 3) tr_rocket_shooting2'
read choice

case $choice in
        1)
                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +sv_allow_point_servercommand always -novid +map workshop/606778917 -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &
                echo 'bot_kick all ;tf_bot_force_class soldier ; tf_bot_add 24 blue soldier expert ;tf_weapon_criticals 0; buddha'
                ;;
        2)
                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +map jump_mireal -noborder -console -novid +viewmodel_fov 130 >/dev/null 2>/dev/null &
                ;;
        3)
                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +map tr_rocket_shooting2 -noborder -console -novid +viewmodel_fov 130 >/dev/null 2>/dev/null &
                echo 'bot_kick all; tf_bot_force_class soldier; tf_bot_add 9 red soldier expert ; buddha'
                #/usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +map tr_rocket_shooting2 -noborder -console -novid +viewmodel_fov 130 +bot_kick all tf_bot_force_class soldier tf_bot_add 3 red soldier expert >/dev/null 2>/dev/null &
                ;;
        *)
                echo 'ERR0R'
                break
                ;;
esac

#temple map
#] mp_teams_unbalance_limit 32
#] mp_disable_respawn_times 1
#] tf_bot_add 30 soldier blue

#
#
#
#

