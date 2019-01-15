DELIMITER $$
CREATE PROCEDURE `FaturasEntreDatas`(in datai date,in dataf date)
BEGIN
SELECT * FROM fatura 
WHERE(Data Between datai and dataf);
END$$

DELIMITER ;