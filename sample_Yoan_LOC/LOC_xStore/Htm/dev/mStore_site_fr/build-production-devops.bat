if not "%1"=="" cd %1Htm\dev\mStore_site_fr
call build-copy %1

if not "%1"=="" cd %1Htm\dev\mStore_site_fr
copy app-production.json ..\mStore\app.json
copy index-production-devops.html ..\mStore\index.html

cd ..\mStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\mCom\resources /s /q
md ..\..\mCom\resources

xcopy facebook.js ..\..\mCom\ /y >nul
xcopy google.js ..\..\mCom\ /y >nul
xcopy faq.html ..\..\mCom\ /y >nul
xcopy faq.xml ..\..\mCom\ /y >nul
xcopy PrivacyPolicy.html ..\..\mCom\ /y >nul
xcopy TermsOfUse.html ..\..\mCom\ /y >nul

xcopy build\Production\SMS\*.* ..\..\mCom\ /y >nul
xcopy build\Production\SMS\resources\*.* ..\..\mCom\resources\ /s /y >nul

if not "%1"=="" cd %1
