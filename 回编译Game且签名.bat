@echo off
echo 标题：回编译Game且签名
echo.

:: PATH设置后，可以在不安装Java环境的机器上运行该程序。
:: 路径设置为\jre的原因是，签名命令会用到\jre\lib
set PATH=%CD%\jre;%PATH%;

echo =========== 1. Game文件回编译生成的Game_unsigned.apk ==============
java -jar "%~dp0\apktool.jar" b Game -o Game_unsigned.apk

echo.
echo ========== 2. 签名生成Game_signed.apk ==============
java -jar signapk.jar AnGuoSign.x509.pem AnGuoSign.pk8 Game_unsigned.apk Game_signed.apk

echo.
echo ========== 3. 删除 Game_unsigned.apk ==============

del Game_unsigned.apk/s/q

echo.
echo ==========  over ==============
echo.

pause

