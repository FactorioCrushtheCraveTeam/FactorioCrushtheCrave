@echo off


:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"


	
	

:start



Rem user prefs load starts here ----->>>

Rem Do not edit these here the options are located in the config file and can be opened with a text editor
Rem such as notepad ++

for /f "tokens=1*delims=:" %%G in ('findstr /n "^" UserPrefs.config') do if %%G equ 3 %%H
title Crush The Crave Factorio MultiModPack Loader




for /f "tokens=1*delims=:" %%G in ('findstr /n "^" UserPrefs.config') do if %%G equ 9 %%H
:welcomescreenno
:Sloaded
for /f "tokens=1*delims=:" %%G in ('findstr /n "^" UserPrefs.config') do if %%G equ 2 %%H























Rem user prefs load ends here ----->>>








:skipbegincreditsno

type cred.CrushFact
ping -n 1 127.0.0.1 >nul
:resumeaftcreds

	
	
	
	
if not exist "C:\CTCMods" mkdir "C:\CTCMods"

setlocal enabledelayedexpansion


set Index=1
for /d %%D in ("C:\CTCMods\"*) do (
  set "Subfolders[!Index!]=%%D"
  set /a Index+=1
)
set /a UBound=Index-1


echo #################################################
for /l %%i in (1,1,%UBound%) do echo %%i. !Subfolders[%%i]!
echo #################################################

:choiceloop
set /p Choice=Please Select a Folder Number to Load a Modpack:
 
 

 
if "%Choice%"=="" goto chioceloop
if %Choice% LSS 1 goto choiceloop
if %Choice% GTR %UBound% goto choiceloop

dir "C:\CTCMods\*" /b >ModList.CrushFact




for /f "tokens=1*delims=:" %%G in ('findstr /n "^" ModList.CrushFact') do if %%G equ %Choice% echo %%H >CurrentLoad.CrushFact




SET var=

for /f "delims=" %%i in (CurrentLoad.CrushFact) do call :setVar %%i
echo final var =%var%


:SetVar
Set var=%var%%1%

for /f "tokens=1*delims=:" %%G in ('findstr /n "^" UserPrefs.config') do if %%G equ 12 %%H
:batchemuloadsyes
CD /D "C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\"
Echo Please Navigate to Your Steam Window.
echo Loading.
echo Loading..
echo Loading...
echo Loading....
echo Loading...
echo Loading..
echo Loading.
ping -n 5 127.0.0.1 >nul



start "" "C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\factorio.exe" --mod-directory C:\CTCMods\%var%





echo Closing.
echo Closing..
echo Closing...
echo Closing....
echo Closing...
echo Closing..
echo Closing.



:skipendcreditsno
Echo Credits Andy Gretsinger & Anson Gretsinger
Echo You Can Modify this Launcher However You See Fit.
Echo Email me @ ggdogz47@gmail.com
:skipendcreditsyes
ping -n 5 127.0.0.1 >nul

exit

:extrastuffs





:skipbegincreditsyes

echo Please store all mods under "C:\CTCMods" Each folder under "C:\CTCMods" will be
echo considered its own mod folder.
echo Example "C:\CTCMods\bobsmods" and "C:\CTCModsangelsmods" will be different packs.



goto resumeaftcreds






:welcomescreenyes

type lgo.CrushFact

nircmd mediaplay 1000 wc.wav


goto Sloaded









:batchemuloadsno


CD /D "C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\"
Echo Please Navigate to Your Steam Window.

start "" "C:\Program Files (x86)\Steam\steamapps\common\Factorio\bin\x64\factorio.exe" --mod-directory C:\CTCMods\%var%

Echo Credits Andy Gretsinger & Anson Gretsinger
Echo You Can Modify this Launcher However You See Fit.
Echo Email me @ ggdogz47@gmail.com

exit

rem is my idea section the program will end before it hits this area.
rem break>demo.txt
rem set Subfolder=!Subfolders[%Choice%]!