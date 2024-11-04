/* EVERYTHING IS CONTROLLED BY THE HOST */

@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,DEPLOY_SCENARIO)=HOST,,'®fmt(CHR,26)');

/* RESET KEY FOR STORE */

@wizRpl(READONLY.INI[PRICE_TAB]*=);
@wizRpl(READONLY.INI[OBJ_TAB]*=);
@wizRpl(READONLY.INI[POS_TAB]*=);
@wizRpl(READONLY.INI[COST_TAB]*=);
@wizRpl(READONLY.INI[ECL_TAB]*=);

@DBHOT(Readonly.ini,SET,Readonly.ini[*);

@wizRpl(system.ini[SKU]OwnerMode=);
@wizRpl(system.ini[SKU]OwnerLevel=);

@wizRpl(Host_store.ini[ACTIVATE_ACCEPT]EXE_ACTIVATE_ACCEPT=0);
@wizRpl(Host_store.ini[ACTIVATE_ACCEPT]EXE_ACTIVATE_INSTORE=0);

@wizRpl(Host_Store.ini[FPRICE_BAT]EXECUTE_EXCLUDE=);
@wizRpl(Host_Store.ini[FSPRICE_BAT]EXECUTE_EXCLUDE=);
@wizRpl(Host_Store.ini[FTPRICE_BAT]EXECUTE_EXCLUDE=);
@wizRpl(Host_Store.ini[FINSTORE_BAT]EXECUTE_EXCLUDE=);
@wizRpl(Host_Store.ini[FGPRICE_BAT]EXECUTE_EXCLUDE=);

@wizRpl(Host_office.ini[OBJ_RSP]CREATEINSTORE=1);
@wizRpl(Host_office.ini[POS_RSP]CREATEINSTORE=1);
@wizRpl(Host_office.ini[PRICE_RSP]CREATEINSTORE=1);
@wizRpl(Host_office.ini[COST_RSP]CREATEINSTORE=1);

@wizRpl(Host_office.ini[OBJ_RSP]APPLYSAMEOWNER=0);
@wizRpl(Host_office.ini[POS_RSP]APPLYSAMEOWNER=0);
@wizRpl(Host_office.ini[PRICE_RSP]APPLYSAMEOWNER=0);
@wizRpl(Host_office.ini[COST_RSP]APPLYSAMEOWNER=0);

@wizRpl(Host_store.ini[OBJ_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[POS_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[PRICE_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[COST_CHG]CREATEINSTORE=0);

@wizRpl(Host_Store.ini[OBJ_CHG]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[POS_CHG]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[PRICE_CHG]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[COST_CHG]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[LOC_CHG]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[ALT_CHG]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[KIT_CHG]TAKEOWNERSHIP=);

@wizRpl(Host_Store.ini[FOBJ_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FPOS_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FPRICE_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FCOST_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FSPRICE_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FTPRICE_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FINSTORE_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FREDEEM_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FGPRICE_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[ALLOW_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[REBATE_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FDISC_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FCSTBRK_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FBBACK_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FGCOST_BAT]TAKEOWNERSHIP=);
@wizRpl(Host_Store.ini[FECL_BAT]TAKEOWNERSHIP=);

@wizRpl(Host_Store.ini[DEPLOY_HO]obj_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]pos_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]price_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]cost_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]ecl_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]loc_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]alt_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]kit_rsp_man=1);

/**** STORE SIDE ****/


/* ACTIVATE ACCEPT ALL STORE CHANGES */
@wizRpl(Host_store.ini[ACTIVATE_ACCEPT]EXE_ACTIVATE_ACCEPT=1);
@wizRpl(Host_store.ini[ACTIVATE_ACCEPT]EXE_ACTIVATE_INSTORE=0);

/* CREATE INSTORE BATCH FROM HOST CHANGES */

@wizRpl(Host_store.ini[OBJ_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[POS_CHG]CREATEINSTORE=0);
@wizRpl(Host_store.ini[PRICE_CHG]CREATEINSTORE=1);
@wizRpl(Host_store.ini[COST_CHG]CREATEINSTORE=0);

/* SUPPORT INSTORE BATCH CREATION */
@wizRpl(Host_Store.ini[FINSTORE_BAT]CREATEINSTORE=1);

/* DISABLE STORE EDITING */
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

/* SEND BACK INSTORE PRICE TO PRICE_STORE */

@wizRpl(Host_Store.ini[DEPLOY_HO]clk_rsp_man=0);
@wizRpl(Host_Store.ini[DEPLOY_HO]obj_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]pos_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]price_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]cost_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]ecl_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]loc_rsp_man=0);
@wizRpl(Host_Store.ini[DEPLOY_HO]alt_rsp_man=1);
@wizRpl(Host_Store.ini[DEPLOY_HO]kit_rsp_man=1);

/* CREATE BATCH ON LANE CHANGES */
@wizRpl(Host_office.ini[OBJ_RSP]CREATEINSTORE=1);
@wizRpl(Host_office.ini[POS_RSP]CREATEINSTORE=1);
@wizRpl(Host_office.ini[PRICE_RSP]CREATEINSTORE=1);
@wizRpl(Host_office.ini[COST_RSP]CREATEINSTORE=1);

@DBHOT(Host_store.ini,SET,Host_store.ini[*);
@DBHOT(Host_office.ini,SET,Host_office.ini[*);
@DBHOT(Readonly.ini,SET,Readonly.ini[*);
@DBHOT(System.ini,SET,System.ini[*);
@WIZRESET;
