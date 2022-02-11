echo paste link to video here

read vidLink

yt-dlp -f 'bv[height=1080][ext=mp4]+ba[ext=m4a]' --merge-output-format mp4 $vidLink -o '%(id)s.mp4'

echo DOWNLOAd of vidLink starting...
