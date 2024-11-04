if not "%1"=="" pushd %1Htm\dev\ePos_site_en

call build-copy %1

if not "%1"=="" cd %1Htm\dev\ePos_site_en
copy app-production.json ..\ePos\app.json
copy index-dryrain.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos\dryrain\resources /s /q
md ..\..\ePos\dryrain\resources

xcopy SMSConsoleLogs.js ..\..\ePos\dryrain\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos\dryrain\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos\dryrain\resources\ /s /y >nul

if not "%1"=="" popd
