# UNIÃO 決済リンク（Stripe 本番）— 正式版

2026-11-25 更新。アカウント: UNIÃO（株式会社マルカト）

**使うのはこの3本だけ**（11/17 作成。利用規約への同意・氏名入力つき）

| プラン | 金額 | 上限 | 決済リンク | ID |
|---|---|---|---|---|
| FOUNDER | ¥66,000 / 年 | 20 | https://buy.stripe.com/28E8wQ05weUCeWN7n14gg00 | plink_1Ud9opIU7RJGxFss5XqHR9qA |
| EARLY | ¥6,980 / 月 | 50 | https://buy.stripe.com/cNidRabOe27Q01T0YD4gg01 | plink_1Ud9osIU7RJGxFsswiyXiuiH |
| STANDARD | ¥7,980 / 月 | なし | https://buy.stripe.com/28E6oI6tUeUC6qhdLp4gg02 | plink_1Ud9ozIU7RJGxFssztK4YLR3 |

- 決済後のリダイレクト: https://ff-uniao.netlify.app/welcome?plan=founder|early|standard（`welcome.html`）
- 定員到達時: FOUNDER → EARLY のリンクを表示、EARLY → STANDARD のリンクを表示
- Managed Payments: 各リンクで OFF
- 商品 ID: founder `prod_VeSjB42nhCT1m1` / early `prod_VeSjwttbvOGVIv` / standard `prod_VeSjp5St8GPmEk`
- テスト用: `plink_1UfW90IU7RJGxFssW6hYvOUj`（¥100、1回限り、使用後に無効化すること）

**無効化済み（11/25 に重複作成されたもの。使わない）**
- plink_1UfW4hIU7RJGxFssbea1E2tW / plink_1UfW4kIU7RJGxFss8qvyp3Y6 / plink_1UfW4oIU7RJGxFssp9FQBdce
- prod_VgtrPk1Gm7pE2c / prod_VgtrjTntxLQ465 / prod_VgtrkUnCLY6ztO（アーカイブ済み）

**関連 URL**
- カスタマーポータル（解約・支払い方法・領収書）: https://billing.stripe.com/p/login/cNidRabOe27Q01T0YD4gg01
- 利用規約: https://ff-uniao.netlify.app/terms（Checkout の同意リンク先）
- 特商法: https://uniao-tokushoho.netlify.app/
- サポート: https://uniao-support.netlify.app/
- 会員エリア（Whop）: https://uniao.whop.site

**返金ポリシー（確定 11/25）**
- EARLY / STANDARD: 入会日を含む3日以内は全額返金。それ以降なし
- FOUNDER: 返金なし

**ダッシュボードで要対応**
- 設定 → Managed Payments を OFF（アカウント既定が ON）
- 設定 → 公開情報: 利用規約 URL に https://ff-uniao.netlify.app/terms を登録（同意リンクが機能する条件）
- 設定 → 入金: 自動（週1）
- 設定 → 顧客メール: 領収書の自動送信 ON
