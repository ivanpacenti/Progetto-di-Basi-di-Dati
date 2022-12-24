CREATE TABLE Locazione(
    CodiceScaffale VARCHAR(8) PRIMARY KEY,
    PesoOccupato INTEGER,
    Sezione CHAR(1),
    Scaffalatura CHAR(1),
    RigaScaff INTEGER,
    ColonnaScaff INTEGER);

CREATE TABLE Ubicazione(
    Locazione VARCHAR(2) NOT NULL REFERENCES Locazione(CodiceScaffale),
    Articolo VARCHAR(8)  NOT NULL REFERENCES Articolo(Codice),
    Quantita INTEGER NOT NULL );

CREATE TABLE Articolo(
    Codice VARCHAR(8) PRIMARY KEY,
    Descrizione VARCHAR(50) NOT NULL,
    Quantità INTEGER NOT NULL,
    Prezzo INTEGER,
    Altezza INTEGER NOT NULL,
    Larghezza INTEGER NOT NULL,
    Profondità INTEGER NOT NULL,
    Massa INTEGER NOT NULL);

CREATE TABLE DettaglioDistinta(
    Distinta VARCHAR(8) NOT NULL REFERENCES  Distinta(ArticoloDiRiferimento),
    Quantità INTEGER NOT NULL,
    Articolo VARCHAR (8) NOT NULL REFERENCES Articolo(Codice));

CREATE TABLE Distinta(
    NumeroArticoli INTEGER NOT NULL,
    ArticoloDiRiferimento VARCHAR(8) NOT NULL PRIMARY KEY );

CREATE TABLE DettaglioCicli(
    Distinta VARCHAR(8) NOT NULL REFERENCES Distinta(ArticoloDiRiferimento),
    Ciclo VARCHAR(20) NOT NULL REFERENCES Ciclo(Tipologia));

CREATE TABLE Ciclo(
    Tipologia VARCHAR(20) PRIMARY KEY);

CREATE TABLE Registrazione(
    Articolo VARCHAR(8) NOT NULL REFERENCES Articolo(Codice),
    Fornitore INTEGER NOT NULL REFERENCES Fornitore(Codice),
    Documento INTEGER NOT NULL REFERENCES Documento(Numero),
    Quantità INTEGER NOT NULL);

CREATE TABLE Fabbricazione(
    MacchinaInLavorazione VARCHAR(8) NOT NULL REFERENCES Articolo(codice),
    Commessa INTEGER NOT NULL REFERENCES MacchinaInLavorazione(Matricola));

CREATE TABLE Commessa(
    CodiceCommessa INTEGER PRIMARY KEY,
    DataInizio DATE NOT NULL,
    DataFine DATE NOT NULL );

CREATE TABLE Impegno(
    Ordine INTEGER NOT NULL REFERENCES Ordine(Numero),
    Commessa INTEGER NOT NULL REFERENCES Commessa(CodiceCommessa));

CREATE TABLE Ordine(
    Numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    DataOrdine  DATE NOT NULL,
    Importo INTEGER NOT  NULL,
    Codice VARCHAR(8) NOT NULL,
    Quantità INTEGER NOT NULL);

CREATE TABLE Richiesta(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Ordine INTEGER NOT NULL REFERENCES Ordine(Numero));

CREATE TABLE Indirizzo(
    Strada VARCHAR(25) NOT NULL,
    Civico INTEGER NOT NULL,
    Comune VARCHAR(25) NOT NULL);

CREATE TABLE Fornitore(
    Codice INTEGER PRIMARY KEY AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) NOT NULL PRIMARY KEY );

CREATE TABLE RubricaF(
    Fornitore INTEGER NOT NULL REFERENCES Cliente(Codice),
    Contatto VARCHAR(30) NOT NULL REFERENCES Contatto(Recapito));

CREATE TABLE Contatto(
    Recapito VARCHAR(30) PRIMARY KEY);

CREATE TABLE Cliente(
    Codice INTEGER PRIMARY KEY AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) PRIMARY KEY NOT NULL);

CREATE TABLE RubricaC(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Contatto VARCHAR(30) NOT NULL REFERENCES Contatto(Recapito));

CREATE TABLE Stipulazione(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Documento INTEGER NOT NULL REFERENCES Documento(Numero));

CREATE TABLE Documento(
    Numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    DatiPagamento VARCHAR(30) NOT NULL,
    DataDocumento DATE NOT NULL,
    Importo INTEGER NOT NULL,
    TipoDocumento VARCHAR(10) NOT NULL);

CREATE TABLE MacchinaInLavorazione(
    Matricola INTEGER PRIMARY KEY AUTO_INCREMENT,
    Codice VARCHAR(8) NOT NULL);

CREATE TABLE Composizione(
    MacchinaInLavorazione INTEGER NOT NULL REFERENCES MacchinaInLavorazione(Matricola),
    Articolo VARCHAR(8) NOT NULL REFERENCES Articolo(Codice),
    Quantità INTEGER NOT NULL);