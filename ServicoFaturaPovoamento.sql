use GinasioMiguel;

-- Musculação -> 1
-- Natação -> 2
-- Nutrição -> 3

INSERT INTO ServicoFatura (idFatura,idServico)
     VALUES-- (1,1),
                   (1,2),
                   (2,1),
                   (2,3),
                   (3,1),
                   (3,2),
                   (4,1),
                   (4,2),
                   (5,2),
                   (5,3),
				   (6,2),
                   (6,3),
				   (7,1),
				   (7,3),
                   (8,1),
				   (8,3),
                   (9,1),
                   (9,3),
                   (10,1),
                   (10,3),
                   (11,1),
                   (11,3),
                   (12,1),
                   (12,3),
                   (13,2),
                   (13,3),
                   (14,1),
                   (14,2),
                   (15,1),
                   (15,2),
                   (16,1),
                   (16,2),
                   (17,2),
                   (17,3),
                   (18,1),
                   (18,2),
                   (19,1),
                   (19,3),
				   (20,1),
                   (20,3);
                   
                 --  20:32:44	INSERT INTO ServicoFatura (idFatura,idServico)      VALUES(1,1),                    (1,2),                    (2,1),                    (2,3),                    (3,1),                    (3,2),                    (4,1),                    (4,2),                    (5,2),                    (5,3),        (6,2),                    (6,3),        (7,1),        (7,3),                    (8,1),        (8,3),                    (9,1),                    (9,3),                    (10,1),                    (10,3),                    (11,1),                    (11,3),                    (12,1),                    (12,3),                    (13,2),                    (13,3),                    (14,1),                    (14,2),                    (15,1),                    (15,2),                    (16,1),                    (16,2),                    (17,2),                    (17,3),                    (18,1),                    (18,2),                    (19,1),                    (19,3),        (20,1),                    (20,3)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`ginasiomiguel`.`servicofatura`, CONSTRAINT `fk_ServicoFatura_Servico1` FOREIGN KEY (`idFatura`) REFERENCES `servico` (`idservico`))	0.022 sec


                  

