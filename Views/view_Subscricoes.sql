CREATE VIEW `view_subscricao` AS

SELECT C.Nome AS  NomeCliente, S.Descricao AS Servico, SUB.DataSubscricao FROM Subscreve AS SUB
   INNER JOIN Servico AS S ON S.idServico = SUB.idServico
   INNER JOIN Cliente AS C ON C.idCliente = SUB.idCliente;
   
