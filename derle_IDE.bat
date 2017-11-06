@echo off
"C:\Program Files (x86)\Embarcadero\RAD Studio\9.0\bin\BDS.exe" osgb.dpr /b
echo %errorlevel%
if %errorlevel% == 0 goto son
pause
:son
cd win32\debug
call upx.bat
