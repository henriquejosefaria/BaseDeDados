CREATE DEFINER=`root`@`localhost` PROCEDURE `Remove Exercício`(in exercicioID INT)
BEGIN
	DELETE FROM exercício
		where idExercicio = exercicioID;
END