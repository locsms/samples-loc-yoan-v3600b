if not "%1"=="" cd %1Htm\dev\eStore_site_display_fr
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_display_fr
copy app-production.json ..\eStore\app.json
copy index-production.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eDisplay-fr\resources /s /q
md ..\..\eDisplay-fr\resources

xcopy facebook.js ..\..\eDisplay-fr\ /y >nul
xcopy google.js ..\..\eDisplay-fr\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eDisplay-fr\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eDisplay-fr\resources\ /s /y >nul

if not "%1"=="" cd %1
