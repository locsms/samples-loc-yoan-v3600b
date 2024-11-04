/* EXECUTED ONLY WHEN THE OPTION IS INSTALLED */
@FMT(CMP,@WIZGET(INSTALL_STEP)<3,'®FMT(CHR,26)');

@EXEC(EXE='xcopy.exe "@RUNSamples\@WIZGET(INSTALL_OPTION)\@WIZGET(LOC_SUBSAMPLE)\Htm\*.*" "@OfficeHtm\" /E /Y');

/* exit if base is not installed */
@fmt(CMP,@dbHot(FindFirst,@OfficeHtm\dev\eStore\app\Application.js)=,'®fmt(CHR,26)');

@wizRpl(ZipFile=@DISF_@NOW);
@EXEC(EXE='@RUNL_ZIP.exe ZIPPATH=@RunBackup\Sencha\xStore\ ZIPFILE=@wizGet(ZipFile)_xStore_Site.zip ZIPROOT=@OFFICEHtm\ ZIPBASE=@OFFICEHtm\Dev\ SRC_DIR1=eStore_site*.* SRC_DIR2=mStore_site*.*');
@fmt(CMP,'@dbHot(FINDFIRST,@RunBackup\Sencha\xStore\@wizGet(ZipFile)_xStore_Site*.*)=','®wizRpl(INSTALL_MESSAGE=** BACKUP FAILED INSTALL ABORTED **)®wizRpl(INSTALL_RESULT=7)®FMT(CHR,26)');

@exec(EXE='cmd.exe /c rmdir /S /Q @OfficeHtm\dev\eStore_site_en');
@exec(EXE='cmd.exe /c rmdir /S /Q @OfficeHtm\dev\eStore_site_fr');
@exec(EXE='cmd.exe /c rmdir /S /Q @OfficeHtm\dev\mStore_site_en');
@exec(EXE='cmd.exe /c rmdir /S /Q @OfficeHtm\dev\mStore_site_fr');

/* copy the site forms */
@EXEC(EXE='xcopy.exe "@RUNSamples\@WIZGET(INSTALL_OPTION)\@WIZGET(LOC_SUBSAMPLE)\Htm\dev\*.*" "@OfficeHtm\dev\" /E /Y');

@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,Local_Stage)=,'®wizClr(DevOps)','®wizRpl(DevOps=)');
@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,Local_Stage)=Local_Stage_devops,'®wizRpl(DevOps=-devops)');
@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,Local_Stage)=devops,'®wizRpl(DevOps=-devops)');
@fmt(CMP,@dbHot(INI,@runSmsCli.prop,,Install.sample.switch.devops)=1,'®wizSet(DevOps=-devops)');

/* execute build */
@EXEC(EXE='@OfficeHtm\dev\mStore_site_en\build-phonegap@fmt(CMP,@dbHot(FindFirst,@OfficeHtm\dev\mStore_site_en\build-phonegap@wizGet(DevOps).bat)=,,@wizGet(DevOps)).bat @Office');
@EXEC(EXE='@OfficeHtm\dev\xStore\build-production@fmt(CMP,@dbHot(FindFirst,@OfficeHtm\dev\xStore_en\build-production@wizGet(DevOps).bat)=,,@wizGet(DevOps)).bat @Office');

/* RESULT ESTORE */
@WIZRPL(DIR=@OfficeHtm\dev\xStore\);
@WIZRPL(FILE=BUILD.TXT);
@FMT(CMP,'@msgFILE(FINDINFILE,[ERR])=','®WIZRPL(X-PRIORITY=0)®WIZRPL(SUBJECT=XSTORE BUILD SUCCESS)','®WIZRPL(X-PRIORITY=1)®WIZRPL(SUBJECT=XSTORE BUILD ERROR)');
@WIZCLR(DIR);
@WIZCLR(FILE);

@WIZRPL(TARGET=@TER);
@EXEC(SQT=@OfficeHtm\dev\xStore\BUILD.TXT);
@WIZCLR(X-PRIORITY);

/* RESULT MSTORE NATIVE */
@WIZRPL(DIR=@OfficeHtm\dev\mStore\);
@WIZRPL(FILE=BUILD-NATIVE.TXT);
@FMT(CMP,'@msgFILE(FINDINFILE,[ERR])=','®WIZRPL(X-PRIORITY=0)®WIZRPL(SUBJECT=MSTORE NATIVE BUILD SUCCESS)','®WIZRPL(X-PRIORITY=1)®WIZRPL(SUBJECT=MSTORE NATIVE BUILD ERROR)');
@WIZCLR(DIR);
@WIZCLR(FILE);

@WIZRPL(TARGET=@TER);
@EXEC(SQT=@OfficeHtm\dev\mStore\BUILD-NATIVE.TXT);
@WIZCLR(X-PRIORITY);

/* RESULT GITHUB */
@WIZRPL(DIR=@officeDbt\);
@WIZRPL(FILE=github.txt);
@FMT(CMP,'@msgFILE(FINDINFILE,[ERR])=','®WIZRPL(X-PRIORITY=0)®WIZRPL(SUBJECT=GITHUB PUSH SUCCESS)','®WIZRPL(X-PRIORITY=1)®WIZRPL(SUBJECT=GITHUB PUSH ERROR)');
@WIZCLR(DIR);
@WIZCLR(FILE);

@WIZRPL(TARGET=@TER);
@EXEC(SQT=@officeDbt\github.txt);
@WIZCLR(X-PRIORITY);
