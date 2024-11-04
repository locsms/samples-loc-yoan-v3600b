if not "%1"=="" cd %1Htm\dev\mStore_site_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\mStore_site_en
copy app-production.json ..\mStore\app.json
copy index-production-devops.html ..\mStore\index.html

cd ..\mStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\mStore\resources /s /q
md ..\..\mStore\resources

xcopy facebook.js ..\..\mStore\ /y >nul
xcopy google.js ..\..\mStore\ /y >nul
xcopy faq.html ..\..\mStore\ /y >nul
xcopy faq.xml ..\..\mStore\ /y >nul
xcopy PrivacyPolicy.html ..\..\mStore\ /y >nul
xcopy TermsOfUse.html ..\..\mStore\ /y >nul

xcopy build\Production\SMS\*.* ..\..\mStore\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\mStore\resources\ /s /y >nul

if not "%1"=="" cd %1
