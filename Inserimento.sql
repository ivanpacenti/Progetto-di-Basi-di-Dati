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
VALUES ('55141618','TELAIO SOTTOCARRO CH2R','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55030790','TELAIO POSTO GUIDA','15','350','1.5','1.5','1','20');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55030450','TELAIO POSTO GUIDA CH2R','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55181768','TELAIO SOTTOCARRO CH2R','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('45157898','BENNA TC550D','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('45157898','BENNA TC550D','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30152800','CARTER PROTEZIONE PULEGGIE','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30156001','CARTER PROTEZIONE MOTORE','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('55089090','TELAIO BRACCI','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('30405560','BASE MOTORE','10','1200','3','1','6','120');


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



/*INSERIMENTO UBICAZIONI*/
INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('5','55141618','20');

INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('2','09681212','20');