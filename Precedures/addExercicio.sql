CREATE PROCEDURE `new_procedure` (in descricao VARCHAR(75), in tipo VARCHAR(45),in equipamento INT(11))
BEGIN
    DECLARE x INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      ROLLBACK;
      RESIGNAL;
    END;
    START TRANSACTION;
    INSERT INTO Exercicio (Descricao,Tipo)
        VALUES (descricao,tipo);
	SET x = LAST_INSERT_ID();
    INSERT INTO ExercicioEquipamento (idExercicio,idEquipamento)
        VALUES (x,equipamento);
  COMMIT;

END
