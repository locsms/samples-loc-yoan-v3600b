if not "%1"=="" pushd %1Htm\dev\ePos_site_es

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-datalogic.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-es\datalogic\resources /s /q
md ..\..\ePos-es\datalogic\resources

xcopy SMSConsoleLogs.js ..\..\ePos-es\datalogic\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-es\datalogic\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-es\datalogic\resources\ /s /y >nul

rem Datalogic EB
xcopy "..\ePos_site_en\hardware\dl_barcode.js" "..\..\ePos-es\datalogic\hardware\" /y /i /d >nul

if not "%1"=="" popd
