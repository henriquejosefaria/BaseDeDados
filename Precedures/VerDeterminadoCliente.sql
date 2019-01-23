DELIMITER $$
CREATE  PROCEDURE `VerCliente_x`(in id INT(11),in telemovel INT(11))
BEGIN
SELECT 
		c.idCliente,
		c.Nome,
        c.DataNascimento,
        c.Sexo,
        c.IMC,
        c.Peso,
        c.Altura,
        c.NumeroContribuinte,
        c.LimitacoesFisicas,
        cc.NrTelemovel,
        cc.NrTelemovel2,
        cc.Email,
        m.rua,
        m.localidade,
        m.codigoPostal FROM cliente as  c
        INNER JOIN contacto AS cc ON c.idContacto = cc.idContacto
        INNER JOIN morada AS m ON m.idMorada = c.idMorada
WHERE (c.idCliente = id OR cc.NrTelemovel = telemovel);
END$$

DELIMITER ;