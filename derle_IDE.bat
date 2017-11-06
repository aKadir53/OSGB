@echo off
BDS.exe osgb.dpr /b
echo %errorlevel%
if %errorlevel% == 0 goto son
pause
:son
cd win32\debug
call upx.bat
