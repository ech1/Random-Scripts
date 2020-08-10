@ECHO OFF


Echo "Swamp Cinema Automation Script"
GOTO :A

:A
"C:\Program Files (x86)\Steam\Steam.exe" -applaunch 4000 +connect cinema.swampservers.net -textmode -noshaderapi -noaddons -nochromium -low -heapsize 1048576"
timeout 10800
taskkill /IM gmod.exe /F
GOTO :A

