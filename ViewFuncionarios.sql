CREATE VIEW `view_funcionario` AS
    SELECT 
        *
    FROM
        Funcionario AS F
            INNER JOIN
        ContactoFuncionario AS CF ON CF.idContacto = F.idContacto
            INNER JOIN
        MoradaFuncionario AS MF ON MF.idMorada = F.idMorada;
   
