if not "%1"=="" pushd %1Htm\dev\ePos_site_fr

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-honeywell.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-fr\honeywell\resources /s /q
md ..\..\ePos-fr\honeywell\resources

xcopy SMSConsoleLogs.js ..\..\ePos-fr\sell\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-fr\sell\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-fr\honeywell\resources\ /s /y >nul

rem Honeywell driver
xcopy "..\ePos_site_en\hardware\BarcodeReader.js" "..\..\ePos-fr\honeywell\" /y /i /d >nul
xcopy "..\ePos_site_en\hardware\BarcodeReader-Ajax.js" "..\..\ePos-fr\honeywell\" /y /i /d >nul 
xcopy "..\ePos_site_en\hardware\BarcodeReader-SwiftSettings.js" "..\..\ePos-fr\honeywell\" /y /i /d >nul

if not "%1"=="" popd
