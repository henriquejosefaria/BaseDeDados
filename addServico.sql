DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addServico`(in Descricao VARCHAR(45), in Preco DECIMAL(5,2))
BEGIN
    INSERT INTO Servico(Descricao,Preco,Estado,UptoDate)
       VALUE (Descricao,Preco,'A','S');
END$$

DELIMITER ;