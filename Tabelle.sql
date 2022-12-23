CREATE TABLE Locazione(
CodiceScaffale VARCHAR (2),
Sezione_Magazzino VARCHAR(2),
Scaffalatura VARCHAR(2),
RigaScaff VARCHAR(2),
ColonnaScaff VARCHAR (2),
Codice_scaffale VARCHAR(2));
CREATE TABLE Ubicazione(
Scaffale VARCHAR(2),
Articolo VARCHAR(8),
Quantita INTEGER);
CREATE TABLE Articolo(
Codice VARCHAR(8),
Descrizione VARCHAR(50),
Quantità integer,
Prezzo integer,
Altezza integer,
Larghezza integer,
Profondità integer,
Massa integer);
CREATE TABLE DettaglioDistinta(
Distinta VARCHAR(8),
Quantità integer,
Codice varchar (8));
CREATE TABLE Distinta(
NumeroArticoli integer,
CodiceDistinta VARCHAR(8));
CREATE TABLE DettaglioCicli(
Distinta VARCHAR(8),
Ciclo VARCHAR(20));
CREATE TABLE Ciclo(
Tipologia VARCHAR(20));
CREATE TABLE Registrazione(
Articolo, Fornitore, Documento, Quantità)
CREATE TABLE Fabbricazione(Articolo, Quantità, Commessa)
CREATE TABLE Commessa(CodiceCommessa, DataInizio, DataFine,
CodiceArticolo, Matricola)
CREATE TABLE Impegno(Ordine, Commessa)
CREATE TABLE Ordine(Numero, Data, Importo, Codice, Quantità)
CREATE TABLE Richiesta(Cliente, Ordine)
CREATE TABLE Indirizzo(Via, Civico, Comune)
CREATE TABLE Fornitore(Codice, RagioneSociale, PartitaIVA)
CREATE TABLE RubricaF(Fornitore, Contatto)
CREATE TABLE Contatto(Recapito)
CREATE TABLE Cliente(Codice, RagioneSociale, PartitaIVA)
CREATE TABLE RubricaC(Contatto, Cliente)
CREATE TABLE Stipulazione(Cliente, Documento)
CREATE TABLE Documento(Numero, DatiPagamento, Data, Importo,
TipoDocumento)
CREATE TABLE MacchinaInLavorazione(matricola, Codice)
CREATE TABLE Composizione(Matricola,Codice, Quantità)