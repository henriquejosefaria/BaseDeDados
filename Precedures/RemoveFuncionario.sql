CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveFuncionario`(in id INT)
BEGIN
	DELETE FROM funcionario
		where idfuncionario = id;
