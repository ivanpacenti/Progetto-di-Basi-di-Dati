/* QUERY 49: Rimozione articolo da locazione.*/

DELETE
FROM Ubicazione
WHERE Ubicazione.Articolo = '04543000'
  AND Ubicazione.Locazione = 3;

/* QUERY 48: Visualizzazione locazione articolo.*/
SELECT Sezione, RigaScaff, ColonnaScaff, Quantita
FROM Locazione
         JOIN Ubicazione ON Ubicazione.Locazione = Locazione.CodiceScaffale
WHERE Articolo = '04126300';

/* QUERY 47: Modifica locazione articolo.*/

UPDATE Ubicazione
SET Ubicazione.Quantita=IF(Ubicazione.Quantita > 50,
                           Ubicazione.Quantita - 50,
                           IF(Ubicazione.Quantita = 50, 0, NULL))
WHERE Articolo = '04543000'
  AND Locazione = 3;
UPDATE Locazione JOIN Ubicazione ON Ubicazione.Locazione = Locazione.CodiceScaffale
SET PesoOccupato=PesoOccupato - (SELECT Peso
                                 FROM Articolo
                                 WHERE Codice = '04543000'
                                   AND Locazione = 3) * 50
WHERE CodiceScaffale = 3;
UPDATE Locazione JOIN Ubicazione ON Ubicazione.Locazione = Locazione.CodiceScaffale
SET PesoOccupato=PesoOccupato + (SELECT Peso
                                 FROM Articolo
                                 WHERE Codice = '04543000'
                                   AND Locazione = 3) * 50
WHERE CodiceScaffale = 5
  AND (PesoOccupato + (SELECT Peso
                       FROM Articolo
                       WHERE Codice = '04543000'
                         AND Locazione = 3) * 50) < 100;
DELETE
FROM Ubicazione
WHERE Ubicazione.Quantita = 0
  AND Locazione = 3;

/* QUERY 46: Assegnamento articolo a locazione.*/

INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('1', 'A', 'a', '1', '2');

/* QUERY 45: Rimozione documento.*/

DELETE FROM Stipulazione
WHERE Documento=1;
DELETE FROM Registrazione
WHERE Documento=1;
SET FOREIGN_KEY_CHECKS=0; #DISABILITO CONTROLLO CHIAVI ESTERNE, SENNò NON MI FA ELIMINARE: è SAFE PERCHè LE CHIAVI ESTERNE LE HO ELIMINATE PRIMA
DELETE FROM Documento
WHERE Documento.Numero = 1;
SET FOREIGN_KEY_CHECKS=1; #LO RIABILITO

/* QUERY 44: Visualizzazione documento.*/

SELECT *
FROM Documento D
         JOIN Registrazione R on D.Numero = R.Documento
         JOIN Fornitore F on F.Codice = R.Fornitore
WHERE Numero = 3;
#ALTERNATIVA
SELECT *
FROM Documento D
        JOIN Registrazione R on D.Numero = R.Documento
         JOIN Fornitore F on F.Codice = R.Fornitore
WHERE F.RagioneSociale='GIANLUCHINI';
#ALTERNATIVA
SELECT *
FROM Documento D
        JOIN Registrazione R on D.Numero = R.Documento
         JOIN Fornitore F on F.Codice = R.Fornitore
WHERE D.Importo>10000;

/* QUERY 43: Modifica importo documento.*/

UPDATE Documento D
SET D.Importo=1999
WHERE D.Numero=3;

/* QUERY 42: Inserimento nuovo documento.*/

INSERT INTO documento(DatiPagamento, DataDocumento, Importo, TipoDocumento)
    VALUES('IT84H36000032000CA004857798','2022-06-08',16000,'FATTURA');
INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990010',4,LAST_INSERT_ID(),20);

