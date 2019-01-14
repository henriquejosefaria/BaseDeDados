CREATE VIEW `view_prestaservico` AS
    SELECT 
        S.Descricao,
        F.Nome,
        F.Cargo,
        S.Preco
    FROM prestaservico AS PS
        INNER JOIN servico AS S ON S.idServico = PS.idServico
        INNER JOIN funcionario AS F ON F.idFuncionario = PS.idFuncionario
    ORDER BY S.Descricao