@echo off
chcp 65001 >nul
title Kali Linux Rolling
SETLOCAL EnableDelayedExpansion
:intro
cls
goto typecmd

:typecmd
echo.
set c=
echo [32m┌──([94m%username%@%computername%[32m)-[32m[[0m~[32m]
set /p c="[32m└─[94m$ [0m"

if /I "%c%" EQU "pwd" (
 echo %cd%
 goto typecmd
)

if /I "%c%" EQU "echo" (
 echo "%c%"
 goto typecmd
)

if /I "%c%" EQU "ip host" (
set /p ip=[96mENTER IP:[92m
nbtstat -n %ip%
[0m
 goto typecmd
)

if /I "%c%" EQU "clear" (
 cls
 goto typecmd
)

if /I "%c%" EQU "help" (
echo ifconfig - Shows IP address
echo ls       - Shows dirctory
echo netstat  - Displays network connections
echo whoami   - Displays Username and Computername
echo ps x     - Shows Running tasks
echo show usr - Displays users
echo pwd      - Shows current directory
echo clear    - Clears screen
echo.
goto typecmd
)

if /I "%c%" EQU "" (
 goto typecmd
)

if /I "%c%" EQU "ifconfig" (
 ipconfig
 goto typecmd
)

if /I "%c%" EQU "ls" (
 dir
 goto typecmd
)

if /I "%c%" EQU "ls -r" (
 tree
 goto typecmd
)

if /I "%c%" EQU "netstat" (
 netstat
 pause
 goto typecmd
)

if /I "%c%" EQU "cat" (
 type
 goto typecmd
)

if /I "%c%" EQU "ps x" (
 tasklist
 goto typecmd
)

if /I "%c%" EQU "cd.." (
 cd..
 goto typecmd
)

if /I "%c%" EQU "whoami" (
 whoami
 goto typecmd
)

if /I "%c%" EQU "show usr" (
 net user
 goto typecmd
)

if /I "%c%" EQU "cd Desktop" (
 cd Desktop
 goto typecmd
)

if /I "%c%" EQU "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z," goto error

:error
 echo  [91mError[0m the command "%c%" [4mdoes not[0m exist,
 echo  operable program or batch file.
 goto typecmd