@echo off

title Downloading M4A...
youtube-dl -f m4a --no-check-certificate -a "M4A Playlist List.txt" -o "Audios\[P] %%(playlist_uploader)s - %%(playlist_title)s (M4A)\%%(artist)s - %%(track)s.%%(ext)s" 

pause
exit /B

