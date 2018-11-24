CREATE DEFINER=`root`@`localhost` PROCEDURE `addFatura`(in idFatura INT(11), in ContribuinteGinasio INT(11), in Descricao VARCHAR(300), in S1 INT(11), in S2 INT(11), in S3 INT(11), in S4 INT(11), in Valor DECIMAL(5,2), idCliente INT(11), in Desconto Double, in idFuncionario INT(11))
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN
      ROLLBACK;
      RESIGNAL;
   END;
   START TRANSACTION;
   INSERT INTO Fatura (ContribuinteGinasio,Data,Descricao,Valor,idCliente,Desconto,idFuncionario)
        VALUES (ContribuinteGinasio,NOW(),Descricao,Valor,idCliente,Desconto,idFuncionario);
       IF S1 != 0
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(idFatura,S1);
	  END IF;
      IF S2 != 0
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(idFatura,S2);
	  END IF;
      IF S3 != 0
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(idFatura,S3);
	  END IF;
      IF S4 != 0
        THEN INSERT INTO ServicoFatura (idFatura,idServico)
        VALUE(idFatura,S4);
	  END IF;
  COMMIT;
END