CREATE VIEW `view_faturas` AS

SELECT idFatura, ContribuinteGinasio,Data, Descricao, Valor,Desconto,C.Nome AS NomeCliente, FUN.Nome AS NomeRececionista FROM Fatura AS F
   INNER JOIN Cliente AS C ON C.idCliente = F.idCliente
   INNER JOIN Funcionario AS FUN ON FUN.idFuncionario = F.idFuncionario;