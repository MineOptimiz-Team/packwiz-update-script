@echo off
echo ?????????????...
 if  not exist ".\packwiz-installer-bootstrap.jar" (
  powershell -Command Invoke-WebRequest -Uri "https://ghfast.top/github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/packwiz-installer-bootstrap.jar" -OutFile ".\packwiz-installer-bootstrap.jar"
)
if not exist ".\packwiz-installer.jar" (
  powershell -Command Invoke-WebRequest -Uri "https://ghfast.top/github.com/packwiz/packwiz-installer/releases/download/v0.5.14/packwiz-installer.jar" -OutFile ".\packwiz-installer.jar"
)
echo ??????????...
java -jar packwiz-installer-bootstrap.jar https://ghfast.top/raw.githubusercontent.com/MineOptimiz-Team/MineOptimiz-3rd/20.1/forge_testing/overrides//pack.toml