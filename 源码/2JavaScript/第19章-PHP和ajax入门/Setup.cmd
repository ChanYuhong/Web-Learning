@echo off

rem -- http://phpnow.org
rem -- YinzCN_at_Gmail.com

setlocal enableextensions
set Sys32=%SystemRoot%\system32
set Path=%Sys32%;%Sys32%\wbem;%SystemRoot%
prompt -$g
title PHPnow - ����汾ѡ��

set package=Package.7z
set htd20=2.0.63
set htd22=2.2.16
set myd50=5.0.90
set myd51=5.1.50

:htd_choice
echo.
echo  ѡ�� Apache �汾
echo   20  -  Apache %htd20% (�Ƽ�)
echo   22  -  Apache %htd22%
set input=
set /p input= -^> ��ѡ��: 
if @%input%==@20 set htd_e=22
if @%input%==@22 set htd_e=20
if @%htd_e%==@ goto htd_choice

:myd_choice
echo.
echo  ѡ�� MySQL �汾
echo   50  -  MySQL %myd50% (�Ƽ�)
echo   51  -  MySQL %myd51%
set input=
set /p input= -^> ��ѡ��: 
if @%input%==@50 set myd_e=%myd51%
if @%input%==@51 set myd_e=%myd50%
if @%myd_e%==@ goto myd_choice

title PHPnow - ���ڽ�ѹ ...

"%cd%\7z.exe" x -x!Apache-%htd_e%* -x!MySQL-%myd_e%* %package%

del 7z.exe 7z.dll %package% /q
echo.
echo   # ��ѹ���! �Ƿ�ִ�� Init.cmd ��ʼ��?
:init
set input=
set /p input= -^> ��ѡ��(y/n): 
if /i "%input%"=="n" goto end
if /i not "%input%"=="y" goto init
call Init.cmd

:end
title %ComSpec%
start /b del setup.cmd ^& exit /b
