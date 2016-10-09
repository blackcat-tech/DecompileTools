@echo off
echo 标题：反编译Game.apk
echo.

set PATH=%CD%\jre;%PATH%;

echo =========== 反编译当前目录下面的Game.apk ==============

java -jar "%~dp0\apktool.jar" d -f Game.apk

echo.
echo ==========  over ==============
echo.

pause

