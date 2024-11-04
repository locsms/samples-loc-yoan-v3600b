/* ADD/REPLACE PROFILE */

CREATE VIEW Profile_Load AS SELECT F1000,F2669,F2687,F2670,F2671 FROM PROFILE_TAB;

INSERT INTO Profile_Load VALUES
('PAL','DEFAULT','eServer/email','RESOURCES','https://demo.loccloud.net/Bitmaps/'),
('PAL','DEFAULT','eServer/email','SERVERSMS','https://demo.loccloud.net/'),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','bonusFull','100'),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','bonusNew','50'),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','defaultRisk','1'),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','defaultShopper','2'),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','defaultStatus',''),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','defaultStore',''),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','F1148_PREFIX',''),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','reCaptchaSecret',''),
('PAL','DEFAULT','HOT_RPLG_eServer_base_clt','PayLinkExpiry','30'),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','F1000_ECL','####'),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','F1000_LOC',''),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','F1000_POS','####'),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','F1000_PRI','####'),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','F126_CMP',''),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','GROUP1',''),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','GROUP2',''),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','inventory','1'),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','quickMethod',''),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','classMethod','OR'),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','rating','1'),
('PAL','XSTORE','HOT_RPLG_eServer_base_sys','SharedRoute','0'),
('PAL','XSTORE','HOT_RPLG_eServer_base_itm','sort',''),
('PAL','XSTORE','HOT_RPLG_eServer_base_cpn','sort',''),
('PAL','XSTORE','Trs','HDRSALF1068','ORDER'),

@UPDATE_BATCH(JOB=ADDRPL,TAR=PROFILE_TAB,
KEY=F1000=:F1000 AND F2669=:F2669 AND F2687=:F2687 AND F2670=:F2670,
SRC=SELECT * FROM Profile_Load);

DROP TABLE Profile_Load;
