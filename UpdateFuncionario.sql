
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateFuncionario`(in ID INT(11),in sexo varchar(1),in cargo VARCHAR(45), in nrTelomovel 	INT(11), in nrTelemovel2 INT(11),
 in email VARCHAR(75), in rua VARCHAR(75), in localidade VARCHAR(75), in codigoPostal VARCHAR(75))
BEGIN

UPDATE funcionario
INNER JOIN moradafuncionario AS M ON M.idMorada = funcionario.idMorada
INNER JOIN contactofuncionario AS C ON C.idContacto = funcionario.idContacto
SET M.rua =IF(rua IS NOT NULL, rua, M.rua),
    M.localidade =IF(localidade IS NOT NULL, localidade, M.localidade),
    M.codigoPostal =IF(codigoPostal IS NOT NULL, codigoPostal, M.codigoPostal),
	C.NrTelemovel =IF(nrTelemovel IS NOT NULL OR (nrTelemovel > 900000000 AND NrTelemovel < 999999999),nrTelemovel,C.NrTelemovel),
    C.NrTelemovel2 =IF(NrTelemovel2 IS NOT NULL OR (NrTelemovel2 > 900000000 AND NrTelemovel2 < 999999999), nrTelemovel2, C.NrTelemovel2),
    C.Email =IF(email IS NOT NULL, email, C.Email),
    funcionario.sexo =IF(sexo IS NOT NULL, sexo, funcionario.Sexo),
    funcionario.cargo =IF(cargo IS NOT NULL, cargo, funcionario.Cargo),
    funcionario.UptoDate = 'N'
WHERE funcionario.idFuncionario = id;
END$$

DELIMITER ;