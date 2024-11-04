
@wizRpl(application[DEPLOY_TARGET]HOST_OFFICE=DSM);

@wizRpl(application[AUTO_UPDATE]DOWNLOAD_HELP=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_PROGRAMS=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_OPTIONS=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_SAMPLES=1);
@wizRpl(application[AUTO_UPDATE]DOWNLOAD_BLOCKING=1);

@dbHot(application.ini,set,application[*);
