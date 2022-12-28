USE Messersi;

/* INSERIMENTO CICLO */
INSERT INTO Ciclo(Tipologia)
    VALUES('Taglio laser');

INSERT INTO Ciclo(Tipologia)
    VALUES('Foratura');

INSERT INTO Ciclo(Tipologia)
    VALUES('Piegatura');

INSERT INTO Ciclo(Tipologia)
    VALUES('Saldatura');

INSERT INTO Ciclo(Tipologia)
    VALUES('Verniciatura');

INSERT INTO Ciclo(Tipologia)
    VALUES('Assemblaggio');


/* INSERIMENTO DETTAGLIO CICLI */
INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09203999', 'Taglio laser');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09203999', 'Saldatura');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09508080', 'Foratura');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09508080', 'Assemblaggio');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09508080', 'Verniciatura');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09576488', 'Piegatura');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09680200', 'Taglio laser');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09680200', 'Foratura');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09782020', 'Piegatura');

INSERT INTO DettaglioCicli(Distinta, Ciclo)
    VALUES('09782020', 'Assemblaggio');