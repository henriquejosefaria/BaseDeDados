CREATE DEFINER=`root`@`localhost` PROCEDURE `addFuncionario`( in nome VARCHAR(75),in idade INT(11), in sexo VARCHAR(45),in cargo VARCHAR(45), in nrTelomovel INT(11), in nrTelemovel2 INT(11), in email VARCHAR(75), in rua VARCHAR(75), in localidade VARCHAR(75), in codigoPostal VARCHAR(75))
BEGIN
   DECLARE x INT;
   DECLARE y INT;
   DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN
      ROLLBACK;
      RESIGNAL;
   END;
   START TRANSACTION;
   INSERT INTO ContactoFuncionario (NrTelemovel,NrTelemovel2,Email)
           VALUE (nrTelomovel,nrTelemovel2,email);
           SET x = LAST_INSERT_ID(); 
   INSERT INTO MoradaFuncionario (rua,localidade,codigoPostal)
          VALUE (irua,localidade,codigoPostal);
          SET y = LAST:INSERT_ID();
   INSERT INTO Funcionario (Nome,Idade,Sexo,Cargo,idContacto,idMorada)
          VALUE (nome,idade,sexo,cargo,x,y);
   COMMIT;
END
