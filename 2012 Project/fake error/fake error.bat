@echo off


echo X=MsgBox("Dont click THIS",3+64,"Warning") > msg1.vbs
echo X=MsgBox("Better stop",3+16,"Warning") > msg2.vbs
echo X=MsgBox("STOP IT",3+16,"Warning") > msg4.vbs
echo X=MsgBox("NOWWW",3+16,"Warning­") > msg5.vbs
echo X=MsgBox("PLEASE.... NOWWW",3+16,"Warning­") > msg5.1.vbs
echo X=MsgBox("SERIUS PLEASE.... NOWWW",3+16,"Warning­") > msg5.2.vbs
echo X=MsgBox("IF NOT......",3+16,"Warning­") > msg5.3.vbs
echo X=MsgBox("I AM GONNA GIVE U A BADDDDD VIRUS IF U DONT STOP IT",3+16,"Warning") > msg6.vbs
cls
:A
ping locallhost -n 4 >nul 
start msg1.vbs
ping locallhost -n 4 >nul 
start msg2.vbs
ping locallhost -n 4 >nul 
start msg4.vbs
ping locallhost -n 4 >nul 
start msg5.vbs
ping locallhost -n 4 >nul 
start msg5.1.vbs
ping locallhost -n 4 >nul 
start msg5.2.vbs
ping locallhost -n 4 >nul 
start msg5.3.vbs
ping locallhost -n 4 >nul
start msg6.vbs
goto A