@echo off
setlocal

for /f "tokens=2 delims==" %%A in ('wmic bios get serialnumber /value') do set "serial=%%A"

for /f "tokens=2 delims==" %%B in ('wmic computersystem get name /value') do set "computername=%%B"

echo Seri Numarası: %serial%
echo Bilgisayar Adı: %computername%

set "filename=%computername%_serino.txt"
echo %serial% > %filename%

endlocal
