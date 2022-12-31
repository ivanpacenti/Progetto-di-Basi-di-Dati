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

