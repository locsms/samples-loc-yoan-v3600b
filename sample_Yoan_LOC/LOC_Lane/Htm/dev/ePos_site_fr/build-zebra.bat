if not "%1"=="" pushd %1Htm\dev\ePos_site_fr

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-zebra.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-fr\zebra\resources /s /q
md ..\..\ePos-fr\zebra\resources

xcopy SMSConsoleLogs.js ..\..\ePos-fr\zebra\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-fr\zebra\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-fr\zebra\resources\ /s /y >nul

rem Zebra driver
xcopy "..\ePos_site_en\hardware\ebapi-modules.js" "..\..\ePos-fr\zebra\hardware\" /y /i /d >nul

if not "%1"=="" popd
