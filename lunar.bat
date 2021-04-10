@echo off
color 3

title Lunar Ping

:greeting
cls

ECHO  db      db    db d8b   db  .d8b.  ECHO d8888b. 
ECHO 88      88    88 888o  88 d8' `8b 88  ECHO `8D 
ECHO 88      88    88 88V8o 88 88ooo88 ECHO 88oobY' 
ECHO 88      88    88 88 V8o88 88~~~88 ECHO 88`8b   
ECHO 88booo. 88b  d88 88  V888 88   88 ECHO 88 `88. 
ECHO Y88888P ~Y8888P' VP   V8P YP   YP 88   YD 
                                          
                                                                                
set /p IP=Enter IP:: 
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Downed.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top 