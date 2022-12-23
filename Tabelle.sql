CREATE TABLE Locazione(
CodiceScaffale VARCHAR (2)PRIMARY KEY ,
Sezione_Magazzino VARCHAR(2)NOT NULL ,
Scaffalatura VARCHAR(2) NOT NULL ,
RigaScaff VARCHAR(2) NOT NULL ,
ColonnaScaff VARCHAR (2) NOT NULL ,
Codice_scaffale VARCHAR(2) NOT NULL );


CREATE TABLE Ubicazione(
Scaffale VARCHAR(2)NOT NULL ,
Articolo VARCHAR(8) NOT NULL REFERENCES Articolo(Codice),
Quantita INTEGER NOT NULL );

CREATE TABLE Articolo(
Codice VARCHAR(8) PRIMARY KEY ,
Descrizione VARCHAR(50) NOT NULL ,
Quantità INTEGER NOT NULL ,
Prezzo INTEGER ,
Altezza INTEGER NOT NULL ,
Larghezza INTEGER NOT NULL ,
Profondità INTEGER NOT NULL ,
Massa INTEGER NOT NULL );

CREATE TABLE DettaglioDistinta(
Distinta VARCHAR(8) REFERENCES Distinta(Articolo_di_riferimento),
Quantità INTEGER NOT NULL ,
Codice VARCHAR (8));

CREATE TABLE Distinta(
NumeroArticoli integer,
CodiceDistinta VARCHAR(8));
CREATE TABLE DettaglioCicli(
Distinta VARCHAR(8),
Ciclo VARCHAR(20));
CREATE TABLE Ciclo(
Tipologia VARCHAR(20));
CREATE TABLE Registrazione(
Articolo ,
Fornitore ,
Documento,
Quantità);
CREATE TABLE Fabbricazione(
Articolo,
Quantità,
Commessa);
CREATE TABLE Commessa(
CodiceCommessa integer,
DataInizio date,
DataFine DATE,
CodiceArticolo VARCHAR(8),
Matricola INTEGER);
CREATE TABLE Impegno(Ordine, Commessa)
CREATE TABLE Ordine(
Numero INTEGER,
Data DATE,
Importo INTEGER,
Codice INTEGER,
Quantità INTEGER);

CREATE TABLE Richiesta(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Ordine INTEGER NOT NULL REFERENCES Ordine(Numero));

CREATE TABLE Indirizzo(
    Via VARCHAR(25) NOT NULL,
    Civico INTEGER NOT NULL,
    Comune VARCHAR(25) NOT NULL);

CREATE TABLE Fornitore(
    Codice INTEGER PRIMARY KEY AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) NOT NULL);

CREATE TABLE RubricaF(
    Fornitore INTEGER NOT NULL REFERENCES Cliente(Codice),
    Contatto VARCHAR(30) NOT NULL REFERENCES Contatto(Recapito));

CREATE TABLE Contatto(
    Recapito VARCHAR(30) PRIMARY KEY);

CREATE TABLE Cliente(
    Codice INTEGER PRIMARY KEY AUTO_INCREMENT,
    RagioneSociale VARCHAR(30) NOT NULL,
    PartitaIVA VARCHAR(11) NOT NULL);

CREATE TABLE RubricaC(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Contatto VARCHAR(30) NOT NULL REFERENCES Contatto(Recapito));

CREATE TABLE Stipulazione(
    Cliente INTEGER NOT NULL REFERENCES Cliente(Codice),
    Documento INTEGER NOT NULL REFERENCES Documento(Numero));

CREATE TABLE Documento(
    Numero INTEGER PRIMARY KEY AUTO_INCREMENT,
    DatiPagamento VARCHAR(30) NOT NULL,
    Data DATE NOT NULL,
    Importo INTEGER NOT NULL,
    TipoDocumento VARCHAR(10) NOT NULL);

CREATE TABLE MacchinaInLavorazione(
    Matricola INTEGER PRIMARY KEY ,
    Codice VARCHAR(8) NOT NULL);

CREATE TABLE Composizione(
    Matricola INTEGER PRIMARY KEY,
    Codice VARCHAR(8) NOT NULL,
    Quantità INTEGER NOT NULL);
