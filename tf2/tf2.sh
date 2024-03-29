#!/bin/sh


echo '[+] TF2 script'
echo '[+] 0) regular tf2'
echo '[+] 1) tr_walkway_rc2             (RED)'
echo '[+] 2) airborne 2 (BLU)'
echo '[+] 3) airborne   (BLU)'
read choice

case $choice in
                0)
                                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &
                                ;;
        1)
                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +sv_allow_point_servercommand always -novid +map workshop/606778917 -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &
                echo 'bot_kick all ;tf_bot_force_class soldier ; tf_bot_add 24 blue soldier expert ;tf_weapon_criticals 0; buddha'
                ;;
        2)
                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +connect 10.0.0.180 -noborder -console -novid +viewmodel_fov 130 >/dev/null 2>/dev/null &
               #echo 'mp_teams_unbalance_limit 30 ; mp_disable_respawn_times 1 ; tf_bot_add 3 soldier red expert ; tf_bot_force_class soldier ; sv_cheats 1 ; buddha'
                                echo 'rcon_password void ; rcon sv_cheats 1; rcon tf_bot_add 3 soldier red expert; rcon buddha'

                ;;
        3)
               /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +map airborne -noborder -console -novid +viewmodel_fov 130 >/dev/null 2>/dev/null &
                echo 'mp_teams_unbalance_limit 30 ; mp_disable_respawn_times 1 ; tf_bot_add 3 soldier red expert ; tf_bot_force_class soldier'
        ;;
        *)
                echo 'ERR0R'
                break
                ;;
esac
