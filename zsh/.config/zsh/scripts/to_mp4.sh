#!/bin/zsh
FILE=$1
SPEED=$2
FILENAME=$(basename "$FILE")
DIRNAME=$(dirname "$FILE")
FNAME="${FILENAME%.*}"
ffmpeg -i "$FILE" -an -filter:v "setpts=PTS/${SPEED:-1}" "$DIRNAME/$FNAME-1.mp4"
