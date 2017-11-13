@echo off
mode 196,80
dcc32.exe -b -cg -U"C:\Program Files (x86)\Embarcadero\RAD Studio\9.0\source\rtl\common" -O"C:\Program Files (x86)\Embarcadero\RAD Studio\9.0\lib\win64\release;C:\Program Files (x86)\Embarcadero\RAD Studio\9.0\lib\win32\release" osgb.dpr -q
echo %errorlevel%
if %errorlevel% == 0 goto son
pause
cls
dcc32.exe
:son
pause
