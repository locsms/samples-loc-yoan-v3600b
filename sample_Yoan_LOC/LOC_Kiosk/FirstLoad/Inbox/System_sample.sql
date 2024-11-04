@WIZRPL(System.ini[TRS]ModMsgFilter=1);
@wizRpl(system.ini[TRS]AutoLogout=2400);
@WIZRPL(System.ini[TRS]AutoCancel=2400);
@WIZRPL(System.ini[TRS]AutoCancelFct=635);
@WIZRPL(System.ini[TRS]BackupFctOnShutDown=376);
@WIZRPL(System.ini[TRS]SaveTrsArchive=1);
@WIZRPL(System.ini[TRS]ResumeLastTrs=0);
@WIZRPL(System.ini[TRS]SsmLevel1=TRS_CLT_WEB);

@WIZRPL(System.ini[CLIENT]OfferAvailableToAll=GenericIP);
@WIZRPL(System.ini[CLIENT]DefaultWeight=1);
@WIZRPL(System.ini[CLIENT]WWWOperatorPrefix=1);
@WIZRPL(System.ini[CLIENT]WWWAnonymousPrefix=1);
@WIZRPL(System.ini[CLIENT]CalculateShipping=1);
@WIZRPL(System.ini[CLIENT]AgeEntryMethod=4);

@WIZRPL(System.ini[AUTOFCT]ForceDataCapture=1);
@WIZRPL(System.ini[AUTOFCT]PotentialCpnMiss=1);
@WIZRPL(System.ini[AUTOFCT]PotentialCpnGive=1);
@WIZRPL(System.ini[AUTOFCT]PotentialEclMiss=1);
@WIZRPL(System.ini[AUTOFCT]PotentialEclGive=1);
@WIZRPL(System.ini[AUTOFCT]NetFee1=1);

@dbHot(System.ini,SET,System.ini[*);
