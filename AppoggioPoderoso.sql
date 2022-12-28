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

/* INSERIMENTO FABBRICAZIONE */
INSERT INTO Fabbricazione(MacchinaInLavorazione, Commessa)
    VALUES(1, 1);

INSERT INTO Fabbricazione(MacchinaInLavorazione, Commessa)
    VALUES(2, 2);

INSERT INTO Fabbricazione(MacchinaInLavorazione, Commessa)
    VALUES(3, 3);

INSERT INTO Fabbricazione(MacchinaInLavorazione, Commessa)
    VALUES(4, 4);

INSERT INTO Fabbricazione(MacchinaInLavorazione, Commessa)
    VALUES(5, 4);

/* INSERIMENTO FORNITORE INTERNO MESSERSI */
INSERT INTO Fornitore(RagioneSociale, PartitaIVA)
    VALUES('MESSERSÌ', '00000000000');

/* INSERIMENTO REGISTRAZIONE */
INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990010', 11, 1, 5);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('06990003', 9, 1, 15);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990010', 11, 2, 5);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('06990003', 9, 2, 15);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('30405560', 11, 3, 1);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('55089090', 11, 3, 1);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990030', 5, 3, 14);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('45157808', 4, 3, 2);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('30405560', 11, 4, 1);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('55089090', 11, 4, 1);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990030', 5, 4, 14);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('45157808', 4, 4, 2);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('55141618', 11, 5, 2);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('55141618', 11, 6, 2);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('30405560', 7, 7, 2);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990020', 8, 7, 3);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('06990003', 9, 7, 3);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('30405560', 7, 8, 2);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990020', 8, 8, 3);

INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('06990003', 9, 8, 3);