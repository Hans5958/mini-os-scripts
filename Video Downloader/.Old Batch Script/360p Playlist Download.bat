@echo off

title Downloading playlist videos in 360p...
youtube-dl -f "(mp4)[height<480]" --no-check-certificate -a "360p Playlist List.txt" -o "Videos\[P] %%(playlist_uploader)s - %%(playlist_title)s (360p)\%%(title)s.%%(ext)s"

pause
exit /B

