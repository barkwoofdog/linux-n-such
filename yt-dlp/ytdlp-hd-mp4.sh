#!/bin/bash

echo paste link to video here

read vidLink

echo type your desired filename excluding the extension

read vidTitle

yt-dlp -f 'bv[height=1080][ext=mp4]+ba[ext=m4a]' --merge-output-format mp4 $vidLink -o $HOME/$vidTitle.mp4

echo download of $vidTitle.mp4 is complete!
