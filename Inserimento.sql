USE Messersi;


/*INSERIMENTO MACCHINE COMPLETE*/
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('09681212','MINI-DUMPER TC85d','10','13000','0.5','0.6','1','850');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('09576488','MINI-DUMPER TC50-e','10','15000','0.5','0.6','1','500');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('09680200','MINI-ESCAVATORE M38U','10','18000','1.3','1.3','0.8','3600');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('09782020','MINI-ESCAVATORE M18DS','10','17000','1.3','1.3','0.8','1850');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('09203999','CTL 45','10','28000','1','1.3','1','2700');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('09508080','ROBOKLIN 25','10','25000','2.5','2','3','4200');

/*INSERIMENTO COMPONETI MACCHINA*/
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55141618','TELAIO SOTTOCARRO ROBOKLIN','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55030790','TELAIO POSTO GUIDA CTL45','15','350','1.5','1.5','1','100');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55030450','TELAIO POSTO GUIDA M18DS','10','400','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55030460','TELAIO POSTO GUIDA M38U','20','400','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55181768','TELAIO SOTTOCARRO CTL45','10','1000','3','1','6','400');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('45157808','BENNA CTL45','10','800','3','1','6','400');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('45150898','TELAIO SOLLEVAMENTO BRACCI PALA','10','800','3','1','6','500');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30152800','CARTER PROTEZIONE PULEGGIE','10','300','3','1','6','50');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30156001','CARTER PROTEZIONE MOTORE','10','1200','3','1','6','50');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55089090','TELAIO BRACCI','10','2000','3','1','6','400');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30405560','BASE MOTORE','10','1200','3','1','6','500');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55037000','TELAIO POSTO GUIDA TC50-e','10','600','3','1','6','120');
/*INSERIMENTO MATERIE PRIME */
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('06990000','TUBO QUADRO','10','300','50','1000','50','30');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('06990002','TUBO QUADRO','10','250','55','900','50','20');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('06990003','TUBO QUADRO','10','350','55','1050','55','40');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('05990010','TONDO TRAFILATO','10','200','10','10','10','10');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('05990020','TONDO TRAFILATO','10','300','13','13','14','10');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('05990030','TONDO TRAFILATO','10','400','15.5','15.5','10','15.5');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('05990040','TONDO TRAFILATO','10','450','20','40','40','20');


/*INSERIMENTO DISTINTE ARTICOLI*/

/*distinta roboklin 25*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('2','09508080');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09508080','2','55141618');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09508080','4','06990000');
/*distinta CTL 45*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('4','09203999');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09203999','1','55030790');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09203999','1','55181768');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09203999','2','30152800');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09203999','1','45157808');
/*distinta MINI-ESCAVATORE M18DS*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('3','09782020');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09782020','1','55030450');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09782020','1','30156001');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09782020','4','06990002');
/*distinta MINI-ESCAVATORE M38U*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('4','09680200');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09680200','1','55030460');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09680200','2','55089090');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09680200','4','06990003');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09680200','4','05990010');
/*distinta MINI-DUMPER TC50-e*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('3','09576488');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09576488','1','55037000');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09576488','1','30156001');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09576488','4','05990030');
/*distinta TELAIO SOTTOCARRO CTL45*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('3','55181768');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('55181768','4','05990020');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('55181768','4','05990030');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('55181768','4','05990040');
/*distinta BENNA CTL45*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('3','45157808');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('45157808','4','05990020');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('45157808','4','05990030');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('45157808','4','05990040');



/*INSERIMENTO POSTI LOCAZIONE */
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','C','0','0','0');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','1','1');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','1','2');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','1','3');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','1','4');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','1','5');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','2','1');
INSERT INTO Locazione( PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','2','2');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','2','3');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','2','4');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','2','5');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','3','1');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','3','2');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','3','3');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','3','4');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','3','5');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','4','1');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','4','2');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','4','3');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','4','4');
INSERT INTO Locazione(PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','4','5') ;


/* INSERIMENTO CLIENTI */
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('Ivan S.P.A.','02011234321');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('BARTOLINI S.A.S','09812343212');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('PICCIA','03947264857');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('VINO BUONO','93847361530');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('MACCHINE INDUSTRIALI','04938572613');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('LUCA & STEFANO','12345678900');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('GIACOMINO','09876543215');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('CASA DELLE MACCHINE','56374819043');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('CASA DELLA RUSPA','37584930193');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('IL RUSPAIOLO','46372894817');

/* INSERIMENTO FORNITORI */
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('TUTTO VITI','75248262774');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('TAGLIO LASER S.A.S','76923450854');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('LAMIERE DOC','76888340320');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('DI BRUNO E STEFANO','50496876298');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('GIOCO E LUCE','12675565641');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('LAMPADINI','42719228824');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('GIANLUCHINI','72427555639');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('OGNI TUBO','71480986277');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('TUTTO TUBI','20452911970');
INSERT INTO cliente(RagioneSociale, PartitaIVA)
        VALUE ('FILI.IT','86285140257');

/* INSERIMENTO MACCHINA IN LAVORAZIONE*/
INSERT INTO macchinainlavorazione(Codice) VALUES ('09681212');
INSERT INTO macchinainlavorazione(Codice) VALUES ('09576488');
INSERT INTO macchinainlavorazione(Codice) VALUES ('09680200');
/* INSERIMENTO 2 MACCHINE IDENTICHE */
INSERT INTO macchinainlavorazione(Codice) VALUES ('09508080');
INSERT INTO macchinainlavorazione(Codice) VALUES ('09508080');

/*INSERIMENTO ORDINE */
INSERT INTO ordine(DataOrdine, Importo, Codice, Quantità)
    VALUES ('2022-06-30',13000,'09681212',1);
INSERT INTO ordine(DataOrdine, Importo, Codice, Quantità)
    VALUES ('2022-08-22',15000,'09576488',1);
INSERT INTO ordine(DataOrdine, Importo, Codice, Quantità)
    VALUES ('2022-09-25',18000,'09680200',1);
INSERT INTO ordine(DataOrdine, Importo, Codice, Quantità)
    VALUES ('2022-10-18',50000,'09508080',2);


/*INSERIMENTO UBICAZIONI*/
INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('5','55141618','20');

INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('2','09681212','20');

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
