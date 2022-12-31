/* QUERY 42: Inserimento nuovo documento.*/

INSERT INTO documento(DatiPagamento, DataDocumento, Importo, TipoDocumento)
    VALUES('IT84H36000032000CA004857798','2022-06-08',16000,'FATTURA');
INSERT INTO Registrazione(Articolo, Fornitore, Documento, Quantità)
    VALUES('05990010',4,LAST_INSERT_ID(),20);

