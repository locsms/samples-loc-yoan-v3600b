if not "%1"=="" cd %1Htm\dev\mStore_site_fr
call build-copy %1

if not "%1"=="" cd %1Htm\dev\mStore_site_fr
copy app-production.json ..\mStore\app.json
copy index-production.html ..\mStore\index.html

cd ..\mStore\
sencha app build development >build.txt

if not "%1"=="" cd %1
