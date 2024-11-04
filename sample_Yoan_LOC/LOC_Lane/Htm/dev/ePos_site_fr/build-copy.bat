if not "%1"=="" pushd %1Htm\dev\ePos_site_fr
if "%STOREMAN%"=="" set STOREMAN=..\..\..\..\

rd ..\ePos\app\view /s /q
md ..\ePos\app\view
rd ..\ePos\resources /s /q
md ..\ePos\resources

For /D %%a in ("..\ePos\app\model\*.*") do RD /S /Q "%%a"
For /D %%a in ("..\ePos\app\store\*.*") do RD /S /Q "%%a"

xcopy "..\ePos_base_en\app\*.*" "..\ePos\app\" /s /e /y /i
xcopy "..\ePos_base_en\resources\*.*" "..\ePos\resources\" /s /e /y /i

xcopy "..\ePos_base_fr\app\*.*" "..\ePos\app\" /s /e /y /i
xcopy "..\ePos_base_fr\resources\*.*" "..\ePos\resources\" /s /e /y /i

xcopy "..\ePos_sell_en\app\*.*" "..\ePos\app\" /s /e /y /i
xcopy "..\ePos_sell_en\resources\*.*" "..\ePos\resources\" /s /e /y /i

xcopy "..\ePos_sell_fr\app\*.*" "..\ePos\app\" /s /e /y /i
xcopy "..\ePos_sell_fr\resources\*.*" "..\ePos\resources\" /s /e /y /i

xcopy "..\ePos_site_en\app\*.*" "..\ePos\app\" /s /e /y /i
xcopy "..\ePos_site_en\resources\*.*" "..\ePos\resources\" /s /e /y /i

xcopy "..\ePos_site_fr\app\*.*" "..\ePos\app\" /s /e /y /i
xcopy "..\ePos_site_fr\resources\*.*" "..\ePos\resources\" /s /e /y /i

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%STOREMAN%Library\Install\Sencha\RefreshAppJs.ps1" "..\ePos\app" "Application.js"

if not "%1"=="" popd
