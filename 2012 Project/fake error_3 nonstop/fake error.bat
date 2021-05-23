@echo off

echo X=MsgBox("Dont click THIS",3+64,"Warning") > msg1.vbs
cls
:a
ping locallhost -n 4 >nul 
start msg1.vbs
goto A