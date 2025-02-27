@echo off
echo 下载依赖文件中...
 if  not exist ".\packwiz-installer-bootstrap.jar" (
  powershell -Command Invoke-WebRequest -Uri "https://ghfast.top/github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/packwiz-installer-bootstrap.jar" -OutFile ".\packwiz-installer-bootstrap.jar"
)
if not exist ".\packwiz-installer.jar" (
  powershell -Command Invoke-WebRequest -Uri "https://ghfast.top/github.com/packwiz/packwiz-installer/releases/download/v0.5.14/packwiz-installer.jar" -OutFile ".\packwiz-installer.jar"
)
echo 正在尝试更新...
java -jar packwiz-installer-bootstrap.jar https://ghfast.top/raw.githubusercontent.com/MineOptimiz-Team/MineOptimiz-3rd/21.1/neoforge_testing/overrides//pack.toml