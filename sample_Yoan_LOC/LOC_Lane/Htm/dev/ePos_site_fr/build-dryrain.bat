if not "%1"=="" pushd %1Htm\dev\ePos_site_fr

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-dryrain.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-fr\dryrain\resources /s /q
md ..\..\ePos-fr\dryrain\resources

xcopy SMSConsoleLogs.js ..\..\ePos-fr\dryrain\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-fr\dryrain\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-fr\dryrain\resources\ /s /y >nul

if not "%1"=="" popd
