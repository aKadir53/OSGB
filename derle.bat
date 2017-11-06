@echo off
dcc32.exe -cg -b -U"C:\Program Files (x86)\Embarcadero\RAD Studio\9.0\source\rtl\common" osgb.dpr
echo %errorlevel%
if %errorlevel% == 0 goto son
pause
dcc32.exe
:son
pause
