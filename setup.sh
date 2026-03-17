#!/bin/bash
set -e
echo ""
echo "⚡ AutoCode 一键安装"
echo ""

echo "[1/5] 更新系统..."
apt-get update -qq > /dev/null 2>&1

echo "[2/5] 安装基础工具..."
apt-get install -y -qq git curl wget > /dev/null 2>&1
mkdir -p ~/.ssh && chmod 700 ~/.ssh
ssh-keyscan -t rsa,ecdsa,ed25519 github.com >> ~/.ssh/known_hosts 2>/dev/null
chmod 600 ~/.ssh/known_hosts

echo "[3/5] 安装 Node.js..."
if ! command -v node &> /dev/null; then
  curl -fsSL https://deb.nodesource.com/setup_22.x | bash - > /dev/null 2>&1
  apt-get install -y -qq nodejs > /dev/null 2>&1
fi
echo "       Node.js: $(node --version 2>/dev/null)"

echo "[4/5] 安装 Claude Code..."
if ! command -v claude &> /dev/null; then
  npm install -g @anthropic-ai/claude-code > /dev/null 2>&1
fi
echo "       Claude Code: $(claude --version 2>/dev/null)"

echo "[5/5] 完成！"
echo ""
echo "=========================================="
echo ""
echo "  ✅ 安装完成！按顺序操作："
echo ""
echo "  ① 输入 claude 回车"
echo "  ② 按提示登录你的 Anthropic 账号"
echo "  ③ 登录后输入：/plugin marketplace add ilang-ai/autocode"
echo "  ④ 然后输入：/plugin install autocode@autocode"
echo "  ⑤ 输入 /exit 退出，再输入 claude 重启"
echo ""
echo "  然后直接说你想做什么！"
echo "  例如：帮我做一个餐厅网站，要能在线订位"
echo ""
echo "=========================================="
