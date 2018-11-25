CREATE DEFINER=`root`@`localhost` PROCEDURE `Remove Cliente`(in clienteID INT)
BEGIN
	DELETE FROM cliente
		where idcliente = clienteID;
END