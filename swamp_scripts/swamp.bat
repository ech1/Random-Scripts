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
start SwampCinema
timeout 60
GOTO :B

:StartSteam
ECHO "Steam is closed, Restarting..."
start Steam
timeout 60
GOTO :A
