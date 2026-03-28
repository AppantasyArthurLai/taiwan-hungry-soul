# 台人飢餓的靈魂

> 如果 Skill 是 AI 的靈魂，那夜市就是刻在台人骨子裡的基因。

一個 Claude Code Skill，把這份基因注入 Claude——不是塞一堆店家資料給他背，而是讓他用台灣人的方式思考「吃」這件事。

什麼場合該吃什麼、為什麼排隊是日常、香菜為什麼是信仰、臭豆腐要怎麼帶外國人入門。裝了這個 Skill，Claude 就是那個從小在夜市長大的朋友，拍你肩膀說「走，帶你去吃」。

## 範例

> 「咁！我想要麵線香菜加到爆啦！」

```
麵線加香菜加到爆！你是懂吃的啦！

台北的話直接去西門町阿宗麵線，站在路邊嗑完一碗是基本儀式。
他們的香菜給得算大方，你再跟老闆喊一聲「香菜多一點」，
通常不會讓你失望...

記得加烏醋跟蒜泥，這才是完整的一碗。
```

## 這個 Skill 做了什麼

它不是美食資料庫——店家資訊會過時，但文化不會。

這個 Skill 注入的是：
- **台灣人的吃食邏輯**：宵夜就是要炸的、天冷就想喝湯、約會不要吃太狼狽的
- **食物的文化脈絡**：滷肉飯台北偏肥台南偏甜、嘉義的火雞肉飯不接受反駁
- **夜市的個性地圖**：寧夏是在地人的深夜食堂、瑞豐才是高雄人真正去的夜市
- **台式語感與口吻**：讓 AI 說出「排到天荒地老也甘願」而不是「建議您前往」

具體的店家推薦，交給 Claude 自己的知識來處理。

## 安裝 / 更新

### Claude 桌機版 / claude.ai

1. 到 [Releases](https://github.com/AppantasyArthurLai/taiwan-hungry-soul/releases) 下載最新的 `taiwan-hungry-soul.skill` 檔案
2. 開啟 Claude → Customize → Skills
3. 點右上角 `+` → Upload skill
4. 把 `.skill` 檔拖進去，完成

更新時重複上述步驟，上傳新版即可覆蓋。

### Claude Code（CLI）

在你的專案目錄下跑這行，安裝和更新都是同一個指令：

```bash
curl -fsSL https://raw.githubusercontent.com/AppantasyArthurLai/taiwan-hungry-soul/main/install.sh | bash
```

或是手動安裝：

```bash
git clone https://github.com/AppantasyArthurLai/taiwan-hungry-soul.git /tmp/taiwan-hungry-soul
cp -r /tmp/taiwan-hungry-soul/.claude/skills/taiwan-hungry-soul .claude/skills/
rm -rf /tmp/taiwan-hungry-soul
```

## 觸發方式

不需要特別下指令，正常跟 Claude 聊天就會自動啟用：

- 「台北有什麼好吃的宵夜？」
- 「我想帶外國朋友去吃臭豆腐」
- 「士林夜市必吃」
- 「肚子好餓，推薦一下」
- 「咁！我想要麵線香菜加到爆啦！」

## 貢獻

每個台灣人心中都有一張自己的吃食地圖。歡迎發 PR 提供各種在地美食文化——不管是你知道的夜市潛規則、城市之間的食物論戰、還是阿嬤傳下來的吃法，都值得被寫進這份基因裡。

主要編輯的檔案：
- `data/foods_taxonomy.json` — 食物分類、場合邏輯、文化脈絡
- `data/night_markets.json` — 夜市的個性與氛圍

## 授權

MIT
