if not "%1"=="" cd %1Htm\dev\xStore_en
call build-copy %1

if not "%1"=="" cd %1Htm\dev\xStore_en
copy ..\xStore_en\index-devops.html ..\xStore\index.html

cd ..\xStore\
rd build /s /q
md build

sencha app build development >build.txt

if not "%1"=="" cd %1
