CREATE VIEW `viewfuncionario` AS
    SELECT 
        f.Nome,
        f.Idade,
        f.Cargo,
        f.idContacto,
        c.NrTelemovel,
        c.NrTelemovel2,
        c.Email,
        m.rua,
        m.localidade,
        m.codigoPostal
    FROM funcionario as F
        INNER JOIN contactofuncionario AS c ON c.idContacto = f.idContacto
        INNER JOIN moradafuncionario AS m ON m.idMorada = f.idMorada