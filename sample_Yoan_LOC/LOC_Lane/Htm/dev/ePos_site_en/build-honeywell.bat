if not "%1"=="" pushd %1Htm\dev\ePos_site_en

call build-copy %1

if not "%1"=="" cd %1Htm\dev\ePos_site_en
copy app-production.json ..\ePos\app.json
copy index-honeywell.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos\honeywell\resources /s /q
md ..\..\ePos\honeywell\resources

xcopy SMSConsoleLogs.js ..\..\ePos\sell\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos\sell\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos\honeywell\resources\ /s /y >nul

rem Honeywell driver
xcopy "..\ePos_site_en\hardware\BarcodeReader.js" "..\..\ePos\honeywell\" /y /i /d >nul
xcopy "..\ePos_site_en\hardware\BarcodeReader-Ajax.js" "..\..\ePos\honeywell\" /y /i /d >nul 
xcopy "..\ePos_site_en\hardware\BarcodeReader-SwiftSettings.js" "..\..\ePos\honeywell\" /y /i /d >nul

if not "%1"=="" popd
