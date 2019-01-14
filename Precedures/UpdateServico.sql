DELIMITER $$
CREATE PROCEDURE `updateservico` (in id int(11))
BEGIN
UPDATE servico
SET estado= IF(servico.estado = 'A', 'I','A')
WHERE servico.idServico=id;
END$$

DELIMITER ;
