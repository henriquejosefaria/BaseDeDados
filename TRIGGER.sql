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
CREATE TRIGGER updatefuncionario2
AFTER INSERT ON prestaservico FOR EACH ROW
begin
           UPDATE funcionario as f
           INNER JOIN prestaservico as ps on new.idFuncionario=f.idFuncionario
           SET f.UptoDate = 'N';
END;
$$
DELIMITER ;
