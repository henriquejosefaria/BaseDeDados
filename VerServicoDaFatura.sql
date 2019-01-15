DELIMITER $$
USE `ginasio`$$
CREATE PROCEDURE `verservicofatura` (in id INT(10))
BEGIN
SELECT s.idServico,s.Descricao FROM servico as s
INNER JOIN servicofatura as f on s.idServico=f.idServico
WHERE(f.idFatura=id);
END$$

DELIMITER ;

