/* DO NOT SET FOR THIN */
@fmt(CMP,@TER<900,,'®fmt(CHR,26)');

/* DO NOT RETURN THIS TO THE HOST */
@wizRpl(Host_Store[DEPLOY_HO]echo_sal_sav=999);
@wizRpl(Host_Store[DEPLOY_HO]clt_rsp_man=0);
@wizRpl(Host_Store[DEPLOY_HO]cll_rsp_man=0);
@wizRpl(Host_Store[DEPLOY_HO]clk_rsp_man=0);

@wizRpl(Host_Store[ACTIVATE_ACCEPT]EXE_ACTIVATE_ACCEPT=1);
@wizRpl(Host_Store[ACTIVATE_ACCEPT]EXE_DEPLOY_CHG=0);

/* DO NOT ACCEPT CLK FROM THE OUTSIDE */
@wizRpl(Host_Store[ACTIVATE_ACCEPT]CLK_CHG=0);

/* NEVER CREATE INSTORE BATCH */
@wizRpl(Host_Store[OBJ_CHG]CREATEINSTORE=0);
@wizRpl(Host_Store[POS_CHG]CREATEINSTORE=0);
@wizRpl(Host_Store[PRICE_CHG]CREATEINSTORE=0);
@wizRpl(Host_Store[COST_CHG]CREATEINSTORE=0);

@dbHot(Host_Store.ini,set,Host_Store[*);
