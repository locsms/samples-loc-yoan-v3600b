if not "%1"=="" pushd %1Htm\dev\ePos_site_en

call build-copy %1

if not "%1"=="" cd %1Htm\dev\ePos_site_en
copy app-production.json ..\ePos\app.json
copy index-zebra.html ..\ePos\index.html

cd ..\ePos\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\ePos\zebra\resources /s /q
md ..\..\ePos\zebra\resources

xcopy SMSConsoleLogs.js ..\..\ePos\zebra\ /y >nul
xcopy build\Production\SMS\*.* ..\..\ePos\zebra\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\ePos\zebra\resources\ /s /y >nul

rem Zebra driver
xcopy "..\ePos_site_en\hardware\ebapi-modules.js" "..\..\ePos\zebra\hardware\" /y /i /d >nul

if not "%1"=="" popd
