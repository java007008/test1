@echo off
echo 开始下载Python离线安装包...
echo.

REM 检查Python是否安装
py --version >nul 2>&1
if errorlevel 1 (
    echo 错误：未找到Python！请先安装Python
    pause
    exit
)

REM 创建下载目录
if not exist "offline_packages" mkdir offline_packages

REM 下载所有依赖包
echo 正在下载依赖包...
py -m pip download -r requirements.txt -d offline_packages

echo.
echo 下载完成！文件保存在 offline_packages 目录中
echo 请将 offline_packages 目录和 requirements.txt 一起复制到离线电脑

pause