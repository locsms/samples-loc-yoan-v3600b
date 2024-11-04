if not "%1"=="" cd %1Htm\dev\eStore_site_kiosk_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_kiosk_en
copy app-production.json ..\eStore\app.json
copy index-production.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eKiosk\resources /s /q
md ..\..\eKiosk\resources

xcopy facebook.js ..\..\eKiosk\ /y >nul
xcopy google.js ..\..\eKiosk\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eKiosk\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eKiosk\resources\ /s /y >nul

if not "%1"=="" cd %1
