@echo off

title Downloading videos in 480p...
youtube-dl -f "(mp4)[height<720]" --no-check-certificate -a "480p Video List.txt" -o "Videos\%%(title)s [480p].%%(ext)s"

pause
exit /B

