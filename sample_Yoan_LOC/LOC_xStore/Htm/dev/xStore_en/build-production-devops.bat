if not "%1"=="" cd %1Htm\dev\xStore_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\xStore_en
copy ..\xStore_en\index-devops.html ..\xStore\index.html

cd ..\xStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\xStore\resources /s /q
md ..\..\xStore\resources

xcopy build\Production\SMS\*.* ..\..\xStore\ /s /y >nul

xcopy ..\..\eStore\robot.txt ..\..\xStore\ /s /y >nul
xcopy ..\..\eStore\sitemap.xml ..\..\xStore\ /s /y >nul

rem Must add font-awesome and fonts
xcopy ..\..\xStore\resources\font-awesome\*.* ..\..\xStore\modern\resources\font-awesome\ /s /y
xcopy ..\..\xStore\resources\font-awesome\*.* ..\..\xStore\classic\resources\font-awesome\ /s /y
xcopy ..\..\xStore\resources\fonts\*.* ..\..\xStore\modern\resources\fonts\ /s /y
xcopy ..\..\xStore\resources\fonts\*.* ..\..\xStore\classic\resources\fonts\ /s /y

if not "%1"=="" cd %1
