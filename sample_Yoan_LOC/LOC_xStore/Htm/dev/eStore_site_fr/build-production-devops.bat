if not "%1"=="" cd %1Htm\dev\eStore_site_fr
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_fr
copy app-production.json ..\eStore\app.json
copy index-production-devops.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eCom\resources /s /q
md ..\..\eCom\resources

xcopy facebook.js ..\..\eCom\ /y >nul
xcopy google.js ..\..\eCom\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eCom\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eCom\resources\ /s /y >nul

if not "%1"=="" cd %1
