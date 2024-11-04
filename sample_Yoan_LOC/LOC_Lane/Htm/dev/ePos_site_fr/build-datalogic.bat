if not "%1"=="" pushd %1Htm\dev\ePos_site_fr

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-datalogic.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos-fr\datalogic\resources /s /q
md ..\..\ePos-fr\datalogic\resources

xcopy SMSConsoleLogs.js ..\..\ePos-fr\datalogic\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos-fr\datalogic\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos-fr\datalogic\resources\ /s /y >nul

rem Datalogic EB
xcopy "..\ePos_site_en\hardware\dl_barcode.js" "..\..\ePos-fr\datalogic\hardware\" /y /i /d >nul

if not "%1"=="" popd
