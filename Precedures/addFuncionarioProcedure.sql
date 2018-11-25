CREATE DEFINER=`root`@`localhost` PROCEDURE `addFuncionario`(in novoIdFuncionario INT(11), in novoNome VARCHAR(75),in novaIdade INT(11), in sexoFuncionario VARCHAR(45),in cargoFuncionario VARCHAR(45), in novoIdContacto INT(11),in novoNrTelomovel1 INT(11), in novoNrTelemovel2 INT(45), in novoEmail VARCHAR(75), in novoIdMorada INT(11), in novaRua VARCHAR(75), in novaLocalidade VARCHAR(75), in novoCodigoPostal VARCHAR(75))
BEGIN
   DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN
      ROLLBACK;
      RESIGNAL;
   END;
   START TRANSACTION;
   INSERT INTO ContactoFuncionario (idContacto,NrTelemovel,NrTelemovel2,Email) VALUE (novoIdContacto,novoNrTelemovel1,novoNrTelemovel2,novoEmail);
   INSERT INTO MoradaFuncionario (idMorada,rua,localidade,codigoPostal) VALUE (novoIdMorada,novaRua,novaLocalidade,novoCodigoPostal);
   INSERT INTO Funcionario (idFuncionario,Nome,Idade,Sexo,Cargo,idContacto,idMorada) VALUE (novoIdFuncionario,novoNome,novaIdade,sexoFuncionario,cargoFuncionario,novoIdContacto,novoIdMorada);
   COMMIT;
END