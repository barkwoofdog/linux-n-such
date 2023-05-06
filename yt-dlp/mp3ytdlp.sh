#!/bin/bash

echo paste link to video to extract audio from

read vidLink

echo type desired filename. extension is already MP3

read filename

yt-dlp -f 'ba' -x --audio-format mp3 $vidLink -o $HOME/$filename.mp3

echo $filename.mp3 download is complete
