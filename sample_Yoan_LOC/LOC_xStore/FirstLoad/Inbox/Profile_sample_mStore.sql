/* ADD/REPLACE PROFILE */

CREATE VIEW Profile_Load AS SELECT F1000,F2669,F2687,F2670,F2671 FROM PROFILE_TAB;

INSERT INTO Profile_Load VALUES
('PAL','XSTORE','Remote/mStore_start_links','home',''),
('PAL','XSTORE','Remote/mStore_base_delivery','default',''),
('PAL','XSTORE','Remote/mStore_base_delivery','minimum',''),
('PAL','XSTORE','Remote/mStore_base_donation','name',''),
('PAL','XSTORE','Remote/mStore_base_donation','default',''),
('PAL','XSTORE','Remote/mStore_base_donation','docUrl',''),
('PAL','XSTORE','Remote/mStore_base_donation','docUrlFr',''),
('PAL','XSTORE','Remote/mStore_base_donation','startDate',''),
('PAL','XSTORE','Remote/mStore_base_donation','endDate',''),
('PAL','XSTORE','Remote/mStore_base_handling','future','5'),
('PAL','XSTORE','Remote/mStore_base_pickup','minimum',''),
('PAL','XSTORE','Remote/mStore_base_pos','driverName',''),
('PAL','XSTORE','Remote/mStore_base_pos','inventory','1'),
('PAL','XSTORE','Remote/mStore_base_pos','overshoot','1'),
('PAL','XSTORE','Remote/mStore_base_pos','tender_delivery','104;106'),
('PAL','XSTORE','Remote/mStore_base_pos','tender_pickup','104;106'),
('PAL','XSTORE','Remote/mStore_base_pos','tenders','104;106'),
('PAL','XSTORE','Remote/mStore_base_trs','clientSearch','1'),
('PAL','XSTORE','Remote/mStore_base_trs','stores','1'),
('PAL','XSTORE','Remote/mStore_flyer_dates','future','0'),
('PAL','XSTORE','Remote/mStore_flyer_dates','past','0'),
('PAL','XSTORE','Remote/mStore_base_trs','biometric','0'),
('PAL','XSTORE','Remote/mStore_base_offline','barcode','1'),
('PAL','XSTORE','Remote/mStore_base_pos','stripCheckDigit','UPC_A;UPC_E;EAN_8;EAN_13'),

@UPDATE_BATCH(JOB=ADDRPL,TAR=PROFILE_TAB,
KEY=F1000=:F1000 AND F2669=:F2669 AND F2687=:F2687 AND F2670=:F2670,
SRC=SELECT * FROM Profile_Load);

DROP TABLE Profile_Load;
