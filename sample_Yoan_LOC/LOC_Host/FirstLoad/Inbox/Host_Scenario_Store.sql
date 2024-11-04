/* EVERYTHING IS CONTROLLED BY THE STORE */

@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,DEPLOY_SCENARIO)=STORE,,'®fmt(CHR,26)');

/* RESET KEYS FOR HOST */
@wizRpl(DEFAULT.INI[HEADER_BAT]*=);
@wizRpl(READONLY.INI[HEADER_BAT]*=);
@wizRpl(READONLY.INI[PRICE_TAB]*=);
@wizRpl(READONLY.INI[OBJ_TAB]*=);
@wizRpl(READONLY.INI[POS_TAB]*=);
@wizRpl(READONLY.INI[COST_TAB]*=);
@wizRpl(READONLY.INI[ECL_TAB]*=);

@DBHOT(Readonly.ini,SET,Readonly.ini[*);
@DBHOT(Default.ini,SET,Default.ini[*);

@wizRpl(Host_office.ini[DEPLOY_LOAD]clk_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]mix_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]vendor_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]obj_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]kit_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]ecl_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]pos_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]BIO_LOAD=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]SCL_TXT_LOAD=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_nut_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_cpt_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_cct_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_csl_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_ctx_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]price_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]cost_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]loc_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]alt_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]dsd_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]clt_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]cll_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]clt_itm_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]itz_load=1);
@wizRpl(Host_office.ini[DEPLOY_LOAD]itd_load=1);

@wizRpl(Host_office.ini[DEPLOY_CHG]vendor_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]mix_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]obj_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]kit_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]ecl_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]pos_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]price_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]cost_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]loc_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]alt_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]dsd_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_txt_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_nut_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_cpt_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_cct_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_csl_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_ctx_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]itz_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]itd_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]bmp_chg=1);
@wizRpl(Host_office.ini[DEPLOY_CHG]clt_itm_chg=1);

@wizRpl(Host_office.ini[DEPLOY_CHECK]item_chk_qry=1);
@wizRpl(Host_office.ini[DEPLOY_CHECK]PRICE_EXCLUDE=F35,F36,F113,F253,F902,F903,F1000,F1001,F1006,F1007,F1008,F1009,F1010,F1011,F1012,F1013,F1014,F1015,F1203,F1204,F1205,F1206,F1207,F1208,F1209,F1210,F1211,F1212,F1213,F1214,F1215,F1224,F1225,F1226,F1227,F1805,F1964,F2119,F2569,F2570,F2571,F2572,F2573,F2574,F2575,F2576,F2577,F2578,F2579,F2580,F1133,F1134,F1216,F1217,F1196,F1197,F1198,F1199,F1222,F1223,F1201,F1202,F1200);

@WIZRPL(HOST_OFFICE.INI[DEPLOY_CHECK]COST_EXCLUDE=F39,F90,F253,F902,F1000,F1001,F1796,F1964,F2119);
@WIZRPL(HOST_OFFICE.INI[DEPLOY_CHECK]OBJ_EXCLUDE=F35,F253,F902,F1000,F1001,F1964,F2119);
@wizRpl(Host_office.ini[DEPLOY_CHECK]OBJ_QRY=);
@wizRpl(Host_office.ini[DEPLOY_CHECK]POS_QRY=);
@wizRpl(Host_office.ini[DEPLOY_CHECK]PRICE_QRY=);
@wizRpl(Host_office.ini[DEPLOY_CHECK]COST_QRY=);
@wizRpl(Host_office.ini[DEPLOY_CHECK]CLT_QRY=);

@wizRpl(Host_office.ini[OBJ_RSP]CREATEINSTORE=0);
@wizRpl(Host_office.ini[POS_RSP]CREATEINSTORE=0);
@wizRpl(Host_office.ini[PRICE_RSP]CREATEINSTORE=0);
@wizRpl(Host_office.ini[COST_RSP]CREATEINSTORE=0);

@wizRpl(Host_office.ini[OBJ_RSP]TAKEOWNERSHIP=);
@wizRpl(Host_office.ini[POS_RSP]TAKEOWNERSHIP=);
@wizRpl(Host_office.ini[PRICE_RSP]TAKEOWNERSHIP=);
@wizRpl(Host_office.ini[COST_RSP]TAKEOWNERSHIP=);

@wizRpl(Host_office.ini[OBJ_RSP]APPLYSAMEOWNER=);
@wizRpl(Host_office.ini[POS_RSP]APPLYSAMEOWNER=);
@wizRpl(Host_office.ini[PRICE_RSP]APPLYSAMEOWNER=);
@wizRpl(Host_office.ini[COST_RSP]APPLYSAMEOWNER=)

/*** HOST SIDE **/

/* DISABLE DEPLOY LOAD */

@wizRpl(Host_office.ini[DEPLOY_LOAD]clk_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]mix_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]vendor_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]obj_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]kit_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]ecl_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]pos_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]BIO_LOAD=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]SCL_TXT_LOAD=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_nut_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_cpt_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_cct_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_csl_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_ctx_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]price_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]cost_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]loc_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]alt_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]scl_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]dsd_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]clt_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]cll_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]clt_itm_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]itz_load=0);
@wizRpl(Host_office.ini[DEPLOY_LOAD]itd_load=0);


/* Disable deploy_check */
@wizRpl(Host_office.ini[DEPLOY_CHECK]item_chk_qry=0);
@wizRpl(Host_office.ini[DEPLOY_CHECK]OBJ_QRY=1);
@wizRpl(Host_office.ini[DEPLOY_CHECK]POS_QRY=1);
@wizRpl(Host_office.ini[DEPLOY_CHECK]PRICE_QRY=1);
@wizRpl(Host_office.ini[DEPLOY_CHECK]COST_QRY=1);
@wizRpl(Host_office.ini[DEPLOY_CHECK]CLT_QRY=1);

/* Enable deploy_query */

/* STOP DEPLOY CHANGE */

@wizRpl(Host_office.ini[DEPLOY_CHG]clk_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]vendor_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]mix_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]obj_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]kit_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]ecl_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]pos_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]price_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]cost_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]loc_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]alt_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]dsd_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_txt_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_nut_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_cpt_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_cct_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_csl_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]scl_ctx_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]itz_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]itd_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]bmp_chg=0);
@wizRpl(Host_office.ini[DEPLOY_CHG]clt_itm_chg=0);


/* ACTIVATE ACCEPT ALL STORE CHANGES */
@wizRpl(Host_store.ini[ACTIVATE_ACCEPT]EXE_ACTIVATE_ACCEPT=1);
@wizRpl(Host_store.ini[ACTIVATE_ACCEPT]EXE_ACTIVATE_INSTORE=0);

/* DISABLE HOST EDITING */
@wizRpl(READONLY.ini[PRICE_TAB]OWNER=2);
@wizRpl(READONLY.ini[PRICE_TAB]ALL=7);
@wizRpl(READONLY.ini[Obj_tab]OWNER=2);
@wizRpl(READONLY.ini[Obj_tab]ALL=7);
@wizRpl(READONLY.ini[Pos_tab]OWNER=2);
@wizRpl(READONLY.ini[Pos_tab]ALL=7);
@wizRpl(READONLY.ini[Cost_tab]OWNER=2);
@wizRpl(READONLY.ini[Cost_tab]ALL=7);
@wizRpl(READONLY.ini[ECL_TAB]OWNER=2);
@wizRpl(READONLY.ini[ECL_TAB]ALL=7);

/* DO NOT CREATE INSTORE AT THE HOST */
@wizRpl(Host_store.ini[OBJ_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[POS_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[PRICE_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[COST_CHG]CREATEINSTORE=0);

@wizRpl(Host_store.ini[OBJ_RSP]CREATEINSTORE=0);
@wizRpl(Host_store.ini[POS_RSP]CREATEINSTORE=0);
@wizRpl(Host_store.ini[PRICE_RSP]CREATEINSTORE=0);
@wizRpl(Host_store.ini[COST_RSP]CREATEINSTORE=0);

/* NO OWNERSHIP TAKING - TO FORCE EXCEPTION */
@wizRpl(Host_store.ini[OBJ_RSP]TAKEOWNERSHIP=0);
@wizRpl(Host_store.ini[POS_RSP]TAKEOWNERSHIP=0);
@wizRpl(Host_store.ini[COST_RSP]TAKEOWNERSHIP=0);
@wizRpl(Host_store.ini[PRICE_RSP]TAKEOWNERSHIP=0);

/* EXCLUDE CHANGES */
@wizRpl(Host_Store.ini[COST_RSP]CHANGE_EXCLUDE=F253,F1964,F1001,F902);
@wizRpl(Host_Store.ini[PRICE_RSP]CHANGE_EXCLUDE=F253,F1964,F35,F36,F1008,F1009,F130,F144,F145,F1015,F1001,F902);

/* FORCE AUTO DEPLOY HO ON DISCREPANCY */
@wizRpl(Host_Store.ini[RPT_CHK]EXE_DEPLOY_HO=1);

/* READEONLY */
@wizRpl(READONLY.ini[HEADER_BAT]F914=7);

/* DEFAULT */
@wizRpl(DEFAULT.ini[HEADER_BAT]F914='WAIT');

@DBHOT(Host_store.ini,SET,Host_store.ini[*);
@DBHOT(Host_office.ini,SET,Host_office.ini[*);
@DBHOT(Readonly.ini,SET,Readonly.ini[*);
@DBHOT(Default.ini,SET,Default.ini[*);

/* WE DEACTIVATE IN THE TASK SCHEDULER */ 
UPDATE RUN_TAB SET F1105=null, F1107=null WHERE F1102=45; /* ACTIVATE INSTORE BATCH */ 

@WIZRESET;
