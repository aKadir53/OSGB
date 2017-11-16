@echo off
upx.exe --best OSGB.exe
echo Hata Kodu: %errorlevel%
if %errorlevel% == 0 goto son
pause
:son
