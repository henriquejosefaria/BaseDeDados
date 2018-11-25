CREATE DEFINER=`root`@`localhost` PROCEDURE `RemovePrestaServico`(in funcionarioID INT, in servicoID INT)
BEGIN
	DELETE FROM prestaservico
		where idServico = servicoID && idFuncionario = funcionarioID;
END