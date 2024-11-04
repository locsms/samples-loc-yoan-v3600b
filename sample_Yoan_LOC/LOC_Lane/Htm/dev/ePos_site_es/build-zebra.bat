if not "%1"=="" pushd %1Htm\dev\ePos_site_es

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-zebra.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-es\zebra\resources /s /q
md ..\..\ePos-es\zebra\resources

xcopy SMSConsoleLogs.js ..\..\ePos-es\zebra\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-es\zebra\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-es\zebra\resources\ /s /y >nul

rem Zebra driver
xcopy "..\ePos_site_en\hardware\ebapi-modules.js" "..\..\ePos-es\zebra\hardware\" /y /i /d >nul

if not "%1"=="" popd
