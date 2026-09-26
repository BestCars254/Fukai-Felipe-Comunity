# UNIÃO Landing Page

Felipe Fukai のトレーニング教育コミュニティ「UNIÃO」の事前登録LP。

## デプロイ

### 方法A: Netlify Drop(最速)
1. [https://app.netlify.com/drop](https://app.netlify.com/drop) を開く
2. この `lp/` フォルダを丸ごとドラッグ&ドロップ
3. 即座に `[random-name].netlify.app` の URL が発行される
4. Netlify ダッシュボードで Site name をカスタム変更(例:uniao-waitlist)

### 方法B: Git 連携(継続運用向け)
1. Netlify ダッシュボードで「Add new site → Import an existing project」
2. GitHub リポジトリを選択
3. Build settings:
   - Base directory: `lp`
   - Build command: (空)
   - Publish directory: `lp` (base directory を設定していれば単に `.`)
4. Deploy

### カスタムドメイン(felipefukai.com)接続
1. Netlify ダッシュボード → Domain management → Add domain
2. ドメイン取得業者(Value Domain / お名前.com / Google Domains 等)で DNS 設定変更
3. Netlify 提供の 4つの NS レコードを設定
4. SSL 証明書は Netlify が自動発行(Let's Encrypt)

## フォーム機能(Netlify Forms)

- `<form data-netlify="true">` により自動検出
- 送信は Netlify ダッシュボード「Forms」タブに保存
- 無料プランで **月 100 件**まで
- Email通知は Site settings → Forms → Form notifications で設定
- Waitlist が月 100 件を超えたら $19/月 プランに移行

### フォーム送信データのエクスポート
Netlify UI から CSV でダウンロード可能。将来的に:
- Zapier / Make.com 経由で Google Sheets / Mailchimp に自動連携
- Webhook 経由で LINE 公式アカウントに自動追加

## ファイル構成

```
lp/
├── index.html      # メインLP
├── thanks.html     # フォーム送信後の遷移先
├── style.css       # スタイル(Visual Identity Guide 準拠)
├── netlify.toml    # Netlify 設定
├── assets/
│   └── logo-red-black.png   # 現行ロゴ(赤×黒、白背景)
└── README.md       # このファイル
```

## Visual Identity 準拠状況

| 要素 | Guide 指定 | 実装 |
|---|---|---|
| BLACK 60% | FF BLACK #0E0B0A | ✅ 主背景 |
| WHITE 28% | PURE WHITE #FFFFFF | ✅ 情報セクション |
| RED 10% | LAUREL RED #9C302E | ✅ CTA + アクセント |
| GOLD 2% | KAGAYAKI GOLD #D4A94F | ✅ 達成の演出のみ |
| Playfair Display | タイトル・名言 | ✅ H1, H2 |
| Barlow Condensed | 大会名・数字・英字 | ✅ eyebrow, 実績 |
| Noto Sans JP | 本文 | ✅ body |
| CTA コントラスト | 7.3:1 (Red bg + White) | ✅ |
| ロゴ配置 | ヘッダー + フッター + 締めセクション | ✅ |

## 未解決 TODO(Marcato 依頼)

- [ ] ロゴ 4 バリエーション(現行 / White単色 / Black単色 / Red単色)の AI/PNG 透過データ回収
  - 現状は赤×黒の現行版のみ = 白背景では映えるが、BLACK 60%の LP では**白ボックスで囲む暫定処置**を実施中
  - 特に:White 単色版が届き次第、Hero・Footer・Thanks ページの logo 表示を差し替え
- [ ] Felipe の Hero用トーキングヘッド写真(BLACK bg + キーライト)撮影
- [ ] 生徒優勝の証拠画像(本人許諾済み)を Curriculum セクションに追加
- [ ] `/privacy.html` プライバシーポリシー
- [ ] `/tokushoho.html` 特定商取引法表記

## 今後のイテレーション予定

- Week 1: A/B テスト用 Variant B(Hero copy を「専門判断型」に)を追加
- Week 3: 生徒証拠セクションに実写ビフォーアフター追加
- Week 5: Q&Aライブ #0 のリンクを Waitlist 登録者向けに表示するロジック
- Week 6: ローンチ日 CTA を「今すぐ Founding Member 登録」に切り替える運用スイッチ
