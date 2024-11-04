if not "%1"=="" cd %1Htm\dev\mStore_site_es
call build-copy %1

if not "%1"=="" cd %1Htm\dev\mStore_site_es
copy app-production.json ..\mStore\app.json
copy index-production.html ..\mStore\index.html

cd ..\mStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\mTienda\resources /s /q
md ..\..\mTienda\resources

xcopy facebook.js ..\..\mTienda\ /y >nul
xcopy google.js ..\..\mTienda\ /y >nul
xcopy faq.html ..\..\mTienda\ /y >nul
xcopy faq.xml ..\..\mTienda\ /y >nul
xcopy PrivacyPolicy.html ..\..\mTienda\ /y >nul
xcopy TermsOfUse.html ..\..\mTienda\ /y >nul

xcopy build\Production\SMS\*.* ..\..\mTienda\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\mTienda\resources\ /s /y >nul

if not "%1"=="" cd %1
