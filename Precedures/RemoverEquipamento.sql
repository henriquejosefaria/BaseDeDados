CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveEquipamento`(in EquipamentoID INT)
BEGIN
	DELETE FROM Equipamento
		where idEquipamento = EquipamentoID;
END