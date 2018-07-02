@echo off
upx.exe --best OSGB.exe
copy osgb.exe UYUMOSGB.exe
echo Hata Kodu: %errorlevel%
if %errorlevel% == 0 goto son
pause
:son
