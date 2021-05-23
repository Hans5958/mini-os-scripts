@echo off

title Downloading user videos...
youtube-dl -f "(mp4)[height<480]" --no-check-certificate -a "User List.txt" -o "Videos\[U] %%(uploader)s\%%(title)s.%%(ext)s"

pause
exit /B

