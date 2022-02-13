#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Compress WebM with FFmpeg
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon images/ffmpeg.png
# @raycast.argument1 { "type": "text", "placeholder": "Input" }
# @raycast.argument2 { "type": "text", "placeholder": "Output", "optional": true }
# @raycast.packageName Console Utils

# Documentation:
# @raycast.description Compress WebM video with FFmpeg (default location is Desktop folder)

input_file="$1"
output_file="$2"
file_path=${input_file%/*}
file_base=${input_file##*/}

if [ ${#file_path} -eq 0 ] || [ "$file_path" = "$file_base" ]
    then file_path="$HOME/Desktop" input_file=${file_path}/${input_file}
fi

if [ ${#output_file} -eq 0 ] 
    then output_file="${file_path}/${file_base%.*}_compessed.${file_base##*.}"
fi

ffmpeg -i "$input_file" -vcodec libvpx-vp9 -pix_fmt yuva444p "$output_file"
