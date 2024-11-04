CREATE VIEW Ter_Load AS SELECT F1056,F1057 FROM TER_TAB;

INSERT INTO Ter_Load VALUES
('@FMT(CMP,@TER<900,@STORE,999)','901');

@UPDATE_BATCH(JOB=ADD,TAR=TER_TAB,
KEY=F1056=:F1056 AND F1057=:F1057,
SRC=SELECT * FROM Ter_Load);

DROP TABLE Ter_Load;
