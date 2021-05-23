@echo off
echo Showing folder contents!
dir %windir%\Prefetch\*.*
echo Deleting Prefetch!
del /f /q %windir%\Prefetch
echo Showing folder contents!
dir %windir%\Prefetch\*.*
pause