/* EXECUTED ONLY WHEN THE OPTION IS INSTALLED */
@FMT(CMP,@WIZGET(INSTALL_STEP)<3,'®FMT(CHR,26)');

@EXEC(EXE='xcopy.exe "@RUNSamples\@WIZGET(INSTALL_OPTION)\@WIZGET(LOC_SUBSAMPLE)\Htm\*.*" "@OfficeHtm\" /E /Y');

/* exit if base is not installed */
@fmt(CMP,@dbHot(FindFirst,@OfficeHtm\dev\eStore\app\Application.js)=,'®fmt(CHR,26)');

@wizRpl(ZipFile=@DISF_@NOW);
@EXEC(EXE='@RUNL_ZIP.exe ZIPPATH=@RunBackup\Sencha\eStore\ ZIPFILE=@wizGet(ZipFile)_eStore_Site_kiosk.zip ZIPROOT=@OFFICEHtm\ ZIPBASE=@OFFICEHtm\Dev\ SRC_DIR1=eStore_site_kiosk*.*');
@fmt(CMP,'@dbHot(FINDFIRST,@RunBackup\Sencha\eStore\@wizGet(ZipFile)_eStore_Site_kiosk*.*)=','®wizRpl(INSTALL_MESSAGE=** BACKUP FAILED INSTALL ABORTED **)®wizRpl(INSTALL_RESULT=7)®FMT(CHR,26)');

@exec(EXE='cmd.exe /c rmdir /S /Q @OfficeHtm\dev\eStore_site_kiosk_en');
@exec(EXE='cmd.exe /c rmdir /S /Q @OfficeHtm\dev\eStore_site_kiosk_es');
@exec(EXE='cmd.exe /c rmdir /S /Q @OfficeHtm\dev\eStore_site_kiosk_fr');

/* copy the site forms */
@EXEC(EXE='xcopy.exe "@RUNSamples\@WIZGET(INSTALL_OPTION)\@WIZGET(LOC_SUBSAMPLE)\Htm\dev\*.*" "@OfficeHtm\dev\" /E /Y');

@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,Local_Stage)=,'®wizClr(DevOps)','®wizRpl(DevOps=)');
@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,Local_Stage)=Local_Stage_devops,'®wizRpl(DevOps=-devops)');
@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,Local_Stage)=devops,'®wizRpl(DevOps=-devops)');
@fmt(CMP,@dbHot(INI,@runSmsCli.prop,,Install.sample.switch.devops)=1,'®wizSet(DevOps=-devops)');

/* execute build */
@EXEC(EXE='@OfficeHtm\dev\eStore_site_kiosk_en\build-production@fmt(CMP,@dbHot(FindFirst,@OfficeHtm\dev\eStore_site_kiosk_en\build-production@wizGet(DevOps).bat)=,,@wizGet(DevOps)).bat @Office');
@EXEC(EXE='@OfficeHtm\dev\eStore_site_kiosk_es\build-production@fmt(CMP,@dbHot(FindFirst,@OfficeHtm\dev\eStore_site_kiosk_es\build-production@wizGet(DevOps).bat)=,,@wizGet(DevOps)).bat @Office');
@EXEC(EXE='@OfficeHtm\dev\eStore_site_kiosk_es\build-production@fmt(CMP,@dbHot(FindFirst,@OfficeHtm\dev\eStore_site_kiosk_fr\build-production@wizGet(DevOps).bat)=,,@wizGet(DevOps)).bat @Office');

/* RESULT */
@WIZRPL(DIR=@OfficeHtm\dev\eStore\);
@WIZRPL(FILE=BUILD.TXT);
@FMT(CMP,'@msgFILE(FINDINFILE,[ERR])=','®WIZRPL(SUBJECT=KIOSK SENCHA BUILD SUCCESS)','®WIZRPL(X-PRIORITY=1)®WIZRPL(SUBJECT=KIOSK SENCHA BUILD ERROR)');
@WIZCLR(DIR);
@WIZCLR(FILE);

@WIZRPL(TARGET=@TER);
@EXEC(SQT=@OfficeHtm\dev\eStore\BUILD.TXT);
@WIZCLR(X-PRIORITY);
