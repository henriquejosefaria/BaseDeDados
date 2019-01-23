DELIMITER $$
USE `ginasio`$$
CREATE PROCEDURE `updatepesoaltura` (in id INT(11),in peso decimal(5,2),in  altura decimal(5,2))
BEGIN
UPDATE cliente as C
SET c.peso = peso, c.altura = altura, c.IMC = peso / POWER(altura,2)
WHERE(c.idCliente=id);
END$$

DELIMITER ;
