@echo off
upx.exe --best OSGB.exe -o OSGB_.Exe
echo Hata Kodu: %errorlevel%
if %errorlevel% == 0 goto son
pause
:son
