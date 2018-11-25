CREATE PROCEDURE `addPlanoExercicio` (in idCliente INT(11), in idExercicio INT(11), in nSeries INT(11), in nRepeticoes INT(11))
BEGIN
    INSERT INTO PlanoExercicios(Cliente,Exercicio,nSeries,nRepeticoes)
        VALUE(idCliente,idExercicio,nSeries,nRepeticoes);
END
