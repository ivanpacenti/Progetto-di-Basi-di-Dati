CREATE TABLE Locazione(
    CodiceScaffale INTEGER PRIMARY KEY AUTO_INCREMENT,
    PesoOccupato DOUBLE NOT NULL CHECK (PesoOccupato >= 0 AND PesoOccupato <= 100),
    Sezione CHAR(1) NOT NULL CHECK (Sezione LIKE '[A-C]'),
    Scaffalatura CHAR(1) NOT NULL CHECK (Scaffalatura LIKE '[a-h]'),
    RigaScaff INTEGER NOT NULL CHECK (RigaScaff >= 1 AND RigaScaff <= 4),
    ColonnaScaff INTEGER NOT NULL CHECK (ColonnaScaff >= 1 AND ColonnaScaff <= 5));

CREATE TABLE Articolo(
    Codice VARCHAR(8) PRIMARY KEY CHECK (LENGTH(Codice) = 8),
    Descrizione VARCHAR(50) NOT NULL,
    Quantità INTEGER NOT NULL,
    Prezzo INTEGER,
    Altezza DOUBLE NOT NULL CHECK (Altezza > 0),
    Larghezza DOUBLE NOT NULL CHECK (Profondità > 0),
    Profondità DOUBLE NOT NULL CHECK (Profondità > 0),
    Peso DOUBLE NOT NULL CHECK (Peso > 0));

CREATE TABLE Ubicazione(
    Locazione INTEGER NOT NULL,
    Articolo VARCHAR(8)  NOT NULL,
    Quantita INTEGER NOT NULL CHECK (Quantita > 0),
    UNIQUE(Locazione, Articolo),
    FOREIGN KEY (Locazione) REFERENCES Locazione(CodiceScaffale),
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice));

CREATE TABLE Distinta(
    NumeroArticoli INTEGER NOT NULL,
    ArticoloDiRiferimento VARCHAR(8) NOT NULL PRIMARY KEY );

CREATE TABLE DettaglioDistinta(
    Quantità INTEGER NOT NULL CHECK (Quantità > 0),
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
    DataFine DATE NOT NULL CHECK (DataFine >= DataInizio));

CREATE TABLE Ordine(
    Numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    DataOrdine  DATE NOT NULL,
    Importo INTEGER NOT NULL CHECK (Importo > 0),
    Codice VARCHAR(8) NOT NULL,
    Quantità INTEGER NOT NULL CHECK (Quantità > 0));

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
    Importo INTEGER NOT NULL CHECK (Importo > 0),
    TipoDocumento VARCHAR(10) NOT NULL CHECK (TipoDocumento = 'DDT' OR TipoDocumento = 'Fattura'));

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
    Quantità INTEGER NOT NULL CHECK (Quantità > 0));

CREATE TABLE Registrazione(
    Articolo VARCHAR(8) NOT NULL,
    Fornitore INTEGER,
    Documento INTEGER NOT NULL,
    UNIQUE (Documento,Articolo,Fornitore),
    FOREIGN KEY (Documento) REFERENCES Documento(Numero),
    FOREIGN KEY (Articolo) REFERENCES Articolo(Codice),
    FOREIGN KEY (Fornitore) REFERENCES Fornitore(Codice),
    Quantità INTEGER NOT NULL CHECK (Quantità > 0));

CREATE TABLE Fabbricazione(
    MacchinaInLavorazione INTEGER NOT NULL,
    Commessa INTEGER,
    UNIQUE (Commessa, MacchinaInLavorazione),
    FOREIGN KEY (Commessa) REFERENCES Commessa(CodiceCommessa),
    FOREIGN KEY (MacchinaInLavorazione) REFERENCES  MacchinaInLavorazione(Matricola) );

CREATE TABLE Richiesta(
    Cliente INTEGER,
    UNIQUE (Ordine,Cliente),
    Ordine INTEGER NOT NULL,
    FOREIGN KEY (Ordine) REFERENCES Ordine(Numero),
    FOREIGN KEY (Cliente) REFERENCES Cliente(Codice));


-- VINCOLI INTER-RELAZIONALI


/* RD1: La somma di tutti gli attributi "Quantità" relativi
        ad un codice articolo in Ubicazione deve essere pari
        al valore dell'attributo "Quantità" in Articolo. */

CREATE TRIGGER QuantitaUbicazioniNonCorrette
BEFORE INSERT ON Ubicazione
FOR EACH ROW
BEGIN
    IF ((SELECT IF(SUM(u.Quantita) = SUM(a.Quantità), 1, 0) AS CheckQuantità
         FROM Articolo a JOIN Ubicazione u ON a.Codice = u.Articolo) = 0) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'La quantità di almeno un articolo in Ubicazione è superiore alla giacenza dello stesso articolo.';
    END IF;
END;


/* RD2: L'attributo "Codice" relativo all'entità Ordine
        deve essere un codice presente nella tabella Articolo
        e deve iniziare con "09". */

CREATE TRIGGER CodiceOrdineNonCorretto
BEFORE INSERT ON Ordine
FOR EACH ROW
BEGIN
    IF (NEW.Codice NOT IN (SELECT Codice
                           FROM Articolo
                           WHERE Codice LIKE '09______')) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'L\'articolo che si sta inserendo nell\'ordine non corrisponde ad una macchina.';
    END IF;
END;


/* RD3: L'attributo "Codice" relativo all'entità Macchina in Lavorazione
        deve essere un codice presente nella tabella Articolo
        e deve iniziare con "09". */

CREATE TRIGGER CodiceMacchinaNonCorretto
BEFORE INSERT ON MacchinaInLavorazione
FOR EACH ROW
BEGIN
    IF (NEW.Codice NOT IN (SELECT Codice
                           FROM Articolo
                           WHERE Codice LIKE '09______')) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'L\'articolo che si sta inserendo come macchina in lavorazione non corrisponde ad una macchina.';
    END IF;
END;

/* RD4: Il valore dell'attributo "Peso occupato"
        in Locazione deve essere pari alla somma
        dei pesi degli articoli contenuti in quella locazione. */

CREATE TRIGGER PesoOccupatoNonCorretto
BEFORE UPDATE ON Locazione
FOR EACH ROW
BEGIN
    IF (NEW.PesoOccupato != (SELECT SUM(TRUNCATE(a.Peso * u.Quantita, 3))
                             FROM Articolo a JOIN Ubicazione u ON a.Codice = u.Articolo
                             WHERE u.Locazione = 8)) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Il peso occupato non corrisponde con la somma dei pesi degli articoli contenuti in questa locazione';
    END IF;
END;