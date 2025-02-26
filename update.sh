#!/bin/bash
set -e  # 脚本执行出错时自动退出

URL="https://ghfast.top/raw.githubusercontent.com/MineOptimiz-Team/MineOptimiz-3rd/21.1/fabric_testing/overrides"

PACK_URL="$URL/pack.toml"
BOOTSTRAP_JAR="packwiz-installer-bootstrap.jar"
INSTALLER_JAR="packwiz-installer.jar"

echo "下载依赖文件中..."

if [ ! -f "$BOOTSTRAP_JAR" ]; then
    echo "正在下载 $BOOTSTRAP_JAR..."
    if ! curl -fL -o "$BOOTSTRAP_JAR" \
        "https://ghfast.top/github.com/packwiz/packwiz-installer-bootstrap/releases/download/v0.0.3/$BOOTSTRAP_JAR"; 
    then
        echo "下载失败，请检查网络连接或证书配置"
        exit 2
    fi
fi

if [ ! -f "$INSTALLER_JAR" ]; then
    echo "正在下载 $INSTALLER_JAR..."
    if ! curl -fL -o "$INSTALLER_JAR" \
        "https://ghfast.top/github.com/packwiz/packwiz-installer/releases/download/v0.5.14/$INSTALLER_JAR";
    then
        echo "下载失败，请检查网络连接或证书配置"
        exit 3
    fi
fi

echo "正在尝试更新..."
java -jar "$BOOTSTRAP_JAR" "$PACK_URL"