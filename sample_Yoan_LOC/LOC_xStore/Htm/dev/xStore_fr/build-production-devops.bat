if not "%1"=="" cd %1Htm\dev\xStore_fr
call build-copy %1

if not "%1"=="" cd %1Htm\dev\xStore_fr
copy ..\xStore_fr\index-devops.html ..\xStore\index.html

cd ..\xStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\xCom\resources /s /q
md ..\..\xCom\resources

xcopy build\Production\SMS\*.* ..\..\xCom\ /s /y >nul

xcopy ..\..\eStore\robot.txt ..\..\xCom\ /s /y >nul
xcopy ..\..\eStore\sitemap.xml ..\..\xCom\ /s /y >nul

rem Must add font-awesome and fonts
xcopy ..\..\xCom\resources\font-awesome\*.* ..\..\xCom\modern\resources\font-awesome\ /s /y
xcopy ..\..\xCom\resources\font-awesome\*.* ..\..\xCom\classic\resources\font-awesome\ /s /y
xcopy ..\..\xCom\resources\fonts\*.* ..\..\xCom\modern\resources\fonts\ /s /y
xcopy ..\..\xCom\resources\fonts\*.* ..\..\xCom\classic\resources\fonts\ /s /y

if not "%1"=="" cd %1
