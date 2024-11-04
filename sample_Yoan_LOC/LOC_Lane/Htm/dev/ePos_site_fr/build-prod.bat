if not "%1"=="" pushd %1Htm\dev\ePos_site_fr

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-production.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-fr\sell\resources /s /q
md ..\..\ePos-fr\sell\resources

xcopy SMSConsoleLogs.js ..\..\ePos-fr\sell\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-fr\sell\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-fr\sell\resources\ /s /y >nul

if not "%1"=="" popd
