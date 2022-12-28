CREATE TABLE Locazione(
    CodiceScaffale INTEGER PRIMARY KEY AUTO_INCREMENT,
    PesoOccupato INTEGER NOT NULL,
    Sezione CHAR(1) NOT NULL,
    Scaffalatura CHAR(1) NOT NULL,
    RigaScaff INTEGER NOT NULL,
    ColonnaScaff INTEGER NOT NULL);

CREATE TABLE Articolo(
    Codice VARCHAR(8) PRIMARY KEY,
    Descrizione VARCHAR(50) NOT NULL,
    Quantità INTEGER NOT NULL,
    Prezzo INTEGER,
    Altezza INTEGER NOT NULL,
    Larghezza INTEGER NOT NULL,
    Profondità INTEGER NOT NULL,
    Peso INTEGER NOT NULL);

CREATE TABLE Ubicazione(
    Locazione INTEGER NOT NULL ,
    Articolo VARCHAR(8)  NOT NULL ,
    Quantita INTEGER NOT NULL,
    FOREIGN KEY (Locazione) REFERENCES Locazione(CodiceScaffale),
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice));

CREATE TABLE Distinta(
    NumeroArticoli INTEGER NOT NULL,
    ArticoloDiRiferimento VARCHAR(8) NOT NULL PRIMARY KEY );

CREATE TABLE DettaglioDistinta(
    Distinta VARCHAR(8) NOT NULL,
    FOREIGN KEY (Distinta)  REFERENCES Distinta(ArticoloDiRiferimento),
    Quantità INTEGER NOT NULL,
    Articolo VARCHAR (8) NOT NULL,
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice));

CREATE TABLE Ciclo(
    Tipologia VARCHAR(20) PRIMARY KEY);

CREATE TABLE DettaglioCicli(
    Distinta VARCHAR(8) NOT NULL,
    FOREIGN KEY (Distinta) REFERENCES Distinta(ArticoloDiRiferimento),
    Ciclo VARCHAR(20) NOT NULL,
    FOREIGN KEY (Ciclo) REFERENCES Ciclo(Tipologia));

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

CREATE TABLE SediFornitori(
    Fornitore INTEGER NOT NULL REFERENCES Fornitore(Codice),
    Strada VARCHAR(25) NOT NULL,
    Civico INTEGER NOT NULL,
    Comune VARCHAR(25) NOT NULL);

CREATE TABLE SediClienti(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Strada VARCHAR(25) NOT NULL,
    Civico INTEGER NOT NULL,
    Comune VARCHAR(25) NOT NULL);

CREATE TABLE Fornitore(
    Codice INTEGER AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) NOT NULL,
    PRIMARY KEY (Codice,PartitaIVA));

CREATE TABLE RubricaF(
    Fornitore INTEGER NOT NULL REFERENCES Fornitore(Codice),
    Contatto VARCHAR(30) PRIMARY KEY);

CREATE TABLE Cliente(
    Codice INTEGER AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) NOT NULL,
    PRIMARY KEY (Codice,PartitaIVA));

CREATE TABLE RubricaC(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Contatto VARCHAR(30) PRIMARY KEY);

CREATE TABLE Documento(
    Numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    DatiPagamento VARCHAR(30) NOT NULL,
    DataDocumento DATE NOT NULL,
    Importo INTEGER NOT NULL,
    TipoDocumento VARCHAR(10) NOT NULL);

CREATE TABLE Stipulazione(
    Cliente INTEGER NOT NULL,
    FOREIGN KEY (Cliente) REFERENCES Cliente(Codice),
    Documento INTEGER NOT NULL,
    FOREIGN KEY (Cliente) REFERENCES Documento(Numero));

CREATE TABLE MacchinaInLavorazione(
    Matricola INTEGER PRIMARY KEY AUTO_INCREMENT,
    Codice VARCHAR(8) NOT NULL);

CREATE TABLE Composizione(
    MacchinaInLavorazione INTEGER NOT NULL,
    FOREIGN KEY (MacchinaInLavorazione) REFERENCES MacchinaInLavorazione(Matricola),
    Articolo VARCHAR(8) NOT NULL,
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice),
    Quantità INTEGER NOT NULL);

CREATE TABLE Registrazione(
    Articolo VARCHAR(8) NOT NULL,
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice),
    Fornitore INTEGER NOT NULL,
    FOREIGN KEY (Fornitore) REFERENCES Fornitore(Codice),
    Documento INTEGER NOT NULL,
    FOREIGN KEY (Documento) REFERENCES Documento(Numero),
    Quantità INTEGER NOT NULL);

CREATE TABLE Fabbricazione(
    MacchinaInLavorazione INTEGER NOT NULL,
    FOREIGN KEY (MacchinaInLavorazione) REFERENCES  MacchinaInLavorazione(Matricola) ,
    Commessa INTEGER NOT NULL,
    FOREIGN KEY (Commessa) REFERENCES Commessa(CodiceCommessa));

CREATE TABLE Impegno(
    Ordine INTEGER NOT NULL,
    FOREIGN KEY (Ordine) REFERENCES Ordine(Numero),
    Commessa INTEGER NOT NULL,
    FOREIGN KEY (Commessa) REFERENCES Commessa(CodiceCommessa));

CREATE TABLE Richiesta(
    Cliente INTEGER NOT NULL,
    FOREIGN KEY (Cliente) REFERENCES Cliente(Codice),
    Ordine INTEGER NOT NULL,
    FOREIGN KEY (Ordine) REFERENCES Ordine(Numero));