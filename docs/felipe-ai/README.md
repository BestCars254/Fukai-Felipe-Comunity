# FELIPE AI ｜ 第 1 段階（Google AI Studio で運用）

目的：メンバーの質問に、Felipe が答えそうな下書きを AI が作る → Felipe が承認・修正 → 運営が投稿。Felipe の負担を「読んで OK を出す」だけにする。

## ファイル

| ファイル | 中身 | 使い方 |
|---|---|---|
| `bundle.txt` | システム指示 + 判断の原則 + 全文字起こし を 1 本にしたもの | **これを AI Studio の System instructions に丸ごと貼る** |
| `system-prompt.md` | 人格・判断の型・禁止事項・出力フォーマット | 口調を直すときはここ |
| `knowledge-core.md` | 授業から抜き出した「判断の原則」 | Felipe の修正を足すときはここ |
| `source/*.txt` | 授業の文字起こし（原文） | 新しい授業が出たら追加 |
| `test-questions.md` | 最初に試す質問 12 問 | Felipe に見てもらう用 |
| `approval-log.md` | 承認・修正の記録テンプレ | 毎回ここに残す |
| `build-bundle.sh` | bundle.txt を作り直すスクリプト | ファイルを直したら実行 |

## セットアップ（10 分）

1. https://aistudio.google.com を開く → 「Create prompt」（Chat）。
2. 右の設定で **Model** を Gemini の Pro 系の最新を選ぶ。**Temperature は 0.3** くらい（口調のブレを抑える）。
3. 上部の **System instructions** を開き、`bundle.txt` の中身を全部貼り付ける。
4. 左上の名前を「FELIPE AI v1」にして保存。
5. チャット欄に `test-questions.md` の質問を 1 つ貼って、出力の形（【下書き】【スタッフ向けメモ】）を確認。

AI Studio は同じ Google アカウントなら誰でも開けるので、運営の共有アカウントで作ると楽。

## 毎日の流れ

1. Whop の質問チャンネルを見て、質問をコピー。
2. AI Studio のチャットに貼る（質問者の名前は入れない。「〜さん」は投稿時に付ける）。
3. 出てきた【下書き】を Felipe に LINE で送る。【スタッフ向けメモ】は送らない。`[要確認]` `[Felipe 判断]` が付いていたら、その旨を一言添える。
4. Felipe が「OK」か修正を返す。
5. 承認された本文を Whop に投稿。
6. `approval-log.md` に、質問・下書き・Felipe の修正・投稿した本文を残す。

## Felipe の修正を AI に覚えさせる

- 修正が「言い方」なら → `system-prompt.md` の「5. Felipe の言い回し」か「6. やってはいけない書き方」に 1 行足す。
- 修正が「判断の中身」なら → `knowledge-core.md` の該当する章に 1 行足す。
- 新しい授業が公開されたら → 文字起こしを `source/` に入れる。
- 直したら `build-bundle.sh` を実行して `bundle.txt` を作り直し、AI Studio の System instructions を貼り直す。

## ルール（最初に Felipe と確認する）

- AI の下書きは **必ず Felipe が読んでから** 投稿する。承認なしで投稿しない。
- 痛み・ケガ・病気・薬・サプリの医療的効果・薬物 → AI は答えない。Felipe が直接答えるか、医師へ。
- 価格・入会・返金 → 運営が答える。
- 知識に無いことは AI に作らせない。`[要確認]` が付いたら Felipe に聞いて、答えを `knowledge-core.md` に足す。

## 第 2 段階に進む目安

- 10 件やって、Felipe の修正が「言い方の微調整」だけになったら。
- その時点で、承認ログ付きの運営用ページ（非公開）に移す。Whop との自動連携は第 3 段階。
