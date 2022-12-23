USE Messersi;
CREATE TABLE Ordine (Numero integer, Data date,Importo integer,
 Codice varchar(25), Quantita integer);
INSERT INTO Ordine (Numero, Data, Importo, Codice, Quantita)
VALUE ('0001','2022-12-08','1000','22OF0001','2');
select * from Ordine;