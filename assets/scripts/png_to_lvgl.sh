#!/usr/bin/env bash
set -euo pipefail

for img in animation_frame_*.png; do
  name="${img%.png}"

  echo "Converting $img -> $name.c"

  lv_img_conv \
    "$img" \
    -o "$name.c" \
    --color-format CF_INDEXED_1_BIT \
    --output-format c
done

echo "Done."
