#!/bin/bash

# 安装 OpenSees 所需的系统依赖
# 适用于 Debian / Ubuntu / WSL

echo "🔧 更新软件源..."
sudo apt update

echo "📦 安装必需的共享库..."
sudo apt install -y \
    libgfortran5 \
    libtcl8.6 \
    libtk8.6

# 检查是否安装成功
echo "✅ 依赖安装完成，检查库文件是否存在..."

echo -n "libgfortran5: "
ldconfig -p | grep libgfortran.so.5 && echo "✅" || echo "❌ 缺失"

echo -n "libtcl8.6: "
ldconfig -p | grep libtcl8.6.so && echo "✅" || echo "❌ 缺失"

echo -n "libtk8.6: "
ldconfig -p | grep libtk8.6.so && echo "✅" || echo "❌ 缺失"

echo "🎉 所有系统依赖已处理完毕。可以尝试运行 OpenSees。"
