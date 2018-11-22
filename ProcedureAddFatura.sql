CREATE PROCEDURE `Add Fatura` (in contribuinteGinasio INT(11), in descricao VARCHAR(75), in valor DECIMAL(5,2), in idCliente INT(11), in   desconto DOUBLE)

BEGIN

DECLARE d DATE;

d= CURDATE();

INSERT INTO Ginasio.Fatura (ContribuinteGinasio,Data,Decricao,Valor,idCliente,Desconto)
   VALUES(contribuinteGinasio, D,descricao,valor,idCliente,desconto)
END
