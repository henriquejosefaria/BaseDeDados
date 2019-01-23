DELIMITER $$
CREATE PROCEDURE `invalidarfatura` (in id INT(10))
BEGIN
UPDATE fatura
SET estado = 'I'
WHERE(fatura.idFatura=id);
END$$

DELIMITER ;
