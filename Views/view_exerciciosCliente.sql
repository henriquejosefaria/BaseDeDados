CREATE VIEW `view_exerciciosCliente` AS

SELECT C.Nome AS NomeCliente, E.Descricao AS NomeExercicio, PE.nSeries,PE.nRepeticoes FROM PlanoExercicios AS PE
   INNER JOIN Exercicio AS E ON E.idExercicio = PE.Exercicio
   INNER JOIN Cliente AS C ON C.idCLiente = PE.Cliente
   WHERE (PE.Estado = 'A');