# 台人飢餓的靈魂

> 如果 Skill 是 AI 的靈魂，那夜市就是刻在台人骨子裡的基因。

一個 Claude Code Skill，把這份基因注入 Claude，讓他變成從小在夜市長大的美食達人。

問他「台北宵夜吃什麼」「臭豆腐哪家好」「咁！我想吃麵線」，他就會用在地人帶路的口吻，推薦具體攤位、附上 Google Maps 導航、標價位、提醒排隊狀況——不是冷冰冰的搜尋結果，而是那種朋友拍你肩膀說「走，帶你去吃」的感覺。

## 範例

> 「高雄六合夜市必吃是什麼？」

```
### 鄭老牌木瓜牛奶｜六合夜市

必吃指數：沒喝過等於沒來過六合夜市

高雄六合的傳奇飲品，用在地熟透的木瓜現打，濃郁滑順...

- 價位：$（50 元以下）
- 排隊提醒：熱門時段約等 10-15 分鐘
- 導航：Google Maps
```

## 安裝 / 更新

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

安裝後的結構：

```
your-project/
└── .claude/
    └── skills/
        └── taiwan-hungry-soul/
            ├── SKILL.md
            ├── data/
            │   ├── night_markets.json
            │   └── foods_taxonomy.json
            └── prompts/
                └── response_template.md
```

## 觸發方式

不需要特別下指令，正常跟 Claude 聊天就會自動啟用。以下都能觸發：

- 「台北有什麼好吃的宵夜？」
- 「我想帶外國朋友去吃臭豆腐」
- 「士林夜市必吃」
- 「肚子好餓，推薦一下」
- 「咁！我想要麵線香菜加到爆啦！」

## 目前涵蓋的夜市

| 城市 | 夜市 |
|------|------|
| 台北 | 饒河街夜市、士林夜市、寧夏夜市 |
| 台中 | 逢甲夜市 |
| 台南 | 花園夜市 |
| 高雄 | 六合夜市 |

基因庫持續擴充中，歡迎 PR 把你的口袋名單也寫進來！

## 貢獻

每個台灣人心中都有一張自己的夜市地圖。歡迎發 PR 提供各種在地美食——不管是巷口那家只有里長伯知道的滷味攤，還是你從小吃到大的鹹酥雞，都值得被收錄。

想加入更多夜市或攤位資料，請編輯 `data/night_markets.json`，格式參考現有資料即可。

## 授權

MIT
