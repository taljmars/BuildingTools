
@ECHO off
@SET TAKEDIR=%1
@SET BLDVERSION=%2
shift

@ECHO Testing build %BLDVERSION% 

@SET TESTPATH=%TAKEDIR%\..\tmp

mkdir %TESTPATH%

echo --------------- Windows 64 Tester --------------
echo f | xcopy /f /y %TAKEDIR%\Windows64\* %TESTPATH%\

@ECHO Done