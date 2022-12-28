USE Messersi;
/* DOCUMENTO*/
INSERT INTO documento(DatiPagamento, DataDocumento, Importo, TipoDocumento)
    VALUE('IT32X0300203280863596584462','2022-07-25',13000,'Fattura');
INSERT INTO documento(DatiPagamento,DataDocumento,Importo, TipoDocumento)
    VALUE('0','2022-07-25',0,'DDT');
INSERT INTO documento(DatiPagamento,DataDocumento,Importo, TipoDocumento)
    VALUE('IT32X0300203280863596584462','2022-9-20',15000,'FATTURA');
INSERT INTO documento(DatiPagamento,DataDocumento,Importo, TipoDocumento)
    VALUE('0','2022-9-20',0,'DDT');

INSERT INTO documento(DatiPagamento,DataDocumento,Importo, TipoDocumento)
    VALUE('IT32X0300203280863596584462','2022-11-02',18000,'FATTURA');
INSERT INTO documento(DatiPagamento,DataDocumento,Importo, TipoDocumento)
    VALUE('0','2022-11-02',0,'DDT');

INSERT INTO documento(DatiPagamento,DataDocumento,Importo, TipoDocumento)
    VALUE('IT32X0300203280863596584462','2022-12-21',50000,'FATTURA');
INSERT INTO documento(DatiPagamento,DataDocumento,Importo, TipoDocumento)
    VALUE('0','2022-12-21',0,'DDT');


/*INSERIMENTO COMMESSA */
INSERT INTO commessa( datainizio, datafine)
    VALUES ('2022-07-01','2022-07-20');

INSERT INTO commessa( datainizio, datafine)
    VALUES ('2022-08-29','2022-9-18');

INSERT INTO commessa( datainizio, datafine)
    VALUES ('2022-09-30','2022-10-01');

INSERT INTO commessa( datainizio, datafine)
    VALUES ('2022-10-22','2022-11-12');

INSERT INTO commessa( datainizio, datafine)
    VALUES ('2022-11-15','2022-11-30');
