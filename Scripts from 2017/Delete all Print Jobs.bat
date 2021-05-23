@echo off
echo Stopping service!
net stop spooler
echo Showing folder contents!
dir %windir%\System32\spool\PRINTERS\*.*
echo Deleting print jobs!
del /f /q %windir%\System32\spool\PRINTERS\*.*
echo Showing folder contents!
dir %windir%\System32\spool\PRINTERS\*.*
echo Starting service!
net start spooler
pause