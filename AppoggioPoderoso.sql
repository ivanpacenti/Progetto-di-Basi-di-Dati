use messersi;


/*QUERY 36: Modifica quantità articolo in  distinta. */
UPDATE dettagliodistinta
SET Quantità=2
WHERE Distinta='09680200' and Articolo='05990010';

/* QUERY 37: Rimozione dati distinta */
START TRANSACTION;
DELETE  FROM dettagliodistinta
    WHERE Distinta='09680200';

DELETE FROM dettagliocicli
    WHERE Distinta ='09680200';

SET FOREIGN_KEY_CHECKS = 0;

DELETE FROM distinta
    WHERE ArticoloDiRiferimento ='05990010';
SET FOREIGN_KEY_CHECKS = 1;
COMMIT WORK;