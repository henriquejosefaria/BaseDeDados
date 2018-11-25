CREATE DEFINER=`root`@`localhost` PROCEDURE `addEquipamento`(in Nome VARCHAR(45), in Descricao VARCHAR(75))
BEGIN
    INSERT INTO Equipamento (Nome,Descricao)
        VALUES (Nome,Descricao);
END