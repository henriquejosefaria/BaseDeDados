CREATE DEFINER=`root`@`localhost` PROCEDURE `Remove Equipamento`(in EquipamentoID INT)
BEGIN
	DELETE FROM Equipamento
		where idEquipamento = EquipamentoID;
END