@echo off

echo X=MsgBox("Dont click THIS",3+64,"Warning") > msg1.vbs
echo X=MsgBox("Better stop",3+16,"Warning") > msg2.vbs
echo X=MsgBox("STOP IT",3+16,"Warning") > msg4.vbs
echo X=MsgBox("NOWWW",3+16,"Warning­") > msg5.vbs
echo X=MsgBox("I AM GONNA GIVE U A BADDDDD VIRUS IF U DONT STOP IT",3+16,"Warning") > msg6.vbs
cls
:A
start msg1.vbs
start msg2.vbs
start msg4.vbs
start msg5.vbs
start msg6.vbs
goto A
