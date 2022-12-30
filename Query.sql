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
-- Possiamo inserire anche una nuova operazione del tipo: visualizzazione articoli in una specifica locazione

/* QUERY 4: Rimozione locazione */
DELETE FROM Locazione
WHERE CodiceScaffale = 8 AND NOT EXISTS (SELECT NULL
                                          FROM Ubicazione
                                          WHERE Locazione = 8);


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


/* QUERY 16: Consultazione degli Articoli presenti in magazzino
   !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! CAMBIARE NOME IN PDF
   */
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
UPDATE articolo
SET peso =10
WHERE Codice='09645326';

SELECT Articolo, Locazione
FROM Ubicazione
WHERE Articolo= 04543000;

SELECT PesoOccupato
FROM locazione
WHERE CodiceScaffale= '2';

update locazione
SET PesoOccupato = 30
WHERE CodiceScaffale= '2';

/* QUERY 22: rimozione dati articolo */
DELETE FROM  articolo
WHERE Codice='09645326';
SELECT ubicazione.Locazione, ubicazione.Articolo,ubicazione.Quantita, peso
FROM ubicazione join Articolo ON Ubicazione.Articolo=articolo.Codice
WHERE Ubicazione.Articolo='04427000';
DELETE FROM Ubicazione
WHERE Ubicazione.Articolo =04543000;

UPDATE  locazione
set PesoOccupato= PesoOccupato - (valore)
WHERE CodiceScaffale=2;


/* QUERY 23:VISUALIZZAZIONE LISTA ARTICOLI */
SELECT Articolo.quantità, Articolo.Codice, Articolo.Descrizione
FROM Articolo
WHERE Articolo.quantità>0;

/* QUERY 24:CALCOLO SPESA COMMESSA DI LAVORAZIONE */

/* QUERY 25:INSERIMENTO DATI E OPERAZIONI DDT */


/*QUERY 26:INSERIMENTO NUOVO FORNITORE*/
INSERT INTO fornitore(ragionesociale, partitaiva)
    VALUE ();

/*QUERY 27:VISUALIZZA DATI FORNITORE*/
SELECT *
from fornitore
where Codice=1;


/*QUERY 28:MODIFICA DATI FORNITORE*/
update fornitore
set fornitore.()=()
where fornitore.Codice=();

/*QUERY 29:MODIFICA DATI FORNITORE*/
DELETE FROM fornitore
where Fornitore.codice= 2;

/* QUERY 38: Comparazione tra fatture e DDT */
SELECT Registrazione.Documento, Registrazione.Articolo, Registrazione.Quantità
FROM Registrazione
WHERE Documento = 1 OR Documento = 2
ORDER BY registrazione.Articolo;

/* QUERY 41: Verifica del peso per ogni scaffale*/
SELECT PesoOccupato, CodiceScaffale
FROM Locazione;