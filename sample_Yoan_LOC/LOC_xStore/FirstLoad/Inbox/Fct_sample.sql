/* USE FCT 112 for STORE CARD */
UPDATE FCT_TAB SET F1064='Store card',F1081=CASE WHEN ISNULL(F1081,'')='' THEN 'CardType=A' ELSE ISNULL(F1081,'') + ' CardType=A' END WHERE F1063=112 AND ISNULL(F1081,'') NOT LIKE '%CardType=A%';

/* PROVIDE DEFAULT RISK FOR ANONYMOUS */
UPDATE FCT_TAB SET F1081=CASE WHEN ISNULL(F1081,'')='' THEN 'Riskchk=1' ELSE ISNULL(F1081,'') + ' Riskchk=1' END WHERE F1063 IN (101,112,134) AND ISNULL(F1081,'') NOT LIKE '%Riskchk%';

/* ADD BACKUP/RESTORE FUNCTIONS */
CREATE VIEW Fct_load AS SELECT F1063,F1000,F81,F85,F96,F97,F98,F99,F100,F101,F102,F125,F172,F239,F240,F241,F242,F1042,F1043,F1044,F1045,F1046,F1047,F1050,F1051,F1052,F1053,F1054,F1055,F1064,F1081,F1082,F1083,F1084,F1085,F1086,F1088,F1089,F1090,F1091,F1092,F1147,F1817,F1818,F1895,F1897,F1965,F1966 FROM FCT_TAB;

INSERT INTO Fct_load VALUES
(371,'PAL',,,,,,,,,,,,,,,,1,1,1,1,1,9,'','CLT','T&ransaction',1,0,1,'Restore order','Script=trs_clt_res_db2.sqi RESUME_DBALIAS=3 HDRSALF1068=ORDER HDRSALF1067=OPEN',,,,,,,,,,,,,,'',,,),
(373,'PAL',,,,,,,,,,,,,,,,1,1,1,1,1,9,'','CLT','T&ransaction',1,0,1,'Restore submitted order','Script=trs_clt_res_db2.sqi RESUME_DBALIAS=3 HDRSALF1068=ORDER HDRSALF1067=SUBMIT FORCE_OPEN=1',,,,,,,,,,,,,,'',,,),
(376,'PAL',,,,,,,,,,,,,,,,1,1,1,1,1,9,'','CLT','T&ransaction',1,0,1,'Backup order','Script=trs_clt_sus_db2.sqi SUSPEND_DBALIAS=3 HDRSALF1068=ORDER HDRSALF1067=OPEN',,,,,,,,,,,,,,'',,,),
(377,'PAL',,,,,,,,,,,,,,,,1,1,1,1,1,9,'','CLT','T&ransaction',1,0,1,'Submit order to POS','Script=trs_clt_sus_mail.sqi HDRSALF1068=SALE HDRSALF1067=OPEN',,,,,,,,,,,,,,'',,,),
(378,'PAL',,,,,,,,,,,,,,,,1,1,1,1,1,9,'','CLT','T&ransaction',1,0,1,'Submit order to BO','Script=trs_clt_sus_mail.sqi HDRSALF1068=ORDER HDRSALF1067=CLOSE ALLOWSUSPEND=1',,,,,,,,,,,,,,'',,,);

@UPDATE_BATCH(JOB=ADDRPL,TAR=FCT_TAB,
KEY=F1063=:F1063 AND F1000=:F1000,
SRC=SELECT * FROM Fct_load);

DROP TABLE Fct_load;

/* CANCEL ON LOGOUT */
UPDATE FCT_TAB SET F1081='AUTODELETE=635' WHERE F1063=10019 AND F1081 NOT LIKE '%AUTOSUSPEND%' AND F1081 NOT LIKE '%AUTODELETE%';

@TOOLS(MAP_BACKUP,FCT_TAB,'Load\Fct_Load.sql',FCT);
