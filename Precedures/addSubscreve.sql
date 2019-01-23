DELIMITER $$
CREATE PROCEDURE `addSubscreve` (in idCliente INT(11), in idServico INT(11))
BEGIN
    INSERT INTO Subscreve(idCliente,idServico,DataSubscricao)
        VALUE(idCliente,idServico,NOW());
END$$

DELIMITER ;