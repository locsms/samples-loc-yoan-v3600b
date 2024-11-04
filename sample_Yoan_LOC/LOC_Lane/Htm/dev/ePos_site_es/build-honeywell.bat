if not "%1"=="" pushd %1Htm\dev\ePos_site_es

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-honeywell.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-es\honeywell\resources /s /q
md ..\..\ePos-es\honeywell\resources

xcopy SMSConsoleLogs.js ..\..\ePos-es\sell\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-es\sell\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-es\honeywell\resources\ /s /y >nul

rem Honeywell driver
xcopy "..\ePos_site_en\hardware\BarcodeReader.js" "..\..\ePos-es\honeywell\" /y /i /d >nul
xcopy "..\ePos_site_en\hardware\BarcodeReader-Ajax.js" "..\..\ePos-es\honeywell\" /y /i /d >nul 
xcopy "..\ePos_site_en\hardware\BarcodeReader-SwiftSettings.js" "..\..\ePos-es\honeywell\" /y /i /d >nul

if not "%1"=="" popd
