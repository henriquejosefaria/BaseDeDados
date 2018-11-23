CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `view_servicofaturas` AS
    SELECT 
        `F`.`idFatura` AS `idFatura`,
        `F`.`Data` AS `Data`,
        `S`.`Descricao` AS `Descricao`,
        `Func`.`Nome` AS `NomeFuncionario`,
        `C`.`Nome` AS `NomeCliente`
    FROM
        ((((`servicofatura` `SF`
        JOIN `servico` `S` ON ((`S`.`idServico` = `SF`.`idServico`)))
        JOIN `fatura` `F` ON ((`F`.`idFatura` = `SF`.`idFatura`)))
        JOIN `funcionario` `Func` ON ((`Func`.`idFuncionario` = `F`.`idFuncionario`)))
        JOIN `cliente` `C` ON ((`C`.`idCliente` = `F`.`IdCliente`)))