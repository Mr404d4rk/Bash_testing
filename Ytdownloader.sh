#!/usr/bin/bash

YELLOW='\e[33m'
GREEN='\e[32m'
RED='\e[31m'
RESET='\e[0m'

command -v yt-dlp &>/dev/null || {
    echo -e "${RED}[!]yt-dlp not installed${RESET}"
    exit 1
}
read -p $'\e[33mEnter YouTube URL:\e[0m ' URL

if [[ -z $URL ]]; then
  echo -e "${RED}No URL provided.${RESET}"
  exit 1
fi

DOWNLOAD_DIR="/mnt/c/Users/Mr404d4rk/youtube_downloads"
mkdir -p "$DOWNLOAD_DIR"

echo -e "${GREEN}Downloading...${RESET}"


    yt-dlp \
        --newline \
        --progress \
        --no-warnings \
        -x --audio-format mp3 \
        -o "$DOWNLOAD_DIR/%(title)s.%(ext)s" \
        "$URL" \ 
        2>/dev/null
  echo -e "${GREEN}[+]Done!\n[+]Saved to:${RESET}${YELLOW}$DOWNLOAD_DIR${RESET}"


