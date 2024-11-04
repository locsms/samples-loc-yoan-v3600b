/* CONTROL IS BASED ON OWNERSHIP */

@fmt(CMP,@dbHot(INI,Samples.ini,SWITCHES,DEPLOY_SCENARIO)=STORE,,'®fmt(CHR,26)');

/* RESET KEY FOR STORE */

/* ACTIVATE ACCEPT ALL STORE CHANGES */

/* CREATE INSTORE BATCH FROM HOST CHANGES */

/* SEND BACK INSTORE PRICE TO PRICE_STORE */

/* CREATE BATCH ON LANE CHANGES */

/* Authorize change in store with operator level 5 and plus */
@wizRpl(system.ini[SKU]OwnerMode=);
@wizRpl(system.ini[SKU]OwnerLevel=);

@DBHOT(System.ini,SET,System.ini[*);
@WIZRESET;
