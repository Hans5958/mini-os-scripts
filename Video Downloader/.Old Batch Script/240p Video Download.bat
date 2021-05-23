@echo off

title Downloading videos in 240p...
youtube-dl -f "(mp4)[height<360]" --no-check-certificate -a "240p Video List.txt" -o "Videos\%%(title)s [240p].%%(ext)s"

pause
exit /B

