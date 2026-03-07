#!/usr/bin/env bash
set -euo pipefail

mkdir -p inverted

for img in animation_frame_*.png; do
  echo "Inverting $img"

  magick "$img" \
    -negate \
    "inverted/$img"
done

echo "Done. Inverted images are in ./inverted"
