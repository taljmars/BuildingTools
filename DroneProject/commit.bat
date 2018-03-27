
@ECHO off
@SET TAKEDIR=%1
@SET BLDVERSION=%2
shift

echo --------------- Pushing --------------
@ECHO Build-%BLDVERSION% > %TAKEDIR%\version

git status
git add *
git commit -m "Building standalone package for Build-%BLDVERSION%"
git status

@ECHO Done