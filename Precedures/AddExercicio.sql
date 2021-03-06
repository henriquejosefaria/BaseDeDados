DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Adicionar Exercicio`(in designacao VARCHAR(75), in tipo VARCHAR(45),in equipamento INT(11))

BEGIN
    DECLARE x INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
      ROLLBACK;
      RESIGNAL;
    END;
    START TRANSACTION;
    INSERT INTO Exercicio (Designacao,Tipo)
        VALUES (designacao,tipo);
	SET x = LAST_INSERT_ID();
    INSERT INTO ExercicioEquipamento (idExercicio,idEquipamento)
        VALUES (x,equipamento);
  COMMIT;
END$$

DELIMITER ;