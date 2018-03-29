
@ECHO off
@SET TAKEDIR=%1
@SET BLDVERSION=%2
shift

@ECHO Testing build %BLDVERSION% 

@SET TESTPATH=%TAKEDIR%\..\tmp

@RMDIR /s /q %TESTPATH%
@MKDIR %TESTPATH%

@ECHO get current directory
@SET PWD=%cd%
@ECHO %PWD%

@ECHO --------------- Windows 64 Tester --------------
@ECHO f | xcopy /f /y %TAKEDIR%\Windows64-lite\* %TESTPATH%\
@CD %TESTPATH%
@ECHO INSTALLING
@CALL install.bat
@ECHO RUNNING
@CALL run.bat

@ECHO Done