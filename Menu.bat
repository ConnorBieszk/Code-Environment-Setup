@echo off
cd C:\CodeTools\advancedmode
echo You have reported an error please select where you crashed and we will send you to that section
echo 1 Folder Creation
echo 2 App installation
echo 3 System settings
echo 4 Return to main.bat
set /p yesno=choice1~4 >nul
if %yesno%==1 goto 1
if %yesno%==2 goto 2
if %yesno%==3 goto 3
if %yesno%==4 goto 4
:1
start folder.bat
exit
:2
start install.bat
exit
:3
start C:\CodeTools\Advancedmode\settings.lnk
exit
:4
cd C:\CodeTools
start main.bat
exit