use GinasioMiguel;

-- Musculação -> 3,4,5 (PT)
-- Natação -> 1,2
-- Nutrição -> 6,7
-- Sauna ->  8,9

INSERT INTO ServicoFatura (idFatura,idServico)
     VALUES(1,2),
                   (1,5),
                   (2,4),
                   (2,7),
                   (3,5),
                   (4,2),
                   (4,5),
                   (5,2),
                   (5,9),
				   (6,2),
                   (6,6),
				   (7,5),
                   (8,5),
                   (9,5),
                   (9,7),
                   (10,4),
                   (10,6),
                   (11,4),
                   (11,7),
                   (12,4),
                   (12,2),
                   (13,4),
                   (13,7),
                   (14,5),
                   (14,2),
                   (15,4),
                   (16,4),
                   (17,9),
                   (17,3),
                   (18,4),
                   (19,2),
                   (19,5),
                   (20,4);
                   
                   
                   19:00:37	INSERT INTO ServicoFatura (idFatura,idServico)      VALUES(1,2),                    (1,5),                    (2,4),                    (2,7),                    (3,5),                    (4,2),                    (4,5),                    (5,2),                    (5,9),        (6,2),                    (6,6),        (7,5),                    (8,5),                    (9,5),                    (9,7),                    (10,4),                    (10,6),                    (11,4),                    (11,7),                    (12,4),                    (12,2),                    (13,4),                    (13,7),                    (14,5),                    (14,2),                    (15,4),                    (16,4),                    (17,9),                    (17,3),                    (18,4),                    (19,2),                    (19,5),                    (20,4)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`ginasio`.`servicofatura`, CONSTRAINT `fk_ServicoFatura_Servico1` FOREIGN KEY (`idFatura`) REFERENCES `servico` (`idservico`))	0.012 sec

                  

