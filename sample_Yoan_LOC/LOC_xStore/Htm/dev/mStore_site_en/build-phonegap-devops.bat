if not "%1"=="" cd %1Htm\dev\mStore_site_en
call build-copy %1
if not "%1"=="" cd %1Htm\dev\mStore_site_en
rd ..\mStore\phonegap /s /q
rd ..\mStore\resources\icons /s /q
rd ..\mStore\resources\screens /s /q
md ..\mStore\phonegap
md ..\mStore\resources\icons
md ..\mStore\resources\screens
xcopy "res\*.*" "..\mStore\phonegap\www\res\" /s /e /y /i
copy config.xml ..\mStore\config.xml
copy phonegap.local.properties ..\mStore\phonegap.local.properties
copy config-devops.xml ..\mStore\phonegap\config.xml
copy google-services.json ..\mStore\phonegap\www\google-services.json
copy google-services.json ..\mStore\phonegap\google-services.json
copy config.json ..\mStore\phonegap\.cordova\config.json
copy package-devops.json ..\mStore\phonegap\package.json
copy ionic.config-devops.json ..\mStore\phonegap\ionic.config.json
copy app-phonegap.json ..\mStore\app.json
copy index-phonegap-devops.html ..\mStore\index.html
cd ..\mStore\
sencha app build native >build-native.txt
IF "%GITHUB_SKIP%"=="1" GOTO NO_GITHUB
IF "%GITHUB_REPO%"=="" SET GITHUB_REPO=https://github.com/locsms/phonegap-loc-yoan-mstore-v3600bb.git
REM GITHUB PUSH
REM set absolute paths to pass to SMSCLI
REM Push mStore\phonegap folder to GitHub
set LOCALFOLDER=%cd%\phonegap
REM log git ouput to C:\HostLoc\Office\Dbt\GitHub.txt
pushd .
cd ..\..\..\Dbt\
set GITLOG=%cd%\GitHub.txt
popd
REM Use SmsCli to push to phonegap. If a specific SMSCLI_PATH exists, use it, otherwise assume  this is called from <SMSDir>\Office\Htm\dev\mFloor (or mStore)
IF NOT "%SMSCLI_PATH%"=="" (
	%SMSCLI_PATH%smscli build gitpush phonegap --properties Github.Phonegap.LocalDir=%LOCALFOLDER% Github.Phonegap.RepoUrl=%GITHUB_REPO% Github.OutputFile=%SMSCLI_PATH%GitHub.txt "GitHub.Comment=Synching with build"
) ELSE (
	..\..\..\..\smscli build gitpush phonegap --properties Github.Phonegap.LocalDir=%LOCALFOLDER% Github.Phonegap.RepoUrl=%GITHUB_REPO% Github.OutputFile=%GITLOG% "GitHub.Comment=Synching with build"
)
:NO_GITHUB
if not "%1"=="" cd %1
