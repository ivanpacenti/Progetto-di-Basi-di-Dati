CREATE TABLE Locazione(
    CodiceScaffale INTEGER PRIMARY KEY AUTO_INCREMENT,
    PesoOccupato FLOAT NOT NULL CHECK (PesoOccupato >= 0 AND PesoOccupato <= 100),
    Sezione CHAR(1) NOT NULL,
    Scaffalatura CHAR(1) NOT NULL,
    RigaScaff INTEGER NOT NULL,
    ColonnaScaff INTEGER NOT NULL);

CREATE TABLE Articolo(
    Codice VARCHAR(8) PRIMARY KEY,
    Descrizione VARCHAR(50) NOT NULL,
    Quantità INTEGER NOT NULL,
    Prezzo INTEGER,
    Altezza FLOAT NOT NULL,
    Larghezza FLOAT NOT NULL,
    Profondità FLOAT NOT NULL,
    Peso FLOAT NOT NULL);

CREATE TABLE Ubicazione(
    Locazione INTEGER NOT NULL,
    Articolo VARCHAR(8)  NOT NULL,
    Quantita INTEGER NOT NULL CHECK (Quantita >= 0),
    UNIQUE(Locazione, Articolo),
    FOREIGN KEY (Locazione) REFERENCES Locazione(CodiceScaffale),
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice));

CREATE TABLE Distinta(
    NumeroArticoli INTEGER NOT NULL,
    ArticoloDiRiferimento VARCHAR(8) NOT NULL PRIMARY KEY );

CREATE TABLE DettaglioDistinta(
    Quantità INTEGER NOT NULL,
    Articolo VARCHAR (8) NOT NULL,
    Distinta VARCHAR(8) NOT NULL,
    UNIQUE(Articolo, Distinta),
    FOREIGN KEY (Distinta)  REFERENCES Distinta(ArticoloDiRiferimento),
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice));

CREATE TABLE Ciclo(
    Tipologia VARCHAR(20) PRIMARY KEY);

CREATE TABLE DettaglioCicli(
    UNIQUE (Distinta,Ciclo),
    Distinta VARCHAR(8) NOT NULL,
    Ciclo VARCHAR(20) NOT NULL,
    FOREIGN KEY (Ciclo) REFERENCES Ciclo(Tipologia),
    FOREIGN KEY (Distinta) REFERENCES Distinta(ArticoloDiRiferimento));

CREATE TABLE Commessa(
    CodiceCommessa INTEGER PRIMARY KEY AUTO_INCREMENT,
    DataInizio DATE NOT NULL,
    DataFine DATE NOT NULL );

CREATE TABLE Ordine(
    Numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    DataOrdine  DATE NOT NULL,
    Importo INTEGER NOT  NULL,
    Codice VARCHAR(8) NOT NULL,
    Quantità INTEGER NOT NULL);

CREATE TABLE Fornitore(
    Codice INTEGER AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) NOT NULL,
    PRIMARY KEY (Codice,PartitaIVA));

CREATE TABLE SediFornitori(
    Fornitore INTEGER NOT NULL,
    FOREIGN KEY (Fornitore) REFERENCES Fornitore(Codice),
    Strada VARCHAR(25) NOT NULL,
    Civico INTEGER NOT NULL,
    Comune VARCHAR(25) NOT NULL);

CREATE TABLE Cliente(
    Codice INTEGER AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) NOT NULL,
    PRIMARY KEY (Codice,PartitaIVA));

CREATE TABLE SediClienti(
    Cliente INTEGER NOT NULL,
    FOREIGN KEY (Cliente) REFERENCES Cliente(Codice),
    Strada VARCHAR(25) NOT NULL,
    Civico INTEGER NOT NULL,
    Comune VARCHAR(25) NOT NULL);

CREATE TABLE RubricaF(
    Fornitore INTEGER NOT NULL,
    FOREIGN KEY (Fornitore) REFERENCES Fornitore(Codice),
    Contatto VARCHAR(40) PRIMARY KEY);

CREATE TABLE RubricaC(
    Cliente INTEGER NOT NULL,
    FOREIGN KEY (Cliente) REFERENCES Cliente(Codice),
    Contatto VARCHAR(40) PRIMARY KEY);

CREATE TABLE Documento(
    Numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    DatiPagamento VARCHAR(30) NOT NULL,
    DataDocumento DATE NOT NULL,
    Importo INTEGER NOT NULL,
    TipoDocumento VARCHAR(10) NOT NULL);

CREATE TABLE Stipulazione(
    Cliente INTEGER,
    UNIQUE (Cliente,Documento),
    Documento INTEGER NOT NULL,
    FOREIGN KEY (Cliente) REFERENCES Documento(Numero),
    FOREIGN KEY (Cliente) REFERENCES Cliente(Codice));

CREATE TABLE MacchinaInLavorazione(
    Matricola INTEGER PRIMARY KEY AUTO_INCREMENT,
    Codice VARCHAR(8) NOT NULL);

CREATE TABLE Composizione(
    MacchinaInLavorazione INTEGER NOT NULL,
    Articolo VARCHAR(8) NOT NULL,
    UNIQUE(MacchinaInLavorazione,Articolo),
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice),
    FOREIGN KEY (MacchinaInLavorazione) REFERENCES MacchinaInLavorazione(Matricola),
    Quantità INTEGER NOT NULL);

CREATE TABLE Registrazione(

    Articolo VARCHAR(8) NOT NULL,
    Fornitore INTEGER,
    Documento INTEGER NOT NULL,
    UNIQUE (Documento,Articolo,Fornitore),
    FOREIGN KEY (Documento) REFERENCES Documento(Numero),
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice),
    FOREIGN KEY (Fornitore) REFERENCES Fornitore(Codice),
    Quantità INTEGER NOT NULL);

CREATE TABLE Fabbricazione(
    MacchinaInLavorazione INTEGER NOT NULL,
    UNIQUE (Commessa, MacchinaInLavorazione),
    Commessa INTEGER,
    FOREIGN KEY (Commessa) REFERENCES Commessa(CodiceCommessa),
    FOREIGN KEY (MacchinaInLavorazione) REFERENCES  MacchinaInLavorazione(Matricola) );

CREATE TABLE Richiesta(
    Cliente INTEGER,
    UNIQUE (Ordine,Cliente),
    Ordine INTEGER NOT NULL,
    FOREIGN KEY (Ordine) REFERENCES Ordine(Numero),
    FOREIGN KEY (Cliente) REFERENCES Cliente(Codice));