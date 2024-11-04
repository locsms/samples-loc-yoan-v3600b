if not "%1"=="" cd %1Htm\dev\eStore_site_display_es
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_display_es
copy app-production.json ..\eStore\app.json
copy index-production.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eDisplay-es\resources /s /q
md ..\..\eDisplay-es\resources

xcopy facebook.js ..\..\eDisplay-es\ /y >nul
xcopy google.js ..\..\eDisplay-es\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eDisplay-es\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eDisplay-es\resources\ /s /y >nul

if not "%1"=="" cd %1
