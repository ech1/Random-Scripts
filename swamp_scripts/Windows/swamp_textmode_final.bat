@ECHO OFF



Echo "Swamp Cinema Automation Script"
Set COUNTER=0
Set COUNTER2=0

GOTO :A

:A
set /A COUNTER=COUNTER+1
echo time is %COUNTER% limit is 720
IF %COUNTER% gtr 720 (GOTO :killer)
TASKLIST | FINDSTR /I "gmod.exe"
IF ERRORLEVEL 1 (GOTO :StartSwamp) ELSE (ECHO Swamp Cinema is currently running)
timeout 60
GOTO :A

:StartSwamp
ECHO "Swamp Cinema closed, Restarting..."
REM "C:\Program Files (x86)\Steam\Steam.exe" -applaunch 4000 +connect cinema.swampservers.net:27015 -noaddons -nosrgb -nochromium -low -heapsize 1048576 -forcenovsync -hushasserts -noipx -nops2b -textmode -novid -nocdaudio -hijack -flushlog +r_hunkalloclightmaps 0 -mat_showlowresimage -processheap
"C:\Program Files (x86)\Steam\Steam.exe" -applaunch 4000 +connect cinema.swampservers.net:27015 -textmode -low -noaddons -nochromium -novid -nosound
timeout 60
set /A COUNTER2=COUNTER2+1
IF %COUNTER2% gtr 10 (GOTO :KillSteam)
GOTO :A

:KillSteam
taskkill /IM steam.exe /F
Set COUNTER=0
Set COUNTER2=0
GOTO :A

:killer
taskkill /IM gmod.exe /F
Set COUNTER=0
Set COUNTER2=0
GOTO :A
