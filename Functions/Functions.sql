CREATE INDEX Plano ON planoexercicios(Cliente);

SELECT SUM(Valor) FROM Fatura as F
	WHERE MONTH(F.Data)=01 AND YEAR(F.DATA)=2018; 
    
SELECT IdCliente, Nome  FROM Cliente as C
	INNER JOIN planoexercicios as P on P.Cliente=C.idCliente
	INNER JOIN exercicio as E on P.Exercicio=E.idExercicio
	WHERE E.Designacao='Martelo';
    
SELECT Descricao,nome FROM Cliente as C
	INNER JOIN subscreve as S on C.idCliente=S.idCliente
    INNER JOIN servico as Z on S.Idservico=Z.idservico
    WHERE (C.idCliente=1);
    
SELECT idFatura,Valor FROM fatura as F
	INNER JOIN Cliente as C on F.idCliente=C.idCliente
    WHERE C.idCliente=2;