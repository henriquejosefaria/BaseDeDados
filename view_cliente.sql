CREATE VIEW `view_cliente` AS
    SELECT 
        C.idCliente,
        C.Nome,
        C.Sexo,
        C.Idade,
        C.IMC,
        C.Peso,
        C.Altura,
        C.NumeroContribuinte,
        C.LimitacoesFisicas,
        CC.NrTelemovel,
        CC.NrTelemovel2,
        CC.Email,
        M.Rua,
        M.Localidade,
        M.CodigoPostal
    FROM
        Cliente AS C
            INNER JOIN
        Contacto AS CC ON CC.idContacto = C.idContacto
            INNER JOIN
        Morada AS M ON M.idMorada = C.idMorada;
