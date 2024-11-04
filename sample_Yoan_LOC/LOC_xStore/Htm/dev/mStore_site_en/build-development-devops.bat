if not "%1"=="" cd %1Htm\dev\mStore_site_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\mStore_site_en
copy app-production.json ..\mStore\app.json
copy index-production-devops.html ..\mStore\index.html

cd ..\mStore\
sencha app build development >build.txt

if not "%1"=="" cd %1
