DROP  FUNCTION IF EXISTS `totalFaturado`;
  
delimiter $$
CREATE FUNCTION `totalFaturado` ()
RETURNS decimal(8,2)
READS SQL DATA
BEGIN
   DECLARE TOTAL decimal(8,2);
  
   SELECT SUM(Valor)-SUM(Desconto)  INTO total FROM Fatura ; 
       
RETURN TOTAL;
END$$
delimiter ;