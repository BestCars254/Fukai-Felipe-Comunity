# FELIPE AI ｜ 第 1 段階（Google AI Studio で運用）

目的：メンバーの質問に、Felipe が答えそうな下書きを AI が作る → Felipe が承認・修正 → 運営が投稿。Felipe の負担を「読んで OK を出す」だけにする。

## ファイル

| ファイル | 中身 | 使い方 |
|---|---|---|
| `gem-instructions.txt` | Gem の「指示」に貼る短い版 | 口調やルールを直したらここも直す |
| `FELIPE-AI-knowledge.txt`（**GitHub には置かない**） | Gem の「知識」にアップロードするファイル（知識 A・B・C ＋ 原文） | Drive 保管。ファイルを直したら作り直す |
| `bundle.txt` | 指示 + 知識を 1 本にしたもの（AI Studio 用、参考） | 通常は使わない |
| `system-prompt.md` | 人格・判断の型・禁止事項・出力フォーマット | 口調を直すときはここ |
| `knowledge-core.md` | 授業から抜き出した「判断の原則」（知識 A） | Felipe の修正を足すときはここ |
| `knowledge-ff-method.md`（**GitHub には置かない**） | FF 法・部位別キュー・既往歴の型・特典の扱い（知識 C） | Felipe の Gemini プロファイル由来。運営の Drive に保管し、このフォルダに置いてから build-bundle.sh を実行 |
| `source/*.txt` | 授業の文字起こし（原文、知識 B） | 新しい授業が出たら追加 |
| `source/gemini-profile-2026-11-28.md`（**GitHub には置かない**） | Felipe の Gemini が出した人物・理論プロファイル | 本人の個人情報を含むため Drive 保管。このサイトは GitHub から公開されるので、リポジトリに入れない |
| `test-questions.md` | 最初に試す質問 12 問 | Felipe に見てもらう用 |
| `approval-log.md` | 承認・修正の記録テンプレ | 毎回ここに残す |
| `build-bundle.sh` | bundle.txt を作り直すスクリプト | ファイルを直したら実行 |

## セットアップ：Gemini の Gem で（無料・5 分）

1. Gemini アプリ（gemini.google.com）→ 左の「Gem」→「Gem を作成」。
2. 名前：FELIPE AI v1。
3. **指示** に `gem-instructions.txt` の中身を貼る。
4. **知識** に `FELIPE-AI-knowledge.txt` をアップロード（運営の Drive に保管してあるもの。GitHub には置かない）。
5. 保存。右上の共有で運営メンバーにリンクを渡す。
6. `test-questions.md` の質問を 1 つ貼って、出力の形（【下書き】【スタッフ向けメモ】）を確認。

AI Studio（有料になりうる）は使わない。Gem は Gemini の通常プランの範囲で動く。

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
- 直したら `build-bundle.sh` を実行して `bundle.txt` を作り直し、その「知識ファイル A」以降を `FELIPE-AI-knowledge.txt` として Gem の知識に再アップロードする。

## ルール（最初に Felipe と確認する）

- AI の下書きは **必ず Felipe が読んでから** 投稿する。承認なしで投稿しない。
- 痛み・ケガ・病気・薬・サプリの医療的効果・薬物 → AI は答えない。Felipe が直接答えるか、医師へ。
- 価格・入会・返金 → 運営が答える。
- 知識に無いことは AI に作らせない。`[要確認]` が付いたら Felipe に聞いて、答えを `knowledge-core.md` に足す。

## 第 2 段階に進む目安

- 10 件やって、Felipe の修正が「言い方の微調整」だけになったら。
- その時点で、承認ログ付きの運営用ページ（非公開）に移す。Whop との自動連携は第 3 段階。
