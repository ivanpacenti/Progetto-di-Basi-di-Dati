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
VALUES ('55030790','TELAIO POSTO GUIDA CTL45','15','350','1.5','1.5','1','20');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55030450','TELAIO POSTO GUIDA M18DS','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55030460','TELAIO POSTO GUIDA M38U','20','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55181768','TELAIO SOTTOCARRO CTL45','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('45157808','BENNA CTL45','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('45150898','TELAIO SOLLEVAMENTO BRACCI PALA','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30152800','CARTER PROTEZIONE PULEGGIE','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30156001','CARTER PROTEZIONE MOTORE','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55089090','TELAIO BRACCI','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30405560','BASE MOTORE','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55037000','TELAIO POSTO GUIDA TC50-e','10','1200','3','1','6','120');

/*INSERIMENTO DISTINTE ARTICOLI*/

/*distinta roboklin 25*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('2','09508080');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09508080','2','55141618');
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
VALUES ('2','09782020');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09782020','1','55030450');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09782020','1','30156001');
/*distinta MINI-ESCAVATORE M38U*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('2','09680200');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09680200','1','55030460');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09680200','2','55089090');
/*distinta MINI-DUMPER TC50-e*/
INSERT INTO Distinta(NumeroArticoli, ArticoloDiRiferimento)
VALUES ('2','09576488');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09576488','1','55037000');
INSERT INTO DettaglioDistinta(Distinta, Quantità, Articolo)
VALUES ('09576488','1','30156001');



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
INSERT INTO macchinainlavorazione(Codice) VALUES ('09508080');

/*INSERIMENTO UBICAZIONI*/
INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('5','55141618','20');

INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('2','09681212','20');