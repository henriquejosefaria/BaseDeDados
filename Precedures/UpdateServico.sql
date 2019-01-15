DELIMITER $$
CREATE PROCEDURE `updateservico` (in id int(11))
BEGIN
UPDATE servico as s
SET s.estado= IF(s.estado = 'A', 'I','A')
WHERE (s.idServico=id) ;
END$$

DELIMITER ;
