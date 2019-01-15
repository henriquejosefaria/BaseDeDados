DELIMITER $$
USE `ginasio`$$
CREATE PROCEDURE `versubscricao`(in id INT(10))
BEGIN
SELECT s.idServico,s.Descricao FROM servico as s
INNER JOIN subscreve as f on s.idServico=f.idServico
WHERE(f.idCliente=id);
END$$

DELIMITER ;
