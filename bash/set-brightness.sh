#!/bin/bash
TARGET="amdgpu_bl0"
cd /sys/class/backlight
MAX="$(cat "${TARGET}/max_brightness")"
LOGIC="$(echo "($1 * ${MAX})/1" | bc)"
for i in */; do
    if [[ "${TARGET}/" != "$i" && -e "${i}brightness" ]]; then
        cat "${i}max_brightness" > "${i}brightness"
    fi
done
echo "$LOGIC" > "${TARGET}/brightness"
