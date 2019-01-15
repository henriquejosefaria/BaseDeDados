DELIMITER $$
CREATE TRIGGER updatefuncionario
AFTER UPDATE ON servico FOR EACH ROW
begin
           UPDATE funcionario as f
           INNER JOIN prestaservico as ps on ps.idFuncionario=f.idFuncionario
           INNER JOIN servico on  ps.idServico=NEW.idServico
           SET f.UptoDate = 'N';
END;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updatefuncionario
AFTER UPDATE ON cliente FOR EACH ROW
begin
           UPDATE funcionario as f
           INNER JOIN prestaservico as ps on ps.idFuncionario=f.idFuncionario
           INNER JOIN servico on  ps.idServico=NEW.idServico
           SET f.UptoDate = 'N';
END;
$$
DELIMITER ;


