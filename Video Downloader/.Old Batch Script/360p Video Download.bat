@echo off

title Downloading videos in 360p...
youtube-dl -f "(mp4)[height<480]" --no-check-certificate -a "360p Video List.txt" -o "Videos\%%(title)s [360p].%%(ext)s"

pause
exit /B

