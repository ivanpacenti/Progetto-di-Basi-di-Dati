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
VALUES ('09681212','SOTTOCARRO CINGOLATO CH2N13','10','1200','3','1','6','120');
INSERT INTO Articolo (Codice, Descrizione, Quantità, Prezzo, Altezza, Larghezza, Profondità, Massa)
VALUES ('45157898','BENNA TC550D','10','1200','3','1','6','120');

/* INSERIMENTO POSTI LOCAZIONE */
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


/* INSERIMENTO UBICAZIONI*/
INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('5','55141618','20');

INSERT INTO Ubicazione( Locazione,Articolo, Quantita)
VALUES ('2','09681212','20');

/* INSERIMENTO DISTINTE*/


/* INSERIMENTO CLIENTI*/


/* INSERIMENTO FORNITORI*/


/* INSERIMENTO MACCHINE IN LAVORAZIONE*/


/* INSERIMENTO ORDINE*/


/* INSERIMENTO DOCUMENTO*/

/* INSERIMENTO ddt*/

/* INSERIMENTO fatture*/

