CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `view_prestaservico` AS
    SELECT 
        `S`.`Descricao` AS `Descricao`,
        `F`.`Nome` AS `Nome`,
        `F`.`Cargo` AS `Cargo`,
        `S`.`Preco` AS `Preco`
    FROM
        ((`prestaservico` `PS`
        JOIN `servico` `S` ON ((`S`.`idServico` = `PS`.`idServico`)))
        JOIN `funcionario` `F` ON ((`F`.`idFuncionario` = `PS`.`idFuncionario`)))
    ORDER BY `S`.`Descricao`