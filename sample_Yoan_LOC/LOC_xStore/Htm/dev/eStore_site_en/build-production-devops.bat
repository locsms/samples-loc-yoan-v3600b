if not "%1"=="" cd %1Htm\dev\eStore_site_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_en
copy app-production.json ..\eStore\app.json
copy index-production-devops.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eStore\resources /s /q
md ..\..\eStore\resources

xcopy facebook.js ..\..\eStore\ /y >nul
xcopy google.js ..\..\eStore\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eStore\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eStore\resources\ /s /y >nul

if not "%1"=="" cd %1
