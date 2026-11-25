# UNIÃO 決済リンク（Stripe 本番）

作成日 2026-11-25。アカウント: UNIÃO（株式会社マルカト）

| プラン | 金額 | 上限 | 決済リンク |
|---|---|---|---|
| FOUNDER | ¥66,000 / 年 | 20 | https://buy.stripe.com/eVqbJ2f0q13MeWN5eT4gg03 |
| EARLY | ¥6,980 / 月 | 50 | https://buy.stripe.com/7sY5kE05w9Ai3e5gXB4gg04 |
| STANDARD | ¥7,980 / 月 | なし | https://buy.stripe.com/7sYbJ24lM4fYg0R4aP4gg05 |

- 決済後のリダイレクト: `/welcome?plan=founder|early|standard`
- 定員到達時: FOUNDER → EARLY へ案内、EARLY → STANDARD へ案内（リンク上のメッセージで自動表示）
- Managed Payments は各リンクで OFF
- カスタマーポータル（解約・支払い方法・領収書）: https://billing.stripe.com/p/login/cNidRabOe27Q01T0YD4gg01
- 商品 ID: founder `prod_VgtrPk1Gm7pE2c` / early `prod_VgtrjTntxLQ465` / standard `prod_VgtrkUnCLY6ztO`

## ダッシュボードで要対応（API からは変更不可）
- 設定 → Managed Payments を OFF（デフォルト ON のまま）
- 設定 → 公開情報: サポートメール、特商法 URL
- 設定 → 入金: 自動（週1）
- 設定 → 顧客メール: 領収書の自動送信 ON
