if not "%1"=="" pushd %1Htm\dev\ePos_site_en

call build-copy %1

if not "%1"=="" cd %1Htm\dev\ePos_site_en
copy app-production.json ..\ePos\app.json
copy index-datalogic.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos\datalogic\resources /s /q
md ..\..\ePos\datalogic\resources

xcopy SMSConsoleLogs.js ..\..\ePos\datalogic\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos\datalogic\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos\datalogic\resources\ /s /y >nul

rem Datalogic EB
xcopy "..\ePos_site_en\hardware\dl_barcode.js" "..\..\ePos\datalogic\hardware\" /y /i /d >nul

if not "%1"=="" popd
