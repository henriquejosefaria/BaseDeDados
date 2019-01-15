DELIMITER $$
CREATE PROCEDURE `consultafatura` (in id INT(11))
BEGIN
SELECT * FROM Fatura
WHERE(IdCliente=id);
END$$

DELIMITER ;
