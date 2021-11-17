#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT)

export DISPLAY=:0

cd /boot/bydefault/all-htmls/
python -m http.server &
sleep 2s
chromium --kiosk --start-fullscreen --incognito --noerrdialogs --disable-features=Translate --no-first-run --disable-infobars --use-fake-ui-for-media-stream http://localhost:8000/ga-mimicry-cam-2.html
