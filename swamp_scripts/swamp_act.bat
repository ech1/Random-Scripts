@ECHO OFF



Echo "Swamp Cinema Automation Script"
GOTO :A

:A
TASKLIST | FINDSTR /I "gmod.exe"
IF ERRORLEVEL 1 (GOTO :StartSwamp) ELSE (ECHO Swamp Cinema is currently running)
timeout 60
GOTO :B

:StartSwamp
ECHO "Swamp Cinema closed, Restarting..."
"C:\Program Files (x86)\Steam\Steam.exe" -applaunch 4000 +connect cinema.swampservers.net:27015 -multirun -high -heapsize 1048576 -windowed -w 1920 -h 1080 -noborder -hijack
timeout 60
GOTO :B

:StartSteam
ECHO "Steam is closed, Restarting..."
start Steam
timeout 60
GOTO :A
