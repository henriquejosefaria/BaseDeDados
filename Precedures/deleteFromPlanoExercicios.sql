DELIMITER $$
CREATE PROCEDURE `deletefromPA` (in idCliente INT(10), in idExercicio INT (10))
BEGIN
UPDATE planoexercicios
SET Estado='I'
WHERE(Cliente=idCliente AND Exercicio=idExercicio);

END$$

DELIMITER ;