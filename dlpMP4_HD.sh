#uses yt-dlp to download specified video @ 1920x1080x60fps
#all you need to do is paste a link and you're golden
#MUST have ffmpeg installed to merge formats. 'sudo apt install ffmpeg -y'

echo paste link to video here

read vidLink

yt-dlp -f 'bv[height=1080][ext=mp4]+ba[ext=m4a]' --merge-output-format mp4 $vidLink -o '%(id)s.mp4'

echo DOWNLOAd of vidLink starting...
