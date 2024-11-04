
@wizRpl(smsHttps[GENERAL]DEVICEXCH=PRN;PAD;SCAN;SCALE);
@wizRpl(SmsHttpsDir=@dbHot(CONFIG,LOCALDIR)SmsHttps@fmt(CMP,@dbHot(FINDFIRST,@dbHot(CONFIG,LOCALDIR)SmsHttps64\SmsHttpsService.exe,1)=,32,64)\)

@dbHot(@wizGet(SmsHttpsDir)SmsHttps.ini,SET,smsHttps[*);

