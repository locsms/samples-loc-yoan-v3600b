if not "%1"=="" pushd %1Htm\dev\ePos_site_fr

call build-copy %1

copy app-production.json ..\ePos\app.json
copy index-production.html ..\ePos\index.html

cd ..\ePos\
sencha app build development >build.txt

if not "%1"=="" popd
