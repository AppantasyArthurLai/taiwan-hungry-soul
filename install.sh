#!/bin/bash
# 台人飢餓的靈魂 — 一鍵安裝/更新腳本

set -e

REPO="https://github.com/AppantasyArthurLai/taiwan-hungry-soul.git"
TMP_DIR=$(mktemp -d)
SKILL_NAME="taiwan-hungry-soul"
TARGET_DIR=".claude/skills/$SKILL_NAME"

echo "🍜 台人飢餓的靈魂 — 安裝中..."
echo ""

# Clone 到暫存目錄
git clone --depth 1 --quiet "$REPO" "$TMP_DIR"

# 建立目標目錄
mkdir -p "$TARGET_DIR"

# 複製 skill 檔案（覆蓋舊版）
cp -R "$TMP_DIR/.claude/skills/$SKILL_NAME/" "$TARGET_DIR/"

# 清理暫存
rm -rf "$TMP_DIR"

echo "✅ 安裝完成！Skill 已放在 $TARGET_DIR"
echo ""
echo "現在跟 Claude 說「肚子好餓」試試看吧。"
