CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveExercício`(in exercicioID INT)
BEGIN
	DELETE FROM Exercicio
		where idExercicio = exercicioID;
END