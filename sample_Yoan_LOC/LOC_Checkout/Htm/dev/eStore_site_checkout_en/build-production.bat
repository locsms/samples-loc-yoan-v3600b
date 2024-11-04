if not "%1"=="" cd %1Htm\dev\eStore_site_checkout_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_checkout_en
copy app-production.json ..\eStore\app.json
copy index-production.html ..\eStore\index.html

cd ..\eStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\eCheckout\resources /s /q
md ..\..\eCheckout\resources

xcopy facebook.js ..\..\eCheckout\ /y >nul
xcopy google.js ..\..\eCheckout\ /y >nul

xcopy build\Production\SMS\*.* ..\..\eCheckout\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\eCheckout\resources\ /s /y >nul

if not "%1"=="" cd %1
