DELIMITER $$
CREATE TRIGGER updatefuncionario
AFTER UPDATE ON servico FOR EACH ROW
begin
           UPDATE funcionario as f
           INNER JOIN prestaservico as ps on ps.idFuncionario=f.idFuncionario
           INNER JOIN servico on  ps.idServico=NEW.idServico
		   SET f.UptoDate =IF(f.UptoDate = 'R', 'S','N');

END;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updatefuncionario2
AFTER INSERT ON prestaservico FOR EACH ROW
begin
           UPDATE funcionario as f
           INNER JOIN prestaservico as ps on new.idFuncionario=f.idFuncionario
           SET f.UptoDate =IF(f.UptoDate = 'R', 'S','N');
END;
$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER updatecliente2
AFTER INSERT ON planoexercicios FOR EACH ROW
begin
           UPDATE cliente as c
           INNER JOIN planoexercicios as pe on new.Cliente=c.idCliente
		   SET c.UptoDate =IF(c.UptoDate = 'R', 'S','N');

END;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updatecliente3
AFTER UPDATE ON planoexercicios FOR EACH ROW
begin
           UPDATE cliente as c
           INNER JOIN planoexercicios on c.idCliente=NEW.Cliente
           SET c.UptoDate =IF(c.UptoDate = 'R', 'S','N');
END;
$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER updatecliente4
AFTER UPDATE ON fatura FOR EACH ROW
begin
           UPDATE cliente as c
           INNER JOIN fatura on c.idCliente=NEW.idCliente
           SET c.UptoDate =IF(c.UptoDate = 'R', 'S','N');
END;
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER updatecliente5
AFTER INSERT ON fatura FOR EACH ROW
begin
           UPDATE cliente as c
           INNER JOIN fatura on c.idCliente=NEW.idCliente
           SET c.UptoDate =IF(c.UptoDate = 'R', 'S','N');
END;
$$
DELIMITER ;



