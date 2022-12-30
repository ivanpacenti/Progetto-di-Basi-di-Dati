/* QUERY 49: Rimozione articolo da locazione.*/

DELETE FROM Ubicazione
WHERE Ubicazione.Articolo='04543000' AND Ubicazione.Locazione=3;




/* QUERY 48: Visualizzazione locazione articolo.*/
SELECT Sezione,RigaScaff,ColonnaScaff,Quantita
FROM Locazione JOIN Ubicazione ON Ubicazione.Locazione=Locazione.CodiceScaffale
WHERE Articolo='04126300';

/* QUERY 47: Modifica locazione articolo.*/

UPDATE Ubicazione
SET Ubicazione.Quantita=IF(Ubicazione.Quantita>50,
                            Ubicazione.Quantita-50,
                            IF(Ubicazione.Quantita=50,0 ,NULL))
WHERE Articolo='04543000' AND Locazione=3 ;
UPDATE Locazione JOIN Ubicazione ON Ubicazione.Locazione=Locazione.CodiceScaffale
SET PesoOccupato=PesoOccupato-(SELECT Peso
                                FROM Articolo
                                WHERE Codice='04543000' AND Locazione=3)*50
WHERE CodiceScaffale=3;
UPDATE Locazione JOIN Ubicazione ON Ubicazione.Locazione=Locazione.CodiceScaffale
SET PesoOccupato=PesoOccupato+(SELECT Peso
                                FROM Articolo
                                WHERE Codice='04543000' AND Locazione=3)*50
WHERE CodiceScaffale=5;
DELETE FROM Ubicazione WHERE Ubicazione.Quantita=0;



UPDATE Locazione
SET PesoOccupato=PesoOccupato+(SELECT PesoOccupato
                                FROM Locazione JOIN Ubicazione ON Ubicazione.Locazione=Locazione.CodiceScaffale
                                WHERE Articolo='04543000' AND Locazione=3)
WHERE CodiceScaffale=10 AND PesoOccupato<100;



