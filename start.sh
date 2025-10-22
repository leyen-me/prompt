#!/bin/bash

# AI Prompt 合集 - 快速启动脚本

echo "🚀 正在启动 AI Prompt 合集..."
echo ""

# 检测操作系统
OS="$(uname)"

# 查找可用的端口
PORT=8000

# 检测可用的 HTTP 服务器
if command -v python3 &> /dev/null; then
    echo "✓ 使用 Python 3 启动 HTTP 服务器"
    echo "📡 服务地址: http://localhost:$PORT"
    echo "💡 提示: 按 Ctrl+C 停止服务器"
    echo ""
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    echo "✓ 使用 Python 启动 HTTP 服务器"
    echo "📡 服务地址: http://localhost:$PORT"
    echo "💡 提示: 按 Ctrl+C 停止服务器"
    echo ""
    python -m SimpleHTTPServer $PORT
elif command -v php &> /dev/null; then
    echo "✓ 使用 PHP 启动 HTTP 服务器"
    echo "📡 服务地址: http://localhost:$PORT"
    echo "💡 提示: 按 Ctrl+C 停止服务器"
    echo ""
    php -S localhost:$PORT
else
    echo "❌ 未找到可用的 HTTP 服务器"
    echo "请安装 Python 或 PHP，或使用 npx http-server"
    exit 1
fi
