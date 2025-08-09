@echo off
REM 微信云函数上传脚本
REM 请确保已安装微信开发者工具并配置了环境变量

set "projectPath=E:\richPet\newRichPet"
set "functionName=quickstartFunctions"
set "envId=cloud1-5gt9856374de02bc"

REM 使用微信开发者工具CLI部署云函数
"C:\Program Files (x86)\Tencent\微信web开发者工具\cli.bat" cloud functions deploy --e %envId% --n %functionName% --r --project %projectPath% --report_first --report

if %ERRORLEVEL% EQU 0 (
    echo 云函数部署成功
) else (
    echo 云函数部署失败
    pause
)