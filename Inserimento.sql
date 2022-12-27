USE Messersi;
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


INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','0','A','a','1','1');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('2','0','A','a','1','2');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('3','0','A','a','1','3');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('4','0','A','a','1','4');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('5','0','A','a','1','5');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('6','0','A','1','2','2');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('7','0','A','b','2','3');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('8','0','A','a','2','4');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('9','0','A','a','2','5');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('10','0','A','a','3','1');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('11','0','A','a','3','2');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('12','0','A','a','3','3');
INSERT INTO Locazione( CodiceScaffale,PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('13','0','A','a','3','4');
INSERT INTO Locazione( PesoOccupato, Sezione, Scaffalatura, RigaScaff, ColonnaScaff)
VALUES ('0','A','a','3','5');

INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('5','55141618','20');

INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('2','45157898','20');