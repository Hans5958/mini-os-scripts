@echo off
echo ----------------------------------------------------------------------
echo WARNING! A VIRUS HAS BEEN DETECTED ON YOUR COMPUTER!
ping localhost -n 3 >nul
echo File recognized as "Bink32.dll"
ping localhost -n 3 >nul
echo Initiating Antivirus Software...
ping localhost -n 3 >nul
:menu
echo Delete virus? (Y/N)
set /p menu=
if not defined menu goto menu
if /i %menu% equ Y (
set menu=
goto yes
)
if /i %menu% equ N (
set menu=
goto No
)


:yes
echo Virus avoided deletion. Now relocated to C:/ Drive.
ping localhost -n 3 >nul
echo Will attempt delete again...
ping localhost -n 3 >nul
echo Deletion failed.
ping localhost -n 3 >nul
echo Files being deleted
ping localhost -n 2 >nul
dir/s
dir/s
taskkill /f /im explorer.exe
dir/s
dir/s
echo ----------------------------------------------------------------------
ping localhost -n 5 >nul
start /im explorer.exe
echo Just Kidding! Nothing has been deleted. APRIL FOOLS!!!!!
ping localhost -n 7.5 >nul

exit /b

::#########################################################################


:no
echo Virus relocated to C:/ Drive.
ping localhost -n 3 >nul
echo Files being deleted.
ping localhost -n 2 >nul
dir/s
dir/s
taskkill /f /im explorer.exe
dir/s
dir/s
echo ----------------------------------------------------------------------
ping localhost -n 3 >nul
start /im explorer.exe
echo Just Kidding! Nothing has been deleted. APRIL FOOLS!!!!!
ping localhost -n 7.5 >nul


exit /b