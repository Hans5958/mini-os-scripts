@echo off

title Downloading videos in HD...
youtube-dl -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best --no-check-certificate -a "HD Playlist List.txt" -o "Videos\[P] %%(playlist_uploader)s - %%(playlist_title)s (360p)\%%(title)s.%%(ext)s"

pause
exit /B

