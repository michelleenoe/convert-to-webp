#!/bin/sh

DIR="${1:-.}"
OUTDIR="$DIR/webp"

if ! command -v cwebp >/dev/null 2>&1; then
  echo "Error: cwebp is not installed." >&2
  exit 1
fi

mkdir -p "$OUTDIR"

for file in "$DIR"/*; do
  case "$file" in
    *.jpg|*.JPG|*.jpeg|*.JPEG|*.png|*.PNG|*.gif|*.GIF)
      base="$(basename "$file")"
      out="$OUTDIR/${base%.*}.webp"
      if [ ! -f "$out" ]; then
        echo "Converting $file → $out"
        cwebp -q 80 "$file" -o "$out"
      else
        echo "Skipping $file (already converted)"
      fi
      ;;
    *.webp|*.WEBP)
      echo "Skipping $file (already .webp)"
      ;;
  esac
done
