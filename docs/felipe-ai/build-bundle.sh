#!/usr/bin/env bash
# Rebuilds bundle.txt (paste into Google AI Studio "System instructions") from the parts.
set -euo pipefail
cd "$(dirname "$0")"
{
  cat system-prompt.md
  printf '\n\n=====================================================\n'
  cat knowledge-core.md
  printf '\n\n=====================================================\n# FELIPE AI ｜ 知識ファイル B：原文（授業の文字起こし・台本・LIVE・YouTube）\n\n迷ったらこちらの原文を優先する。話し言葉のまま。\n'
  for f in source/side-raise.txt source/cg-pulldown.txt source/high-pull.txt source/preacher-curl.txt source/activation.txt; do
    printf '\n\n## 授業：%s\n\n' "$(basename "$f" .txt)"
    cat "$f"
  done
  printf '\n\n## 台本（Felipe 決定稿）：サイドレイズ／スミスショルダープレス／ダンベルインクラインプレス\n\n'
  cat ../scripts-batch1-felipe.md
  printf '\n\n## YouTube：PULL DAY パート 2（Felipe と生徒の会話。「トレーナー」が Felipe）\n\n'
  cat source/pullday-part2-notes.txt
  printf '\n\n## YouTube：ポージング指導（自動文字起こし。数字の羅列はカウントの誤認識なので無視）\n\n'
  cat ../../assets/yt/posing-transcript.txt
  printf '\n\n## 11/23 Instagram LIVE 台本（UNIÃO の中身の説明）\n\n'
  cat ../live-1123.md
} > bundle.txt
printf 'bundle.txt: %s bytes, %s chars\n' "$(wc -c < bundle.txt)" "$(wc -m < bundle.txt)"
