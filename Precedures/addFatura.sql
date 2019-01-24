DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `addFatura`( in ContribuinteGinasio INT(11), in Descricao VARCHAR(300), in S1 INT(11), in S2 INT(11), in S3 INT(11), in S4 INT(11), in Valor DECIMAL(5,2), idCliente INT(11), in Desconto Double, in idFuncionario INT(11))
BEGIN
  DECLARE x INT;
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  
   BEGIN
      ROLLBACK;
      RESIGNAL;
      
   END;
   START TRANSACTION;
   INSERT INTO Fatura (ContribuinteGinasio,Data,Descricao,Valor,idCliente,Desconto,Funcionario,Estado,UptoDate)
        VALUES (ContribuinteGinasio,NOW(),Descricao,Valor,idCliente,Desconto,idFuncionario,'A','S');
	SET x= LAST_INSERT_ID();
   IF S1 != null
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(x,S1);
        INSERT INTO Subscreve (idCliente,idServico,DataSubscricao)
        VALUE(idCliente,S1,NOW());
   END IF;
   IF S2 != null
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(x,S2);
        INSERT INTO Subscreve (idCliente,idServico,DataSubscricao)
        VALUE(idCliente,S2,NOW());
   END IF; 
   IF S3 != null
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(x,S3);
        INSERT INTO Subscreve (idCliente,idServico,DataSubscricao)
        VALUE(idCliente,S3,NOW());
   END IF;
   IF S4 != null
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(x,S4);
        INSERT INTO Subscreve (idCliente,idServico,DataSubscricao)
        VALUE(idCliente,S4,NOW());
   END IF;
  COMMIT;
END$$

DELIMITER ;
