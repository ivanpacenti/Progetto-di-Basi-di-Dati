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


/* INSERIMENTO COMPOSIZIONE */
INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(1, '05990010', 3);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(1, '30156001', 1);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(2, '45150898', 1);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(2, '45157808', 2);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(2, '55030450', 1);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(3, '55141618', 2);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(3, '06990002', 5);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(3, '05990020', 7);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(4, '30156001', 2);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(4, '30405560', 1);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(5, '05990020', 4);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(5, '55030790', 2);

INSERT INTO Composizione(MacchinaInLavorazione, Articolo, Quantità)
    VALUES(5, '30405560', 1);