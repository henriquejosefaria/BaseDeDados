DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addPrestaServico`(in idServ INT(11),in idFunc INT(11),  in DataInicio DATE)
BEGIN
    INSERT INTO PrestaServico(idServico,idFuncionario,DataInicio)
         VALUES(idServ,idFunc,DataInicio);
END $$

DELIMITER ;