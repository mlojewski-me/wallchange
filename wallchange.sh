#!/bin/bash

set -eu -o pipefail

source .env

### START VARIABLES ###
UNSPLASH_URL="https://api.unsplash.com/photos/random?client_id=${UNSPLASH_CLIENT_ID}&orientation=landscape&query=${UNSPLASH_QUERY}"
WALLPAPER_DIR="${HOME}/.cache/wallchange"
WALLPAPER_GLOB="${WALLPAPER_DIR}/wallpaper-*.jpg"
WALLPAPER_PATH="${WALLPAPER_DIR}/wallpaper-$(uuidgen | head -c 8).jpg"
### END VARIABLES ###

### PREPARE ###
mkdir -p "${WALLPAPER_DIR}"

### RUN ###
wget -qO - "${UNSPLASH_URL}" | jq -r .urls.raw | wget --no-use-server-timestamps -qO "${WALLPAPER_PATH}" -i -
plasma-apply-wallpaperimage "${WALLPAPER_PATH}"

### CLEAR ###
ls -t ${WALLPAPER_GLOB} | tail -n +4 | xargs rm --
