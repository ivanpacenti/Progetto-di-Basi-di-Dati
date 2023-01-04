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
START TRANSACTION;
UPDATE Fabbricazione
SET Commessa = NULL
WHERE Commessa = 1;
DELETE FROM Commessa
WHERE CodiceCommessa = 1;
COMMIT WORK;

/* QUERY 9: Inserimento nuovo ordine */
START TRANSACTION;
INSERT INTO Ordine(dataordine, importo, codice, quantità)
    VALUE('2022-11-30', 13000, '09412050', 1);
INSERT INTO Richiesta(Cliente, Ordine)
    VALUES(3, LAST_INSERT_ID());
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

/* QUERY 18: Calcolo del bilancio ad una certa data */
-- Variante 1: Intervallo tra due date
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento < '2022-12-25' AND DataDocumento > '2022-10-29';
-- Variante 2: Prima di una certa data
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento < '2022-10-29';
-- Variante 3: Dopo una certa data
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento > '2022-11-29';
-- Variante 4: In un giorno specifico
SELECT SUM(Importo)
FROM Documento
WHERE DataDocumento = '2022-12-25';

/* QUERY 19: Inserimento nuovo articolo */
INSERT INTO Articolo(codice, descrizione, quantità, prezzo, altezza, larghezza, profondità, peso)
    VALUE('09645326','ARTICOLO PROVA','0','1000','10','0.6','1','850');

/* QUERY 20: Visualizza dati articolo */
SELECT *
FROM Articolo
WHERE Codice='09645326';

/* QUERY 21: Modifica peso articolo */
START TRANSACTION;
UPDATE Locazione l JOIN Ubicazione u ON u.Locazione = l.CodiceScaffale
SET PesoOccupato = PesoOccupato - ((SELECT Peso
                                   FROM Articolo
                                   WHERE Codice = '05990030') * u.Quantita)
WHERE u.Articolo = '05990030'; -- Sottrai dal peso occupato il peso che occupa quell'articolo attualmente
UPDATE Articolo
SET Peso = 15
WHERE Codice = '05990030'; -- Imposta il nuovo peso
UPDATE Locazione l JOIN Ubicazione u ON u.Locazione = l.CodiceScaffale
SET PesoOccupato = PesoOccupato + ((SELECT Peso
                                   FROM Articolo
                                   WHERE Codice = '05990030') * u.Quantita)
WHERE u.Articolo = '05990030'; -- Aggiungi il nuovo peso a peso occupato
COMMIT WORK;

/* QUERY 22: Rimozione articolo */
START TRANSACTION;
UPDATE Locazione l JOIN Ubicazione u ON u.Locazione = l.CodiceScaffale
SET PesoOccupato = PesoOccupato - ((SELECT Peso
                                   FROM Articolo
                                   WHERE Codice = '04427000') * u.Quantita)
WHERE u.Articolo = '04427000';
DELETE FROM Ubicazione
WHERE Articolo = '04427000';
DELETE FROM Articolo
WHERE Codice = '09645326';
COMMIT WORK;

/* QUERY 23: Visualizzazione articoli in una specifica locazione */
SELECT Locazione.CodiceScaffale, a.Codice, a.Descrizione, u.Quantita
FROM Locazione JOIN ubicazione u on locazione.CodiceScaffale = u.Locazione JOIN articolo a on u.Articolo = a.Codice
WHERE Locazione.CodiceScaffale = 1;

/* QUERY 24: Calcolo del profitto di una commessa di lavorazione */
SELECT SUM(Prezzo)
FROM Commessa c JOIN Fabbricazione f ON c.CodiceCommessa = f.Commessa
                JOIN MacchinaInLavorazione m ON f.MacchinaInLavorazione = m.Matricola
                JOIN Articolo a ON m.Codice = a.Codice
WHERE Commessa = 4;

/* QUERY 25: Visualizza macchine più ordinate */
SELECT Codice, COUNT(Codice) AS VolteOrdinata
FROM Ordine
GROUP BY Codice
ORDER BY VolteOrdinata DESC;

/* QUERY 26: Inserimento nuovo fornitore*/
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

/* QUERY 27: Visualizza dati fornitore */
SELECT f.Codice, f.RagioneSociale, f.PartitaIVA, r.Contatto, s.Strada, s.Civico, s.Comune
FROM Fornitore f JOIN RubricaF r ON r.Fornitore = f.Codice JOIN SediFornitori s ON s.Fornitore = f.Codice
WHERE f.Codice = 2;

/* QUERY 28: Modifica dati fornitore */
-- Variante 1: Modifica ragione sociale di un fornitore
UPDATE Fornitore
SET RagioneSociale = 'FILI.COM'
WHERE RagioneSociale = 'FILI.IT';
-- Variante 2: Modifica partita IVA di un fornitore
UPDATE Fornitore
SET PartitaIVA = '50496876299'
WHERE PartitaIVA = '50496876298';

/* QUERY 29: Rimozione dati fornitore */
START TRANSACTION;
UPDATE Registrazione
SET Fornitore = NULL
WHERE Fornitore = 2;
DELETE FROM RubricaF
WHERE Fornitore = 2;
DELETE FROM SediFornitori
WHERE Fornitore = 2;
DELETE FROM Fornitore
WHERE Codice = 2;
COMMIT WORK;

/* QUERY 30: Inserimento nuovo cliente */
INSERT INTO Cliente(RagioneSociale, PartitaIVA)
    VALUES('prova', '2130401310');

/* QUERY 31: Visualizza dati cliente */
SELECT *
from Cliente
where Codice = 1;

/* QUERY 32: Modifica dati cliente */
-- Variante 1: Modifica ragione sociale di un cliente
UPDATE Cliente
SET RagioneSociale='NICOLA S.N.C'
WHERE RagioneSociale='PICCIA';
-- Variante 2: Modifica partita IVA di un cliente
UPDATE Cliente
SET PartitaIVA='27776820634'
WHERE PartitaIVA='03947264857';

/* QUERY 33: Rimozione dati cliente */
START TRANSACTION;
UPDATE Stipulazione
SET Cliente = NULL
WHERE Cliente = 2;
UPDATE Richiesta
SET Cliente = NULL
WHERE Cliente = 2;
DELETE FROM RubricaC
WHERE Cliente = 2;
DELETE FROM SediClienti
WHERE Cliente = 2;
DELETE FROM Cliente
WHERE Codice = 2;
COMMIT WORK;

/*QUERY 34: Inserimento nuova distinta. */
START TRANSACTION;
INSERT INTO Distinta(numeroarticoli, articolodiriferimento)
    VALUE(3,'04126300');
INSERT INTO dettagliodistinta(Distinta, Quantità, Articolo)
    VALUE ('prova',3,'04126300');
COMMIT WORK;

/*QUERY 35: Visualizzazione dati distinta. */
SELECT *
FROM distinta
WHERE ArticoloDiRiferimento='05990030';

/* QUERY 36: Modifica quantità articolo in distinta */
UPDATE DettaglioDistinta
SET Quantità = 2
WHERE Distinta = '09680200' AND Articolo = '05990010';

/* QUERY 37: Rimozione dati distinta */
START TRANSACTION;
DELETE FROM DettaglioDistinta
WHERE Distinta = '09680200';
DELETE FROM DettaglioCicli
WHERE Distinta = '09680200';
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM Distinta
WHERE ArticoloDiRiferimento = '05990010';
SET FOREIGN_KEY_CHECKS = 1;
COMMIT WORK;

/* QUERY 38: Comparazione corrispondenza articoli tra fattura e DDT */
SELECT Documento, Articolo, Quantità
FROM Registrazione
WHERE Documento = 1 OR Documento = 2
ORDER BY registrazione.Articolo;

/* QUERY 39: Visualizza locazioni vuote */
SELECT *
FROM Locazione
WHERE PesoOccupato = 0;

-- Operazione 40: Visualizza documenti contenenti un dato articolo e i clienti corrispondenti
SELECT d.Numero, c.RagioneSociale, c.PartitaIVA, d.DatiPagamento,
           d.DataDocumento, d.Importo, d.TipoDocumento
    FROM Documento d JOIN Stipulazione s ON d.Numero = s.Documento
                 JOIN Cliente c ON s.Cliente = c.Codice
    WHERE d.Numero IN (SELECT Documento
                       FROM Registrazione
                       WHERE Articolo = '05990010');

/* QUERY 41: Verifica del peso per ogni scaffale */
SELECT PesoOccupato, CodiceScaffale
FROM Locazione;

/* QUERY 42: Inserimento nuovo documento */
START TRANSACTION;
INSERT INTO Documento(DatiPagamento, DataDocumento, Importo, TipoDocumento)
    VALUES('IT84H36000032000CA004857798', '2022-06-08', 16000, 'FATTURA');
INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990010', 4, LAST_INSERT_ID(), 20);
INSERT INTO Stipulazione(Cliente, Documento)
    VALUES(2, LAST_INSERT_ID());
COMMIT WORK;

/* QUERY 43: Modifica importo documento */
UPDATE Documento
SET Importo = 1999
WHERE Numero = 3;

/* QUERY 44: Visualizzazione documento */
-- Variante 1: visualizza documento in base al suo numero
SELECT *
FROM Documento d JOIN Registrazione r on d.Numero = r.Documento
                 JOIN Fornitore f on f.Codice = r.Fornitore
WHERE Numero = 3;
-- Variante 2: visualizza documento contenente articoli forniti da un dato fornitore
SELECT *
FROM Documento d JOIN Registrazione r on d.Numero = r.Documento
                 JOIN Fornitore f on f.Codice = r.Fornitore
WHERE F.RagioneSociale = 'GIANLUCHINI';
-- Variante 3: visualizza documenti con importo superiore ad un certo numero
SELECT *
FROM Documento d JOIN Registrazione r on d.Numero = r.Documento
                 JOIN Fornitore f on f.Codice = r.Fornitore
WHERE D.Importo > 10000;

/* QUERY 45: Rimozione documento */
START TRANSACTION;
DELETE FROM Stipulazione
WHERE Documento = 1;
DELETE FROM Registrazione
WHERE Documento = 1;
SET FOREIGN_KEY_CHECKS = 0; -- DISABILITO CONTROLLO CHIAVI ESTERNE, SENNÒ NON MI FA ELIMINARE: È SAFE PERCHÉ LE CHIAVI ESTERNE LE HO ELIMINATE PRIMA
DELETE FROM Documento
WHERE Numero = 1;
SET FOREIGN_KEY_CHECKS = 1; -- LO RIABILITO
COMMIT WORK;

/* QUERY 46: Assegnamento articolo a locazione */
START TRANSACTION;
INSERT INTO Ubicazione(Locazione, Articolo, Quantita) VALUES(3, '05990010', 2)
ON DUPLICATE KEY UPDATE
  Quantita = Quantita + 2;
UPDATE Locazione
    SET PesoOccupato = PesoOccupato + ((SELECT Peso
                                        FROM articolo
                                        WHERE Codice = '05990010') * 2)
WHERE CodiceScaffale = 3;
COMMIT WORK;

/* QUERY 47: Modifica locazione articolo */
START TRANSACTION;
UPDATE Ubicazione
SET Ubicazione.Quantita = Ubicazione.Quantita - 50
WHERE Articolo = '04543000' AND Locazione = 3;
UPDATE Locazione l JOIN Ubicazione u ON u.Locazione = l.CodiceScaffale
SET PesoOccupato = PesoOccupato - ((SELECT Peso
                                    FROM Articolo
                                    WHERE Codice = '04543000') * 50)
WHERE CodiceScaffale = 3;
UPDATE Locazione l JOIN Ubicazione u ON u.Locazione = l.CodiceScaffale
SET PesoOccupato = PesoOccupato + ((SELECT Peso
                                    FROM Articolo
                                    WHERE Codice = '04543000') * 50)
WHERE CodiceScaffale = 4;
INSERT INTO Ubicazione(Locazione, Articolo, Quantita) VALUES(4, '04543000', 50)
ON DUPLICATE KEY UPDATE
  Quantita = Quantita + 50;
DELETE FROM Ubicazione
WHERE Ubicazione.Quantita = 0 AND Locazione = 3; -- Questa scrittura viene eseguita solo quando la quantità diventa = 0, cosa che accade di rado
COMMIT WORK;

/* QUERY 48: Visualizzazione locazione articolo */
SELECT Sezione, RigaScaff, ColonnaScaff, Quantita
FROM Locazione l JOIN Ubicazione u ON u.Locazione = l.CodiceScaffale
WHERE Articolo = '04126300';

/* QUERY 49: Rimozione articolo da locazione */
START TRANSACTION;
UPDATE Locazione l JOIN Ubicazione u ON l.CodiceScaffale = u.Locazione
SET PesoOccupato = PesoOccupato - ((SELECT Peso
                                   FROM Articolo
                                   WHERE Codice = '04543000') * u.Quantita)
WHERE u.Articolo = '04543000' AND u.Locazione = 3;
DELETE FROM Ubicazione
WHERE Ubicazione.Articolo = '04543000' AND Ubicazione.Locazione = 3;
COMMIT WORK;



