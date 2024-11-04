if not "%1"=="" pushd %1Htm\dev\ePos_site_es

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-production.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-es\sell\resources /s /q
md ..\..\ePos-es\sell\resources

xcopy SMSConsoleLogs.js ..\..\ePos-es\sell\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-es\sell\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-es\sell\resources\ /s /y >nul

if not "%1"=="" popd
