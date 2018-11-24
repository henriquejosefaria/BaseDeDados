CREATE DEFINER=`root`@`localhost` PROCEDURE `addFuncionario`(in idFuncionario INT(11), in nome VARCHAR(75),in idade INT(11), in sexo VARCHAR(45),in cargo VARCHAR(45), in idContacto INT(11),in nrTelomovel INT(11), in nrTelemovel2 INT(11), in email VARCHAR(75), in idMorada INT(11), in rua VARCHAR(75), in localidade VARCHAR(75), in codigoPostal VARCHAR(75))
BEGIN
   DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN
      ROLLBACK;
      RESIGNAL;
   END;
   START TRANSACTION;
   INSERT INTO ContactoFuncionario (idContacto,NrTelemovel,NrTelemovel2,Email)
           VALUE (idContacto,nrTelomovel,nrTelemovel2,email);
           
   INSERT INTO MoradaFuncionario (idMorada,rua,localidade,codigoPostal)
          VALUE (idMorada,rua,localidade,codigoPostal);
          
   INSERT INTO Funcionario (idFuncionario,Nome,Idade,Sexo,Cargo,idContacto,idMorada)
          VALUE (idFuncionario,nome,idade,sexo,cargo,idContacto,idMorada);
   COMMIT;
END