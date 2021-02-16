REM Credits: Weeeishy 
REM LINK: https://github.com/Weeeishy/CSGO-Ping-Tester
REM Discord: https://discord.gg/EPAnVg7
@ECHO OFF
mode con: lines=20
ECHO Ping To South Africa Servers CSGO Servers by Vip3r
ECHO ============================================================= 
ECHO -AUTO PING MODE is (ENABLED)- Please wait while first pings are loading...
:top
color 3
TITLE Ping To South Africa Servers CSGO Servers by Vip3r
:pads
CALL:pingtest1 102.130.127.24 41.86.100.166 102.130.127.22 
CLS
ECHO Ping To South Africa Servers CSGO Servers by Vip3r || TCUP
ECHO ============================================================= 
ECHO.[South Africa]
ECHO - South Africa, (102.130.127.24):				(%ms1%)
ECHO - South Africa, (41.86.100.166):				(%ms2%)
ECHO - South Africa, (102.130.127.22):				(%ms3%)
ECHO ============================================================= 
ECHO -AUTO PING MODE is (ENABLED)- The pings will automatically keep refreshing.
GOTO top
:pingtest1
ECHO.
SET ms1=ERROR
SET ms2=ERROR
SET ms3=ERROR
SET ms4=ERROR
ECHO + Pinging (South Africa)
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %1 ^| FIND "ms"') DO SET ms1=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %2 ^| FIND "ms"') DO SET ms2=%%i
FOR /F "tokens=4 delims==" %%i IN ('ping.exe -n 1 %3 ^| FIND "ms"') DO SET ms3=%%i
GOTO:EOF