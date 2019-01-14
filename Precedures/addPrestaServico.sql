DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPrestaServico`(in idFuncionario INT(11), in idServico INT(11), in DataInicio DATE)
BEGIN
    INSERT INTO PrestaServico(idServico,idFuncionario,DataInicio)
         VALUE(idFuncionario,idServico,DataInicio);
END $$

DELIMITER ;