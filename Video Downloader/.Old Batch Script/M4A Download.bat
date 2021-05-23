@echo off

title Downloading MP3...
youtube-dl -f m4a --no-check-certificate -a "M4A List.txt" -o "Audios\%%(title)s.%%(ext)s"

pause
exit /B

