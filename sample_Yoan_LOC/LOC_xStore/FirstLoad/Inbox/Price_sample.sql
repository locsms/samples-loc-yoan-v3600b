CREATE VIEW Price_Load AS SELECT F01,F1000,F126,F32,F902,F1001,F1014,F07,F21,F30,F31,F33,F34,F35,F36,F37,F41,F42,F43,F49,F59,F62,F63,F109,F111,F112,F113,F119,F122,F129,F130,F133,F135,F136,F137,F138,F139,F140,F142,F143,F144,F145,F146,F147,F148,F164,F166,F167,F168,F169,F175,F177,F179,F181,F182,F183,F184,F205,F221,F232,F253,F903,F1005,F1006,F1007,F1008,F1009,F1010,F1011,F1012,F1013,F1015,F1133,F1134,F1135,F1186,F1187,F1188,F1189,F1190,F1191,F1192,F1193,F1194,F1195,F1196,F1197,F1198,F1199,F1200,F1201,F1202,F1203,F1204,F1205,F1206,F1207,F1208,F1209,F1210,F1211,F1212,F1213,F1214,F1215,F1216,F1217,F1218,F1219,F1220,F1221,F1222,F1223,F1224,F1225,F1226,F1227,F1228,F1229,F1230,F1231,F1232,F1233,F1234,F1235,F1713,F1714,F1759,F1767,F1768,F1769,F1770,F1799,F1800,F1801,F1802,F1803,F1804,F1805,F1806,F1885,F1927,F1928,F1930,F1934,F1935,F1964,F2119,F2569,F2570,F2571,F2572,F2573,F2574,F2575,F2576,F2577,F2578,F2579,F2580,F2667,F2668,F2694,F2695,F2696,F2744,F2955 FROM PRICE_TAB;

INSERT INTO Price_Load VALUES
('0201002102110','PAL',1,,'MANUAL',1,'2018327',,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'2018327 04:21:50',,,,,,,,'REG',0,0,'0421',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'001',,,,,,,,,,,,,,,,,,,,),
('0201002102111','PAL',1,,'MANUAL',1,'2018327',,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'2018327 04:22:54',,,,,,,,'REG',0,0,'0422',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'001',,,,,,,,,,,,,,,,,,,,),
('0201002102211','PAL',1,,'MANUAL',1,'2018327',,1,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'2018327 04:23:30',,,,,,,,'REG',0,0,'0423',,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,'001',,,,,,,,,,,,,,,,,,,,),

@UPDATE_BATCH(JOB=ADDRPL,TAR=PRICE_TAB,
KEY=F01=:F01 AND F1000=:F1000 AND F126=:F126,
SRC=SELECT * FROM Price_Load);

DROP TABLE Price_Load;
