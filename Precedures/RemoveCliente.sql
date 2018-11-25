CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveCliente`(in clienteID INT)
BEGIN
	DELETE FROM cliente
		where idcliente = clienteID;
END