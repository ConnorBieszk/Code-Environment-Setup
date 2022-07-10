@echo off
cd C:\CodeTools
rem Program Written by CodingCat99
echo Themes
echo Type 1 or 2 then press enter
echo 1 Windows Default
echo 2 Original Theme, a4
set /p color=choice1~32>nul
if %color%==2 goto theming
if %color%==1 goto start
:theming
color a4
:start
cls
title Coding Environment Set-up
echo.
echo - - - - - - - - - - - - -
echo.
echo Coding Environment Set-up
echo.
echo - - - - - - - - - - - - -
echo.
echo !!This program is to be run on a clean install of windows. If you have installed any tools related to program this tool may break the os!!
echo !!This program will Modify system settings and install programs!!
echo Please make sure the path to this file is C:\CodeTools\Main.bat
echo To continue press one and to exit press two then press enter. If you have run this program but it has crashed or is a Developer for Coding Environment Set-up press 3. Themes are not allowed in crashed mode
set /p yesno=choice1~3 >nul
if %yesno%==1 goto Continue
if %yesno%==2 exit
if %yesno%==3 goto errorcorrection
:errorcorrection
cd advancedmode
start Menu.bat
exit
:Continue
cls
echo.
echo - - - - - - - - - - - - -
echo.
echo Coding Environment Set-up
echo.
echo - - - - - - - - - - - - -
echo.
echo Where will the coding folder be?
echo Please type the path on where you want your folder to be created then press enter
set /p path=Enter Path: >nul
cd %path%
mkdir Coding
cd Coding
mkdir Android
mkdir Apple/AppleScript
mkdir Batch
mkdir C
mkdir C#
mkdir C++
mkdir HTML/Javascipt/CSS
mkdir Ruby
mkdir Lua
mkdir Python
mkdir Java
:Return
cls
echo.
echo - - - - - - - - - - - - -
echo.
echo Coding Environment Set-up
echo.
echo - - - - - - - - - - - - -
echo.
echo Would you like to install coding tools. Please remember that this part of the script cannot be automated because of security features built into winget. 
echo To continue press one, and to skip this step press 2 then press enter.
set /p yesno2=choice1~2 >nul
if %yesno2%==1 goto Continue2
if %yesno2%==2 goto set
:Continue2
echo Size?
echo 1  Minimal
echo 2  Small
echo 3  Full
echo 4  App Selection
set /p sized=choice1~4 >nul
if %sized%==1 goto Minimal
if %sized%==2 goto Small
if %sized%==3 goto Full
if %sized%==4 goto select
cls
echo - - - - - - - - - - - - -
echo.
echo Coding Environment Set-up
echo.
echo - - - - - - - - - - - - -
:Minimal
Echo App List: Visual Studio Code
echo if you wish to return press 2, to continue press 1
set /p returntosizemenu=choice1~2 >nul
if %returntosizemenu%==1 goto installationmini
if %returntosizemenu%==2 goto Return
:installationmini
winget install -e --id Microsoft.VisualStudioCode
goto set
:Small
Echo App List: Visual Studio Code, Android Studio, Ruby, and Java
echo if you wish to return press 2, to continue press 1
set /p returntosizemenu2=choice1~2 >nul
if %returntosizemenu2%==1 goto installationsmall
if %returntosizemenu2%==2 goto Return
:installationsmall
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Google.AndroidStudio
winget install -e --id RubyInstallerTeam.Ruby
winget install -e --id Oracle.JavaRuntimeEnvironment rem java
winget install -e --id Oracle.JDK.17 rem java
goto set
:Full
Echo App List: Visual Studio Code, Android Studio, Ruby, Java, Visual Studio, Eclipse,Notepad++, VIM, node.js, Python, and Lua
echo if you wish to return press 2, to continue press 1
set /p returntosizemenu3=choice1~2 >nul
if %returntosizemenu3%==1 goto installatiofull
if %returntosizemenu3%==2 goto Return
:installatiofull
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Google.AndroidStudio
winget install -e --id Python.Python.3
winget install -e --id RubyInstallerTeam.Ruby
winget install -e --id Oracle.JavaRuntimeEnvironment rem java
winget install -e --id Oracle.JDK.17 rem java
winget install -e --id Microsoft.VisualStudio.2022.Community-Preview
winget install -e --id Notepad++.Notepad++
winget install -e --id vim.vim
winget install -e --id OpenJS.NodeJS
cd C:/CodeTools
START eclipseinstaller.exe
pause
START luainstaller.exe
:select
cd bin
start selector.bat
goto set
:set
echo There are some settings that can be changed to ease development.
echo Type either 1,2,3 or 4 then press enter to 
echo 1 Dark Mode
echo 2 Developer Mode
echo 3 Both
echo 4 None
set /p returntosizemenu3=choice1~2 >nul
if %returntosizemenu3%==1 goto dev
if %returntosizemenu3%==2 goto end
:dev
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
goto end
:end
echo Tool Finished, because of how you used this program, self destruction is not possible. You must manually remove this program.
pause
shutdown /r /t 3
echo Self destruction
rmdir C:\CodeTools