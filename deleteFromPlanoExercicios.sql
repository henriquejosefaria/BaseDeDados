DELIMITER $$
CREATE PROCEDURE `deletefromPA` (in idCliente INT(10), in idExercicio INT (10))
BEGIN
UPDATE planoexercicios as p
INNER JOIN cliente as c
SET p.Estado='I'
WHERE(p.Cliente=idCliente AND p.Exercicio=idExercicio);

END$$

DELIMITER ;