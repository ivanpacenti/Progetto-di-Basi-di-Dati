USE messersi;
/* FILE  PER LE  QUERY*/


/* QUERY 1: Calcolo spesa totale di un dato cliente */
SELECT SUM(Importo) AS SpesaTotale
FROM Stipulazione JOIN Documento ON Stipulazione.Documento = Documento.Numero
WHERE Cliente = 1;


/* QUERY 2: Inserimento nuova locazione */
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
    VALUES(0, 'A', 'b', 1, 1);  -- VALUES(...) da scrivere sul pdf


/* QUERY 3: Visualizzazione locazione */
SELECT Sezione, Scaffalatura, RigaScaff, ColonnaScaff, PesoOccupato
FROM locazione
WHERE CodiceScaffale = 4;

/* QUERY 4: Rimozione locazione */
DELETE FROM Locazione
WHERE CodiceScaffale = 8 AND NOT EXISTS (SELECT NULL
                                          FROM Ubicazione
                                          WHERE Locazione = 8);


/* QUERY 5: Visualizzazione Ordini in un determinato periodo */
insert into commessa(datainizio, datafine) VALUE
    (...);
/* QUERY 6: MODIFICA COMMESSA DI LAVORAZIONE */
UPDATE commessa
SET (...)=(...)
WHERE CodiceCOmmessa= 1;

/* QUERY 7: VISUALIZZA COMMESSA DI LAVORAZIONE */
select *
FROM commessa
WHERE CodiceCommessa=1;

/* QUERY 8: RIMOZIONE COMMMESSA DI LAVORAZIONE */
DELETE FROM commessa
WHERE CodiceCommessa=1;

/* QUERY 9: inserimento nuovo ordine.*/
INSERT INTO ordine(dataordine, importo, codice, quantità)
    VALUE(...);

/* QUERY 10: MODIFICA ORDINE */
UPDATE ordine
SET importo=300
WHERE Numero=2;


/* QUERY 11:VISUALIZZA ORDINE */
SELECT *
FROM ordine
WHERE Numero=1;

/* QUERY 12: RIMOZIONE ORDINE */

DELETE FROM ordine
WHERE Numero=1;

/* QUERY 13: Visualizzazione Ordini in un determinato periodo */
SELECT *
FROM Ordine
WHERE DataOrdine > '2022-09-15' AND DataOrdine < '2022-10-28';


/* QUERY 14: Visualizzazione Documenti in un determinato periodo */
SELECT *
FROM Documento
WHERE DataDocumento > '2022-09-15' AND DataDocumento < '2022-10-28';


/* QUERY 15: Visualizzazione Commesse di Lavorazione in un determinato periodo */
SELECT *
FROM Commessa
WHERE DataInizio > '2022-07-15' AND DataFine < '2022-10-28';


/* QUERY 16: Consultazione degli Articoli presenti in magazzino */
SELECT Codice, Descrizione, Quantità
FROM Articolo
WHERE Articolo.Quantità > 0;


/* QUERY 17: Verifica disponibilità materiali per Commessa di Lavorazione */
SELECT Articolo.Descrizione, Articolo.Quantità
FROM Articolo JOIN Composizione ON articolo.Codice = composizione.Articolo JOIN macchinainlavorazione m on composizione.MacchinaInLavorazione = m.Matricola JOIN fabbricazione f on m.Matricola = f.MacchinaInLavorazione
WHERE Commessa = 3;

/* QUERY 18: Calcolo del bilancio ad una certa data
   Variante 1: Intervallo tra due date */
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento < '2022-12-25' AND DataDocumento > '2022-10-29';
/* Variante 2: Prima di una certa data */
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento < '2022-10-29';
/* Variante 3: Dopo una certa data */
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento > '2022-11-29';
/* Variante 4: In un giorno specifico */
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento = '2022-12-25';

/* QUERY 19: Inserimento nuovo articolo */
INSERT INTO Articolo(codice, descrizione, quantità, prezzo, altezza, larghezza, profondità, peso)
    VALUE('09645326','ARTICOLO PROVA','0','1000','10','0.6','1','850');

/* QUERY 20: VISALIZZA DATI ARTICOLO */
SELECT *
FROM articolo
WHERE articolo.Codice='09645326';

/* QUERY 21: MODIFICA DATI ARTICOLO */
START TRANSACTION;
UPDATE Articolo
SET Peso = 15
WHERE Codice = '05990030';

UPDATE Locazione JOIN Ubicazione ON Ubicazione.Locazione = Locazione.CodiceScaffale
SET PesoOccupato = PesoOccupato - ((SELECT Peso
                                   FROM Articolo
                                   WHERE Codice = '05990030') * Ubicazione.Quantita)
WHERE Ubicazione.Articolo = '05990030';
COMMIT WORK;

/* QUERY 22: Rimozione dati articolo */
START TRANSACTION;
UPDATE Locazione JOIN Ubicazione ON Ubicazione.Locazione = Locazione.CodiceScaffale
SET PesoOccupato = PesoOccupato - ((SELECT Peso
                                   FROM Articolo
                                   WHERE Codice = '04427000') * Ubicazione.Quantita)
WHERE Ubicazione.Articolo = '04427000';

DELETE FROM Ubicazione
WHERE Ubicazione.Articolo = '04427000';

DELETE FROM Articolo
WHERE Codice='09645326';
COMMIT WORK;

/* QUERY 23: Visualizzazione articoli in una specifica locazione */
SELECT Locazione.CodiceScaffale, a.Codice, a.Descrizione, u.Quantita
FROM Locazione JOIN ubicazione u on locazione.CodiceScaffale = u.Locazione JOIN articolo a on u.Articolo = a.Codice
WHERE Locazione.CodiceScaffale = 1;

/* QUERY 24:CALCOLO SPESA COMMESSA DI LAVORAZIONE */

/* QUERY 25:INSERIMENTO DATI E OPERAZIONI DDT */


/*QUERY 26:INSERIMENTO NUOVO FORNITORE*/
START TRANSACTION;
INSERT INTO Fornitore(ragionesociale, partitaiva)
    VALUE ('Fornitore di Prova', '12345678901');
INSERT INTO RubricaF(Fornitore, Contatto)
    SELECT Codice, 'email@email.it'
    FROM Fornitore
    WHERE RagioneSociale = 'Fornitore di Prova';
INSERT INTO SediFornitori(Fornitore, Strada, Civico, Comune)
    SELECT Codice, 'Via di Prova', 1, 'Ancona'
    FROM Fornitore
    WHERE RagioneSociale = 'Fornitore di Prova';
COMMIT WORK;

/*QUERY 27:VISUALIZZA DATI FORNITORE*/
SELECT *
FROM Fornitore
WHERE Codice=1;


/*QUERY 28:MODIFICA DATI FORNITORE*/
update fornitore
set fornitore.RagioneSociale='prova'
where fornitore.Codice=1;

/*QUERY 29:MODIFICA DATI FORNITORE*/
DELETE FROM fornitore
where Fornitore.codice= 2;

/*QUERY 30:INSERIMENTO DATI CLIENTE*/
INSERT INTO cliente(ragionesociale, partitaiva)
    VALUE();

/*QUERY 31:VISUALIZZA DATI CLIENTE*/
SELECT *
from fornitore
where Codice=1;

/*QUERY 32:MODIFICA DATI CLIENTE*/
update fornitore
set fornitore.()=()
where fornitore.Codice=();

/*QUERY 33:ELIMINA DATI CLIENTE*/
DELETE FROM Cliente
WHERE Cliente.codice = 2;

/* QUERY 38: Comparazione tra fatture e DDT */
SELECT Registrazione.Documento, Registrazione.Articolo, Registrazione.Quantità
FROM Registrazione
WHERE Documento = 1 OR Documento = 2
ORDER BY registrazione.Articolo;

/* QUERY 41: Verifica del peso per ogni scaffale*/
SELECT PesoOccupato, CodiceScaffale
FROM Locazione;
