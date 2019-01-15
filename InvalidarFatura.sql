DELIMITER $$
CREATE PROCEDURE `invalidarfatura` (in id INT(10))
BEGIN
UPDATE fatura
SET estado = 'I',UptoDate='N'
WHERE(fatura.idFatura=id);
END$$

DELIMITER ;
