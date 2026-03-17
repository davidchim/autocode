#!/bin/bash
set -e
echo ""
echo "⚡ AutoCode 一键安装"
echo ""

# 系统基础
echo "[1/6] 更新系统..."
apt-get update -qq > /dev/null 2>&1

echo "[2/6] 安装基础工具..."
apt-get install -y -qq git curl wget > /dev/null 2>&1

# GitHub HTTPS强制 + SSH known_hosts
git config --global url."https://github.com/".insteadOf "git@github.com:"
mkdir -p ~/.ssh && chmod 700 ~/.ssh
ssh-keyscan -t rsa,ecdsa,ed25519 github.com >> ~/.ssh/known_hosts 2>/dev/null
chmod 600 ~/.ssh/known_hosts

# Node.js
echo "[3/6] 安装 Node.js..."
if ! command -v node &> /dev/null; then
  curl -fsSL https://deb.nodesource.com/setup_22.x | bash - > /dev/null 2>&1
  apt-get install -y -qq nodejs > /dev/null 2>&1
fi
echo "       Node.js: $(node --version 2>/dev/null)"

# Claude Code
echo "[4/6] 安装 Claude Code..."
if ! command -v claude &> /dev/null; then
  npm install -g @anthropic-ai/claude-code > /dev/null 2>&1
fi
echo "       Claude Code: $(claude --version 2>/dev/null)"

# AutoCode 插件 — 直接放到正确位置，不需要/plugin命令
echo "[5/6] 安装 AutoCode 插件..."
MARKETPLACE_DIR="$HOME/.claude/plugins/marketplaces/ilang-ai-autocode"
PLUGIN_DIR="$MARKETPLACE_DIR/plugins/autocode"
KNOWN_FILE="$HOME/.claude/plugins/known_marketplaces.json"

# 清理旧安装
rm -rf "$MARKETPLACE_DIR"
mkdir -p "$MARKETPLACE_DIR/.claude-plugin"
mkdir -p "$PLUGIN_DIR"

# 克隆仓库到临时目录
TEMP_DIR=$(mktemp -d)
git clone --depth 1 https://github.com/ilang-ai/autocode.git "$TEMP_DIR" > /dev/null 2>&1

# 复制插件文件到plugin子目录
cp -r "$TEMP_DIR/skills" "$PLUGIN_DIR/"
cp -r "$TEMP_DIR/hooks" "$PLUGIN_DIR/"
cp -r "$TEMP_DIR/scripts" "$PLUGIN_DIR/"
cp -r "$TEMP_DIR/.claude-plugin/plugin.json" "$PLUGIN_DIR/.claude-plugin/plugin.json" 2>/dev/null || true
mkdir -p "$PLUGIN_DIR/.claude-plugin"
cp "$TEMP_DIR/.claude-plugin/plugin.json" "$PLUGIN_DIR/.claude-plugin/plugin.json"
cp "$TEMP_DIR/LICENSE" "$PLUGIN_DIR/" 2>/dev/null || true

# 创建marketplace.json
cat > "$MARKETPLACE_DIR/.claude-plugin/marketplace.json" << 'MKJSON'
{
  "name": "autocode-marketplace",
  "description": "AutoCode: You say it, AutoCode builds it.",
  "owner": {
    "name": "I-Lang Research",
    "email": "info@ilang.ai"
  },
  "plugins": [
    {
      "name": "autocode",
      "source": "./plugins/autocode",
      "version": "3.3.0",
      "description": "38 skills, persistent memory, 60%+ dev cost savings. Zero dependencies."
    }
  ]
}
MKJSON

# 注册marketplace到Claude Code
mkdir -p "$HOME/.claude/plugins"
if [ -f "$KNOWN_FILE" ]; then
  # 用python追加（如果已有其他marketplace）
  python3 -c "
import json
with open('$KNOWN_FILE','r') as f: data=json.load(f)
data['autocode']={
  'source':{'source':'directory','path':'$MARKETPLACE_DIR'},
  'installLocation':'$MARKETPLACE_DIR',
  'lastUpdated':'$(date -u +%Y-%m-%dT%H:%M:%S.000Z)'
}
with open('$KNOWN_FILE','w') as f: json.dump(data,f,indent=2)
" 2>/dev/null || true
else
  cat > "$KNOWN_FILE" << KNOWNEOF
{
  "autocode": {
    "source": {
      "source": "directory",
      "path": "$MARKETPLACE_DIR"
    },
    "installLocation": "$MARKETPLACE_DIR",
    "lastUpdated": "$(date -u +%Y-%m-%dT%H:%M:%S.000Z)"
  }
}
KNOWNEOF
fi

# 注册插件到settings
SETTINGS_FILE="$HOME/.claude/settings.json"
if [ -f "$SETTINGS_FILE" ]; then
  python3 -c "
import json
with open('$SETTINGS_FILE','r') as f: data=json.load(f)
if 'plugins' not in data: data['plugins']={}
data['plugins']['autocode@autocode']={'enabled':True,'marketplace':'autocode','source':'$PLUGIN_DIR'}
with open('$SETTINGS_FILE','w') as f: json.dump(data,f,indent=2)
" 2>/dev/null || true
else
  mkdir -p "$HOME/.claude"
  cat > "$SETTINGS_FILE" << SETEOF
{
  "plugins": {
    "autocode@autocode": {
      "enabled": true,
      "marketplace": "autocode",
      "source": "$PLUGIN_DIR"
    }
  }
}
SETEOF
fi

# 确保脚本可执行
chmod +x "$PLUGIN_DIR/scripts/"*.sh 2>/dev/null || true

# 清理
rm -rf "$TEMP_DIR"
echo "       AutoCode: 38个技能已安装"

echo "[6/6] 全部完成！"
echo ""
echo "=========================================="
echo ""
echo "  ✅ 所有东西都装好了！"
echo ""
echo "  现在只需要两步："
echo ""
echo "  ① 输入 claude 按回车"
echo "  ② 按屏幕提示登录你的账号"
echo ""
echo "  登录后直接说你想做什么！"
echo "  例如：帮我做一个餐厅网站，要能在线订位"
echo ""
echo "  遇到问题？把屏幕上的文字复制给AI看，它会帮你解决。"
echo ""
echo "=========================================="
