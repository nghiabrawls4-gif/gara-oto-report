#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$ROOT_DIR"

if [ ! -f report.md ]; then
  echo "[ERROR] report.md not found"
  exit 1
fi

if ! command -v pandoc >/dev/null 2>&1; then
  echo "[ERROR] pandoc not found. Install it first."
  exit 1
fi

if ! command -v xelatex >/dev/null 2>&1; then
  echo "[ERROR] xelatex not found. Install TeX Live with XeLaTeX."
  exit 1
fi

pandoc report.md -o report.docx --from markdown --standalone --metadata title="Báo cáo đồ án: Hệ thống quản lý gara ô tô"
pandoc report.md -o report.pdf --from markdown --standalone --pdf-engine=xelatex --metadata title="Báo cáo đồ án: Hệ thống quản lý gara ô tô"

echo "[OK] Done"
