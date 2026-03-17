#!/bin/bash
# ============================================================
# AutoCode 一键安装脚本
# 用户只需要复制粘贴这一条命令到VPS终端：
# curl -fsSL https://ilang.ai/setup.sh | bash
# ============================================================

set -e

echo ""
echo "⚡ AutoCode 安装程序"
echo "   正在配置开发环境..."
echo ""

# 1. 系统更新
echo "[1/6] 更新系统..."
apt-get update -qq > /dev/null 2>&1
apt-get upgrade -y -qq > /dev/null 2>&1

# 2. 安装基础工具
echo "[2/6] 安装基础工具..."
apt-get install -y -qq git curl wget unzip > /dev/null 2>&1

# 3. 修复 GitHub SSH known_hosts（解决 Host key verification failed）
echo "[3/6] 配置 GitHub 连接..."
mkdir -p ~/.ssh
chmod 700 ~/.ssh
ssh-keyscan -t rsa,ecdsa,ed25519 github.com >> ~/.ssh/known_hosts 2>/dev/null
chmod 600 ~/.ssh/known_hosts

# 4. 安装 Node.js（Claude Code 需要）
echo "[4/6] 安装 Node.js..."
if ! command -v node &> /dev/null; then
  curl -fsSL https://deb.nodesource.com/setup_22.x | bash - > /dev/null 2>&1
  apt-get install -y -qq nodejs > /dev/null 2>&1
fi
NODE_VERSION=$(node --version 2>/dev/null || echo "未安装")
echo "       Node.js: $NODE_VERSION"

# 5. 安装 Claude Code
echo "[5/6] 安装 Claude Code..."
if ! command -v claude &> /dev/null; then
  npm install -g @anthropic-ai/claude-code > /dev/null 2>&1
fi
CLAUDE_VERSION=$(claude --version 2>/dev/null || echo "未安装")
echo "       Claude Code: $CLAUDE_VERSION"

# 6. 完成
echo "[6/6] 环境准备完成！"
echo ""
echo "=========================================="
echo ""
echo "  ✅ 环境安装完成！"
echo ""
echo "  接下来请按顺序操作："
echo ""
echo "  第一步：启动 Claude Code"
echo "  输入：claude"
echo "  按回车"
echo ""
echo "  第二步：登录你的 Anthropic 账号"
echo "  按照屏幕提示操作"
echo ""
echo "  第三步：安装 AutoCode（进入Claude Code后输入）"
echo "  输入：/plugin marketplace add ilang-ai/autocode"
echo "  按回车，等它完成"
echo ""
echo "  第四步：安装插件"
echo "  输入：/plugin install autocode@autocode"
echo "  按回车，等它完成"
echo ""
echo "  第五步：退出重启"
echo "  输入：/exit"
echo "  然后重新输入：claude"
echo ""
echo "  🎉 安装完成后，直接说你想做什么就行了！"
echo "  例如：帮我做一个餐厅网站，要能在线订位"
echo ""
echo "=========================================="
echo ""
