
@ECHO off
@SET TAKEDIR=%1
@SET BLDVERSION=%2
shift

@ECHO Build is %BLDVERSION% 

echo --------------- Windows 64 - Lite --------------
del %TAKEDIR%\Windows64-lite\*.zip
echo f | xcopy /f /y %TAKEDIR%\..\DroneGCS\ClientInstallation\Windows\Console-*-win-x64.zip %TAKEDIR%\Windows64-lite\Console-1.%BLDVERSION%-win-x64.zip
echo f | xcopy /f /y %TAKEDIR%\..\DroneServer\ServerInstallation\Windows64-lite\ServerCore-*-win-x64.zip %TAKEDIR%\Windows64-lite\ServerCore-1.%BLDVERSION%-win-x64.zip

::echo --------------- Linux --------------
::del %TAKEDIR%\Linux32\*.tar
::echo f | xcopy /f /y %TAKEDIR%\..\DroneGCS\ClientInstallation\Linux-32\Console-*-linux-x32.tar %TAKEDIR%\Linux32\Console-1.%BLDVERSION%-linux-x32.tar
::echo f | xcopy /f /y %TAKEDIR%\..\DroneServer\ServerInstallation\Linux\ServerCore-*-linux.tar %TAKEDIR%\Linux32\ServerCore-1.%BLDVERSION%-linux.tar

@ECHO Done