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
WHERE CodiceScaffale = 87 AND NOT EXISTS (SELECT NULL
                                          FROM Ubicazione
                                          WHERE Locazione = 87);


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


/* QUERY 38: Comparazione tra fatture e DDT */
SELECT Registrazione.Documento, Registrazione.Articolo, Registrazione.Quantità
FROM Registrazione
WHERE Documento = 1 OR Documento = 2
ORDER BY registrazione.Articolo;

/* QUERY 41: Verifica del peso per ogni scaffale*/
SELECT PesoOccupato, CodiceScaffale
FROM Locazione;