CREATE DEFINER=`root`@`localhost` PROCEDURE `RemovePlanoExercicio`(in clienteID INT, exercicioID INT)
BEGIN
	DELETE FROM planoexercicios
		where (Cliente = clienteID && Exercicio = exercicioID);
END