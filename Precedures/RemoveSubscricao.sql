CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveSubscricao`(in servicoID INT, in clienteID INT, in dataID DATE)
BEGIN
	DELETE FROM subscreve
		where (idCliente = clienteID && IdServico = servicoID && DataSubscricao = dataID);
END