if not "%1"=="" cd %1Htm\dev\eStore_site_display_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_display_en
copy app-production.json ..\eStore\app.json
copy index-production.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eDisplay\resources /s /q
md ..\..\eDisplay\resources

xcopy facebook.js ..\..\eDisplay\ /y >nul
xcopy google.js ..\..\eDisplay\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eDisplay\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eDisplay\resources\ /s /y >nul

if not "%1"=="" cd %1
