@ECHO OFF



Echo "Swamp Cinema Automation Script"
GOTO :A

:A
TASKLIST | FINDSTR /I "steam.exe"
IF ERRORLEVEL 1 (GOTO :StartSteam) ELSE (ECHO Steam is currently running)
timeout 60
GOTO :B

:B
TASKLIST | FINDSTR /I "gmod.exe"
IF ERRORLEVEL 1 (GOTO :StartSwamp) ELSE (ECHO Swamp Cinema is currently running)
timeout 60
GOTO :B

:StartSwamp
ECHO "Swamp Cinema closed, Restarting..."
"C:\Program Files (x86)\Steam\Steam.exe" -applaunch 4000 +connect 208.103.169.51:27015 -noaddons -nosrgb -nochromium -low -heapsize 1048576 -allowdebug -forcenovsync -hushasserts -nodns -noipx -nops2b -windowed -noborder -w 1920 -h 1080 -novid  -usetcp -nocdaudio -hijack -flushlog +cl_cmdrate 100 +myinfo_bytes 2000 +cl_updaterate 101 +rate 30000 +r_hunkalloclightmaps 0 -mat_showlowresimage -processheap
timeout 60
GOTO :B

:StartSteam
ECHO "Steam is closed, Restarting..."
start Steam
timeout 60
GOTO :A
