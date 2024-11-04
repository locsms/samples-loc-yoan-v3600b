if not "%1"=="" cd %1Htm\dev\mStore_site_fr
if "%STOREMAN%"=="" set STOREMAN=..\..\..\..\

rd ..\mStore\app\view /s /q
md ..\mStore\app\view

del ..\mStore\app\model\Site*.js
del ..\mStore\app\store\Site*.js

rd ..\eStore\overrides /s /q
md ..\eStore\overrides

rd ..\mStore\resources /s /q
md ..\mStore\resources

For /D %%a in ("..\mStore\app\model\*.*") do RD /S /Q "%%a"
For /D %%a in ("..\mStore\app\store\*.*") do RD /S /Q "%%a"

xcopy "..\mStore_base_en\app\*.*" "..\mStore\app\" /s /e /y /i
xcopy "..\mStore_base_en\overrides\*.*" "..\mStore\overrides\" /s /e /y /i
xcopy "..\mStore_base_en\resources\*.*" "..\mStore\resources\" /s /e /y /i

xcopy "..\mStore_base_fr\app\*.*" "..\mStore\app\" /s /e /y /i
xcopy "..\mStore_base_fr\overrides\*.*" "..\mStore\overrides\" /s /e /y /i
xcopy "..\mStore_base_fr\resources\*.*" "..\mStore\resources\" /s /e /y /i

xcopy "..\mStore_site_en\app\*.*" "..\mStore\app\" /s /e /y /i
xcopy "..\mStore_site_en\overrides\*.*" "..\mStore\overrides\" /s /e /y /i
xcopy "..\mStore_site_en\resources\*.*" "..\mStore\resources\" /s /e /y /i

xcopy "..\mStore_site_fr\app\*.*" "..\mStore\app\" /s /e /y /i
xcopy "..\mStore_site_fr\resources\*.*" "..\mStore\resources\" /s /e /y /i
xcopy "..\mStore_site_fr\overrides\*.*" "..\mStore\overrides\" /s /e /y /i

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%STOREMAN%Library\Install\Sencha\RefreshAppJs.ps1" "..\mStore\app" "Application.js"

if not "%1"=="" cd %1
