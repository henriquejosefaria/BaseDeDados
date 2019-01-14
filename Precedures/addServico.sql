DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addServico`(in Descricao VARCHAR(45), in Preco DECIMAL(5,2))
BEGIN
    INSERT INTO Servico(Descricao,Preco,Estado)
       VALUE (Descricao,Preco,'A');
END$$

DELIMITER ;