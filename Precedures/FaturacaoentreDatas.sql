DELIMITER $$
USE `ginasio`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `totalfaturado`(in datai date,in dataf date)
BEGIN


CASE
  WHEN datai is not null AND
       dataf is not null 
  THEN 
		SELECT SUM(valor) AS ValorTotal FROM fatura
		WHERE(data between datai and dataf);
  ELSE 
		SELECT SUM(valor) AS ValorTotal FROM fatura;
  end case;
END$$

DELIMITER ;