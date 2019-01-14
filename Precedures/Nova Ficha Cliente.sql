DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Nova Ficha de Cliente`(in nome VARCHAR(75),in idade INT,in sexo VARCHAR(1),in peso INT, in altura INT,in numerocontribuinte INT, in limitacoesfisicas VARCHAR(75),in telemovel1 INT, in telemovel2 INT ,email VARCHAR(75),rua VARCHAR(75),localidade VARCHAR(75),codigopostal VARCHAR(75))
BEGIN
DECLARE x INT;
DECLARE y INT;
DECLARE z INT;
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN
      ROLLBACK;
      RESIGNAL;
   END;

START TRANSACTION;


 SET z = peso /POWER(altura,2);
INSERT INTO morada
	(Rua,Localidade,codigoPostal)
    VALUES
		(rua,localidade,codigopostal);
 SET x=  LAST_INSERT_ID();
        
INSERT INTO contacto
		(NrTelemovel,NrTelemovel2,Email)
        Values
			(telemovel1,telemovel2,email);
SET y=LAST_INSERT_ID();
INSERT INTO cliente
	(Nome,Sexo,Idade,idContacto,IdMorada,IMC,Peso,Altura,NumeroContribuinte,LimitacoesFisicas)
    Values
		(nome,sexo,idade,x,y,z,peso,altura,numerocontribuinte,limitacoesfisicas);
        COMMIT;
 END$$
 
 DELIMITER ;