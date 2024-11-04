if not "%1"=="" cd %1Htm\dev\eStore_site_display_es
call build-copy %1

if not "%1"=="" cd %1Htm\dev\eStore_site_display_es
copy app-production.json ..\eStore\app.json
copy index-production.html ..\eStore\index.html

cd ..\eStore\
sencha app build development >build.txt

if not "%1"=="" cd %1
