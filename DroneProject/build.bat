
@ECHO off
@SET TAKEDIR=%1
@SET BLDVERSION=%2
shift

@ECHO Build is %BLDVERSION% 
:: git.exe fetch --no-tags --progress https://github.com/taljmars/StandaloneDroneGCS +refs/heads/*:refs/remotes/origin/* --depth=19

echo --------------- Windows 64 --------------
del %TAKEDIR%\Windows64\*.zip
echo f | xcopy /f /y %TAKEDIR%\..\DroneGCS\ClientInstallation\Windows\Console-*-win-x64.zip %TAKEDIR%\Windows64\Console-1.%BLDVERSION%-win-x64.zip
echo f | xcopy /f /y %TAKEDIR%\..\DroneServer\ServerInstallation\Windows64\ServerCore-*-win-x64.zip %TAKEDIR%\Windows64\ServerCore-1.%BLDVERSION%-win-x64.zip

echo --------------- Linux --------------
del %TAKEDIR%\Linux32\*.tar
echo f | xcopy /f /y %TAKEDIR%\..\DroneGCS\ClientInstallation\Linux-32\Console-*-linux-x32.tar %TAKEDIR%\Linux32\Console-1.%BLDVERSION%-linux-x32.tar
echo f | xcopy /f /y %TAKEDIR%\..\DroneServer\ServerInstallation\Linux\ServerCore-*-linux.tar %TAKEDIR%\Linux32\ServerCore-1.%BLDVERSION%-linux.tar

@ECHO Done