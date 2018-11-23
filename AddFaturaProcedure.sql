DROP  PROCEDuRE AddFatura;

DELIMITER $$

CREATE PROCEDURE `AddFatura` (in novaDescricao VARCHAR(75), in novoValor DECIMAL(5,2),IN novoIdFuncionario  INT(11), in novoIdCliente INT(11), in   desconto DOUBLE)

BEGIN
DECLARE x Int;

  INSERT INTO Fatura (ContribuinteGinasio,Data, Descricao,Valor,idFuncionario,idCliente,Desconto)
      VALUE (111111111,NOW(),novaDescricao,novoValor,novoIdFuncionario,novoIdCliente,desconto);

END;
$$
DELIMITER

