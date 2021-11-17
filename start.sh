#!/bin/bash

SCRIPT=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT)

chromium --kiosk --start-fullscreen --incognito --noerrdialogs --disable-features=Translate --no-first-run --disable-infobars --use-fake-ui-for-media-stream /boot/bydefault/all-htmls/ga-mimicry-cam-1.html
