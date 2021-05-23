@echo off

title Downloading playlist videos in 240p...
youtube-dl -f "(mp4)[height<360]" --no-check-certificate -a "240p Playlist Download.txt" -o "Videos\[P] %%(playlist_uploader)s - %%(playlist_title)s (240p)\%%(title)s.%%(ext)s"

pause
exit /B

