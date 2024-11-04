if not "%1"=="" pushd %1Htm\dev\ePos_site_es

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-dryrain.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-es\dryrain\resources /s /q
md ..\..\ePos-es\dryrain\resources

xcopy SMSConsoleLogs.js ..\..\ePos-es\dryrain\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-es\dryrain\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-es\dryrain\resources\ /s /y >nul

if not "%1"=="" popd
