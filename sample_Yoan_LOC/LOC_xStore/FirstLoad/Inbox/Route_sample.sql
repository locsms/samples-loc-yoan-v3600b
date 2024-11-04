/* SET DEFAULT ROUTES */
@fmt(CMP,@dbSelect(SELECT COUNT(*) FROM ROUTE_TAB WHERE F2893>='@DSSF')=0,'®exec(sqi=route_gen_week)');
