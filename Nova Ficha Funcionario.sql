CREATE DEFINER=`root`@`localhost` PROCEDURE `Criação da Ficha de novo Funcionario`(in nome VARCHAR(75),in idade INT,in sexo VARCHAR(1),in cargo VARCHAR(75),in telemovel1 INT, in telemovel2 INT ,email VARCHAR(75),rua VARCHAR(75),localidade VARCHAR(75),codigopostal VARCHAR(75))
BEGIN
DECLARE x INT;
DECLARE y INT;

INSERT INTO moradafuncionario
	(Rua,Localidade,codigoPostal)
    VALUES
		(rua,localidade,codigopostal);

SET x=  LAST_INSERT_ID();
        
INSERT INTO contactofuncionario
		(NrTelemovel,NrTelemovel2,Email)
        Values
			(telemovel1,telemovel2,email);
SET y=LAST_INSERT_ID();
INSERT INTO funcionario
	(Nome,Idade,Sexo,Cargo,idContacto,IdMorada)
    Values
		(nome,idade,sexo,cargo,x,y);

END