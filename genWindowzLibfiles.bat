
@Echo OFF

C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat

SETLOCAL
for %%I in (%0) do %%~dI
for %%I in (%0) do cd "%%~pI"
cd liveMedia
nmake /B -f liveMedia.mak
cd ../groupsock
nmake /B -f groupsock.mak
cd ../UsageEnvironment
nmake /B -f UsageEnvironment.mak
cd ../BasicUsageEnvironment
nmake /B -f BasicUsageEnvironment.mak
cd ../testProgs
nmake /B -f testProgs.mak
cd ../mediaServer
nmake /B -f mediaServer.mak
cd ../proxyServer
nmake /B -f proxyServer.mak
ENDLOCAL
