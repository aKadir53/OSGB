@echo off
upx.exe OSGB.exe
if %errorlevel% == 0 goto son
pause
:son
