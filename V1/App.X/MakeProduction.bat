@echo off

copy dist\default\production\SystemApp.X.production.hex lastbuild.hex
copy dist\default\production\SystemApp.X.production.unified.hex Production.hex
START "" "C:\Program Files\Microchip\xc32\v4.10\bin\xc32-ar.exe" "r" "app\SystemApp.a" "build\default\production\app\SystemApp.o"

echo Done.