if not "%1"=="" cd %1Htm\dev\xStore_es
call build-copy %1

if not "%1"=="" cd %1Htm\dev\xStore_es
copy ..\xStore_es\index-devops.html ..\xStore\index.html

cd ..\xStore\
rd build /s /q
md build

sencha app build production >build.txt

rd ..\..\xTienda\resources /s /q
md ..\..\xTienda\resources

xcopy build\Production\SMS\*.* ..\..\xTienda\ /s /y >nul

xcopy ..\..\eStore\robot.txt ..\..\xTienda\ /s /y >nul
xcopy ..\..\eStore\sitemap.xml ..\..\xTienda\ /s /y >nul

rem Must add font-awesome and fonts
xcopy ..\..\xTienda\resources\font-awesome\*.* ..\..\xTienda\modern\resources\font-awesome\ /s /y
xcopy ..\..\xTienda\resources\font-awesome\*.* ..\..\xTienda\classic\resources\font-awesome\ /s /y
xcopy ..\..\xTienda\resources\fonts\*.* ..\..\xTienda\modern\resources\fonts\ /s /y
xcopy ..\..\xTienda\resources\fonts\*.* ..\..\xTienda\classic\resources\fonts\ /s /y

if not "%1"=="" cd %1
