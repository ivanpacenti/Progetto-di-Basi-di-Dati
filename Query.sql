USE messersi;

/* QUERY 1: Calcolo spesa totale di un dato cliente */
SELECT SUM(Importo) AS SpesaTotale
FROM Stipulazione s JOIN Documento d ON s.Documento = d.Numero
WHERE s.Cliente = 1;


/* QUERY 2: Inserimento nuova locazione */
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
    VALUES(0, 'A', 'b', 1, 1);


/* QUERY 3: Visualizzazione locazione */
SELECT Sezione, Scaffalatura, RigaScaff, ColonnaScaff, PesoOccupato
FROM Locazione
WHERE CodiceScaffale = 4;


/* QUERY 4: Rimozione locazione */
DELETE FROM Locazione
WHERE CodiceScaffale = 8 AND NOT EXISTS(SELECT NULL
                                        FROM Ubicazione
                                        WHERE Locazione = 8);


/* QUERY 5: Inserimento commessa di lavorazione */
INSERT INTO Commessa(datainizio, datafine)
    VALUES('2022-10-29', '2022-11-29');


/* QUERY 6: Modifica data fine commessa di lavorazione */
UPDATE Commessa
SET DataFine = '2022-11-30'
WHERE CodiceCommessa = 7;


/* QUERY 7: Visualizza commessa di lavorazione */
SELECT c.CodiceCommessa, c.DataInizio, c.DataFine, f.MacchinaInLavorazione, m.Codice
FROM Commessa c JOIN Fabbricazione f ON c.CodiceCommessa = f.Commessa
                JOIN MacchinaInLavorazione m on f.MacchinaInLavorazione = m.Matricola
WHERE CodiceCommessa = 4;


/* QUERY 8: Rimozione commessa di lavorazione */
DELETE FROM Commessa
WHERE CodiceCommessa = 1;


/* QUERY 9: Inserimento nuovo ordine */
START TRANSACTION;
INSERT INTO Ordine(dataordine, importo, codice, quantità)
    VALUE('2022-11-30', 13000, '09412050', 1);
INSERT INTO Richiesta(Cliente, Ordine)
    SELECT 3, Numero
    FROM Ordine
    ORDER BY Numero DESC
    LIMIT 1;
COMMIT WORK;


/* QUERY 10: Modifica ordine */
-- Variante 1: modifica dell'importo
UPDATE Ordine
SET Importo = 300
WHERE Numero = 2;
-- Variante 2: modifica della quantità
UPDATE Ordine
SET Quantità = 3
WHERE Numero = 2;


/* QUERY 11: Visualizza ordine */
SELECT o.Numero, o.DataOrdine, o.Importo, o.Codice, o.Quantità, c.Codice AS CodiceCliente, c.RagioneSociale
FROM Ordine o JOIN Richiesta r ON o.Numero = r.Ordine
              JOIN Cliente c on r.Cliente = c.Codice
WHERE Numero = 4;


/* QUERY 12: Rimozione ordine */
START TRANSACTION;
DELETE FROM Ordine
WHERE Numero = 1;
DELETE FROM Richiesta
WHERE Ordine = 1;
COMMIT WORK;


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

/* QUERY 20: VISUALIZZA DATI ARTICOLO */
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

/*QUERY 27: Visualizza dati fornitore */
SELECT f.Codice, f.RagioneSociale, f.PartitaIVA, r.Contatto, s.Strada, s.Civico, s.Comune
FROM Fornitore f JOIN RubricaF r ON r.Fornitore = f.Codice JOIN SediFornitori s ON s.Fornitore = f.Codice
WHERE f.Codice = 2;

/*QUERY 28: Modifica dati fornitore */
UPDATE fornitore
SET fornitore.RagioneSociale='prova'
WHERE fornitore.Codice=1;

/*QUERY 29: Rimozione dati fornitore */
DELETE FROM fornitore
where Fornitore.codice= 2;

/*QUERY 30: Inserimento nuovo cliente */
INSERT INTO cliente(ragionesociale, partitaiva)
    VALUE();

/*QUERY 31: Visualizza dati cliente */
SELECT *
from fornitore
where Codice=1;

/*QUERY 32: Modifica dati cliente */
UPDATE Cliente
SET RagioneSociale='NICOLA S.N.C'
WHERE RagioneSociale='PICCIA';
#ALTERNATIVA
UPDATE Cliente
SET PartitaIVA='27776820634'
WHERE PartitaIVA='03947264857';

/*QUERY 33: ELIMINA DATI CLIENTE */
DELETE FROM Cliente
WHERE Cliente.codice = 2;

/*QUERY 34: Inserimento nuova distinta. */

/*QUERY 35: Visualizzazione dati distinta. */

/*QUERY 36: Modifica dati distinta. */

/*QUERY 37: Rimozione dati distinta. */

/* QUERY 38: Comparazione tra fatture e DDT */
SELECT Registrazione.Documento, Registrazione.Articolo, Registrazione.Quantità
FROM Registrazione
WHERE Documento = 1 OR Documento = 2
ORDER BY registrazione.Articolo;

/* QUERY 39: Backup automatico.*/

/* QUERY 40: Backup manuale.*/

/* QUERY 41: Verifica del peso per ogni scaffale*/
SELECT PesoOccupato, CodiceScaffale
FROM Locazione;
