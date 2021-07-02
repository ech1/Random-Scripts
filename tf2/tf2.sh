#!/bin/sh


echo '[+] TF2 script'
echo '[+] 1) tr_walkway_rc2             (RED)'
echo '[+] 2) airborne   (BLU)'
echo '[+] 2) groundstand   (BLU)'
read choice

case $choice in
        1)
                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +sv_allow_point_servercommand always -novid +map workshop/606778917 -noborder -console +viewmodel_fov 130 >/dev/null 2>/dev/null &
                echo 'bot_kick all ;tf_bot_force_class soldier ; tf_bot_add 24 blue soldier expert ;tf_weapon_criticals 0; buddha'
                ;;
        2)
                /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +map airborne -noborder -console -novid +viewmodel_fov 130 >/dev/null 2>/dev/null &
                echo 'mp_teams_unbalance_limit 30 ; mp_disable_respawn_times 1 ; tf_bot_add 3 soldier red expert ; tf_bot_force_class soldier'
                
                ;;
        3)
               /usr/bin/steam -silent -no-browser -offline -applaunch 440 -windowed -w 2560 -h 1440 +map airborne -noborder -console -novid +viewmodel_fov 130 >/dev/null 2>/dev/null &
               echo 'mp_teams_unbalance_limit 30 ; mp_disable_respawn_times 1 ; tf_bot_add 3 soldier red expert ; tf_bot_force_class soldier ; sv_cheats 1 ; buddha'
        ;;
        *)
                echo 'ERR0R'
                break
                ;;
esac


