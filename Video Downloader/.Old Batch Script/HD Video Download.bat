@echo off

title Downloading videos in HD...
youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best --no-check-certificate -a "HD Video List.txt" -o "Videos\%%(title)s [HD].%%(ext)s"

pause
exit /B

