@echo off
echo There are some settings that can be changed to ease development.
echo Type either 1 or 2 then press enter to 
echo 1 Developer Mode
echo 2 None
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
