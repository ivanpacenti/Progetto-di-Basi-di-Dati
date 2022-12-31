use messersi;
/*QUERY 34: Inserimento nuova distinta. */
START TRANSACTION;
INSERT INTO Distinta(numeroarticoli, articolodiriferimento)
    VALUE(3,'04126300');
INSERT INTO dettagliodistinta(Distinta, Quantità, Articolo)
    VALUE ('prova',3,'04126300');
COMMIT WORK;