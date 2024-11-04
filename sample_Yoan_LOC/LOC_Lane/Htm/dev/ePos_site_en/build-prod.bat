if not "%1"=="" pushd %1Htm\dev\ePos_site_en

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-production.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos\sell\resources /s /q
md ..\..\ePos\sell\resources

xcopy SMSConsoleLogs.js ..\..\ePos\sell\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos\sell\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos\sell\resources\ /s /y >nul

if not "%1"=="" popd
