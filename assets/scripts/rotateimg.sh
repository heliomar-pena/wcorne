#!/usr/bin/env bash
set -e

mkdir -p rotated

for img in animation_frame_*.png; do
    echo "Rotating $img"

    magick "$img" -rotate 90 "rotated/$img"
done

echo "Done. Rotated images are in ./rotated"
