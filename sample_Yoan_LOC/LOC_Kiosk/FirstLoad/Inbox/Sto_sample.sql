CREATE VIEW Sto_Load AS SELECT F1000,F1018,F1180,F1181,F1182,F1937,F1965,F1966,F2691 FROM STO_TAB;

INSERT INTO Sto_Load VALUES
('999','xStore orders',,,,,,,''),
('XXSC','xStore customers exchange',,,,,,,''),
('XXSU','xStore users exchange',,,,,,,'');

@UPDATE_BATCH(JOB=ADD,TAR=STO_TAB,
KEY=F1000=:F1000,
SRC=SELECT * FROM Sto_Load);

DROP TABLE Sto_Load;

