/* ADD/REPLACE PROFILE */

CREATE VIEW Profile_Load AS SELECT F1000,F2669,F2687,F2670,F2671 FROM PROFILE_TAB;

INSERT INTO Profile_Load VALUES
('PAL','XSTORE','Remote/eStore_start_links','home',''),
('PAL','XSTORE','Remote/eStore_base_delivery','default',''),
('PAL','XSTORE','Remote/eStore_base_delivery','minimum',''),
('PAL','XSTORE','Remote/eStore_base_donation','name',''),
('PAL','XSTORE','Remote/eStore_base_donation','default',''),
('PAL','XSTORE','Remote/eStore_base_donation','docUrl',''),
('PAL','XSTORE','Remote/eStore_base_donation','docUrlFr',''),
('PAL','XSTORE','Remote/eStore_base_donation','startDate',''),
('PAL','XSTORE','Remote/eStore_base_donation','endDate',''),
('PAL','XSTORE','Remote/eStore_base_handling','future','3'),
('PAL','XSTORE','Remote/eStore_base_pickup','minimum',''),
('PAL','XSTORE','Remote/eStore_base_pos','driverName',''),
('PAL','XSTORE','Remote/eStore_base_pos','inventory','0'),
('PAL','XSTORE','Remote/eStore_base_pos','overshoot','0'),
('PAL','XSTORE','Remote/eStore_base_pos','tender_delivery','104;106'),
('PAL','XSTORE','Remote/eStore_base_pos','tender_pickup','104;106'),
('PAL','XSTORE','Remote/eStore_base_pos','tenders','104;106'),
('PAL','XSTORE','Remote/eStore_base_trs','clientSearch','1'),
('PAL','XSTORE','Remote/eStore_base_trs','stores','0'),
('PAL','XSTORE','Remote/eStore_flyer_dates','future','0'),
('PAL','XSTORE','Remote/eStore_flyer_dates','past','0'),
('PAL','XSTORE','Remote/eStore_kiosk','deli_category','130'),
('PAL','XSTORE','Remote/eStore_kiosk','kioskCarousel','1'),
('PAL','XSTORE','Remote/eStore_kiosk','kioskCarouselTime','5000'),
('PAL','XSTORE','Remote/eStore_kiosk','kioskMiniCart','0'),
('PAL','XSTORE','Remote/eStore_kiosk','timeout','60000'),

@UPDATE_BATCH(JOB=ADDRPL,TAR=PROFILE_TAB,
KEY=F1000=:F1000 AND F2669=:F2669 AND F2687=:F2687 AND F2670=:F2670,
SRC=SELECT * FROM Profile_Load);

DROP TABLE Profile_Load;
