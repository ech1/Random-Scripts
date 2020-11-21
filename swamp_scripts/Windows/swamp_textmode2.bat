@ECHO OFF

Echo "SC automation script 2"
SET COUNTER=0

GOTO :A

:A
set /A COUNTER=COUNTER+1
echo time is %COUNTER% limit is 1440
IF %COUNTER% gtr 10 (GOTO :killer)
TASKLIST | FINDSTR /I "gmod.exe"
IF ERRORLEVEL 1 (GOTO :StartSwamp) ELSE (ECHO SC is already running)
timeout 60
GOTO :A

:StartSwamp
Echo "SC closed, restarting..."
"C:\Program Files (x86)\Steam\Steam.exe" -applaunch 4000 +connect cinema.swampservers.net:27015 -textmode -noshaderapi -noaddons -nosrgb -nochromium -low -heapsize 1048576 -allowdebug -forcenovsync -hushasserts -noipx -nops2b -windowed -noborder -w 1920 -h 1080 -novid  -usetcp -nocdaudio -hijack -flushlog +cl_cmdrate 100 +myinfo_bytes 2000 +cl_updaterate 101 +rate 30000 +r_hunkalloclightmaps 0 -mat_showlowresimage -processheap
timeout 60
GOTO :A

:killer
taskkill /IM gmod.exe /F
Set COUNTER=0
GOTO :A
