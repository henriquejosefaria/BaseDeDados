CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveServicos`(in id INT)
BEGIN
	 DELETE FROM servico
		where idServico = id;
END