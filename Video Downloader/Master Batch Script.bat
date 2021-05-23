@echo off

:executable

:executable-p1
echo Executable choices:
echo.
echo 1. youtube-dl 
echo 2. yt-dlp
echo 3. youtube-dl (w/ update)
echo 4. yt-dlp (w/ update)
echo.
CHOICE /C 1234 /M "What's your choice"
echo.
IF ERRORLEVEL == 4 GOTO dlp-u
IF ERRORLEVEL == 3 GOTO dl-u
IF ERRORLEVEL == 2 GOTO dlp
IF ERRORLEVEL == 1 GOTO dl

:dl-u
echo Updating youtube-dl...
pip install --upgrade youtube_dl
goto dl

:dlp-u
echo Updating yt-dlp...
pip install --upgrade yt-dlp
goto dlp

:dl
set executable=youtube-dl
goto type

:dlp
set executable=yt-dlp
goto type

:: ================================================================
::                          DOWNLOAD TYPE
:: ================================================================

:type

:type-p1
echo Download type choices (page 1):
echo.
echo 1. 240p videos
echo 2. 240p playlist
echo 3. 360p videos
echo 4. 360p playlist
echo 5. 480p videos
echo 6. 480p playlist
echo 7. HD (or best) videos
echo 8. HD (or best) playlist
echo.
echo 9. Previous
echo 0. Next
echo.
CHOICE /C 1234567890 /M "What's your choice"
echo.
IF ERRORLEVEL == 10 GOTO type-p2
IF ERRORLEVEL == 9 GOTO type-p1
IF ERRORLEVEL == 8 GOTO hd-p
IF ERRORLEVEL == 7 GOTO hd-v
IF ERRORLEVEL == 6 GOTO 480p-p
IF ERRORLEVEL == 5 GOTO 480p-v
IF ERRORLEVEL == 4 GOTO 360p-p
IF ERRORLEVEL == 3 GOTO 360p-v
IF ERRORLEVEL == 2 GOTO 240p-p
IF ERRORLEVEL == 1 GOTO 240p-v

:type-p2
echo Download type choices (page 2):
echo.
echo 1. M4A audios
echo 2. M4A playlist
echo 3. MP3 audios
echo 4. User videos (360p)
echo.
echo 9. Previous
echo 0. Next
echo.
CHOICE /C 123490 /M "What's your choice"
echo.
IF ERRORLEVEL == 6 GOTO type-p2
IF ERRORLEVEL == 5 GOTO type-p1
IF ERRORLEVEL == 4 GOTO user
IF ERRORLEVEL == 3 GOTO mp3
IF ERRORLEVEL == 2 GOTO m4a-p
IF ERRORLEVEL == 1 GOTO m4a-v

:240p-p
echo Downloading playlist videos in 240p...
echo.
%executable% -f "(mp4)[height<360]" --no-check-certificate -a "Queue List.txt" -o "Videos\[P] %%(playlist_uploader)s - %%(playlist_title)s (240p)\%%(title)s.%%(ext)s"
GOTO end

:240p-v
echo Downloading videos in 240p...
echo.
%executable% -f "(mp4)[height<360]" --no-check-certificate -a "Queue List.txt" -o "Videos\%%(title)s (240p).%%(ext)s"
GOTO end

:360p-p
echo Downloading playlist videos in 360p...
echo.
%executable% -f "(mp4)[height<480]" --no-check-certificate -a "Queue List.txt" -o "Videos\[P] %%(playlist_uploader)s - %%(playlist_title)s (360p)\%%(title)s.%%(ext)s"
GOTO end

:360p-v
echo Downloading videos in 360p...
echo.
%executable% -f "(mp4)[height<480]" --no-check-certificate -a "Queue List.txt" -o "Videos\%%(title)s (360p).%%(ext)s"
GOTO end

:480p-p
echo Downloading playlist videos in 480p...
echo.
%executable% -f "(mp4)[height<720]" --no-check-certificate -a "Queue List.txt" -o "Videos\[P] %%(playlist_uploader)s - %%(playlist_title)s (480p)\%%(title)s.%%(ext)s"
GOTO end

:480p-v
echo Downloading videos in 480p...
echo.
%executable% -f "(mp4)[height<720]" --no-check-certificate -a "Queue List.txt" -o "Videos\%%(title)s (480p).%%(ext)s"
GOTO end

:hd-p
echo Downloading playlist videos in HD...
echo.
%executable% -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best --no-check-certificate -a "Queue List.txt" -o "Videos\[P] %%(playlist_uploader)s - %%(playlist_title)s (360p)\%%(title)s.%%(ext)s"
GOTO end

:hd-v
echo Downloading videos in HD...
echo.
%executable% -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best --no-check-certificate -a "Queue List.txt" -o "Videos\%%(title)s [HD].%%(ext)s"
GOTO end

:m4a-v
echo Downloading audios in M4A...
echo.
%executable% -f m4a --no-check-certificate -a "Queue List.txt" -o "Audios\%%(title)s.%%(ext)s"
GOTO end

:m4a-p
echo Downloading playlist audios in M4A...
echo.
%executable% -f m4a --no-check-certificate -a "Queue List.txt" -o "Audios\[P] %%(playlist_uploader)s - %%(playlist_title)s (M4A)\%%(artist)s - %%(track)s.%%(ext)s" 
GOTO end

:mp3
echo Downloading audios in MP3...
echo.
%executable% -f mp3 --no-check-certificate -a "Queue List.txt" -o "Videos\%%(title)s [HD].%%(ext)s"
GOTO end

:user
echo Downloading user videos in 360p...
echo.
%executable% -f "(mp4)[height<480]" --no-check-certificate -a "Queue List.txt" -o "Videos\[U] %%(uploader)s\%%(title)s.%%(ext)s"
GOTO end

:end
echo.
echo All done!
pause