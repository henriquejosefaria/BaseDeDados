CREATE DEFINER=`root`@`localhost` PROCEDURE `Adicionar Exercicio`(in descricao VARCHAR(75), in tipo VARCHAR(45))

DELIMITER $$

BEGIN

-- DECLARE x INT;

-- SET x = LAST_INSERT_ID();

INSERT INTO GinasioMiguel.Exercicio (Descricao,Tipo)
  VALUES (descricao,tipo);

END $$

DELIMITER;