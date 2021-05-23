@echo off

title Downloading M...
youtube-dl -f mp3 --no-check-certificate -a "MP3 List.txt" -o "Videos\%%(title)s [HD].%%(ext)s"

pause
exit /B

