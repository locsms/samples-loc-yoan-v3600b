if not "%1"=="" cd %1Htm\dev\eStore_site_es
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_es
copy app-production.json ..\eStore\app.json
copy index-production.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eTienda\resources /s /q
md ..\..\eTienda\resources

xcopy facebook.js ..\..\eTienda\ /y >nul
xcopy google.js ..\..\eTienda\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eTienda\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eTienda\resources\ /s /y >nul

if not "%1"=="" cd %1
