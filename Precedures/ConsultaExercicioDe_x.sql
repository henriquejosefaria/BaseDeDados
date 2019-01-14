DELIMITER $$
CREATE PROCEDURE `consultaexerciciode_x`(in id INT (11))
BEGIN
SELECT e.idExercicio,e.Designacao,e.Tipo,p.nSeries,p.nRepeticoes FROM planoexercicios AS p
INNER JOIN Exercicio AS e ON e.idExercicio=p.Exercicio
WHERE (p.Cliente=id AND p.Estado='A');
END$$

DELIMITER ;