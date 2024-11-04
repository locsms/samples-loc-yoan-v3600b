if not "%1"=="" cd %1Htm\dev\eStore_site_es
if "%STOREMAN%"=="" set STOREMAN=..\..\..\..\

rd ..\eStore\app\view /s /q
md ..\eStore\app\view

del ..\eStore\app\model\Site*.js
del ..\eStore\app\store\Site*.js

rd ..\eStore\overrides /s /q
md ..\eStore\overrides

rd ..\eStore\resources /s /q
md ..\eStore\resources

For /D %%a in ("..\eStore\app\model\*.*") do RD /S /Q "%%a"
For /D %%a in ("..\eStore\app\store\*.*") do RD /S /Q "%%a"

xcopy "..\eStore_base_en\app\*.*" "..\eStore\app\" /s /e /y /i
xcopy "..\eStore_base_en\overrides\*.*" "..\eStore\overrides\" /s /e /y /i
xcopy "..\eStore_base_en\resources\*.*" "..\eStore\resources\" /s /e /y /i

xcopy "..\eStore_base_es\app\*.*" "..\eStore\app\" /s /e /y /i
xcopy "..\eStore_base_es\overrides\*.*" "..\eStore\overrides\" /s /e /y /i
xcopy "..\eStore_base_es\resources\*.*" "..\eStore\resources\" /s /e /y /i

xcopy "..\eStore_site_en\app\*.*" "..\eStore\app\" /s /e /y /i
xcopy "..\eStore_site_en\overrides\*.*" "..\eStore\overrides\" /s /e /y /i
xcopy "..\eStore_site_en\resources\*.*" "..\eStore\resources\" /s /e /y /i

xcopy "..\eStore_site_es\app\*.*" "..\eStore\app\" /s /e /y /i
xcopy "..\eStore_site_es\overrides\*.*" "..\eStore\overrides\" /s /e /y /i
xcopy "..\eStore_site_es\resources\*.*" "..\eStore\resources\" /s /e /y /i

powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%STOREMAN%Library\Install\Sencha\RefreshAppJs.ps1" "..\eStore\app" "Application.js"

if not "%1"=="" cd %1