USE Ginasio;

ALTER DATABASE ginasio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO contacto
	(NrTelemovel,NrTelemovel2,Email)
	VALUES
		(965499765,NULL,'quantosqueres@outlook.com'),
        (911457895,937652981,'joaninha@hotmail.com'),
        (916150165,NULL,'carneirinho@hotmail.com'),
        (916150166,NULL,'eraumavez@gmail.com'),
        (912153165,916789541,'cocacola@gmail.com'),
        (916220165,NULL,'anabelinha@gmail.com'),
        (916152265,NULL,'silviameme@hotmail.com'),
        (916159865,NULL,'pepsiwinscoca@hotmail.com'),
        (933178987,NULL,'mentoscomcola@gmail.com'),
        (911567972,965816791,'mortadela@outlook.com'),
        (928765915,NULL,'ee92as@yahoo.pt'),
        (969167845,NULL,'w29cs@outlook.pt'),
        (938752875,938456101,'mylitlepony@gmail.com'),
        (916125955,NULL,'kirk87s@outlook.com'),
        (96789555,NULL,'specialkid@gmail.com'),
        (916199998,921560165,'origamis@hotmail.com'),
        (961876540,NULL,'moises@gmail.com'),
        (926650165,NULL,'blabla@hotmail.com'),
        (966650165,92671986,'originalityisover@outlook.com'),
        (922250165,NULL,'carryon@gmail.com');
        
INSERT INTO morada
	(Rua,Localidade,codigoPostal)
    VALUES
		('Rua dos peoes','Vila Verde','4730-490'),
        ('Rua das alminhas','Braga','4700-005'),
        ('Rua das prezes','Esposende','4740-007'),
        ('Travessa principal','Braga','4700-100'),
        ('Rua do Farto ','Braga','4700-426'),
        ('Rua da Sé ','Braga','4700-426'),
        ('Alameda da Fonte','Braga','4700-426'),
        ('Rua 1º de Maio','Espinho','4715-604'),
        ('Rua 25 de Abril','Espinho','4715-602'),
        ('Rua 8 de Dezembro','Espinho','4715-605'),
        ('Rua da Igreja','Padim da Graça','4700-658'),
        ('Rua da Fontinha da Igreja','Espinho','4700-670'),
        ('Rua do 1º Cabo Baltazar Abreu Simões','ADAÚFE','4710-586'),
        ('Travessa 1º de Maio','Adaúfe','4710-470'),
        ('Largo da Igreja Velha','Arentim','4705-014'),
        ('Rua Monte de Baixo','Arentim','4705-015'),
        ('Rua João Nascimento dos Santos','Gualtar','4710-078'),
        ('Rua Nova de Santa Cruz','Gualtar','4710-409'),
        ('Rua da Quinta do Capa','Gualtar','4710-133'),
        ('Rua do Bairro Novo','Gualtar','4710-043');
        
        
INSERT INTO Cliente 
	(Nome, Sexo, DataNascimento, idContacto, idMorada, IMC, Peso, Altura,NumeroContribuinte,LimitacoesFisicas )
	VALUES 
		('João Paulo Silva Freitas','M', '1998-10-10', 1, 1,23.2 , 80.7, 1.86, 384968373,null),
		('Joana Amaral Canesi Gomes','F', '1997-11-12' , 2, 2, 25.3, 75 , 1.75, 384757394,null),
		('Luís Vitor Costa','M','1988-10-07' ,3 , 3, 32.6, 94, 1.81,485963744 ,null),
		('Pedro Simões Cardoso','M','1996-12-01' , 4, 4, 20.7,79 , 1.87, 586734747,null),
		('José Pedro Campos Silva ','M','1995-10-07' ,5 , 5, 27, 87.2, 1.78, 485737263,null),
		('Ana Salva Gatore Resende','F','2000-1-10' ,6 , 6, 26.1, 69.2, 1.53, 457463635,'nanismo'),
		('Silvia Domingues Santos','F','2001-12-10' ,7 , 7, 28.2, 76, 1.49, 584736463,'nanismo'),
		('Salvador Sabrosa Vidal','M','1988-5-22' ,8 , 8, 26.1, 86.4, 1.70, 567362635,'reumatismo'),
		('Nunu Uzumaki Tristão','M','2001-12-10',9 , 9, 29.4, 84.5, 1.78, 506795847,'asma'),
		('Rafael Penedo Feio ','M','1996-02-10',10 , 10, 23.2, 86.3, 1.97, 458677947,'esclerose lateral'),
		('Jonas Suares Sousa','M','1996-05-22' ,11 , 11, 22.1, 76.3, 1.86, 346678645,null),
		('Carlos Manuel Cartola','M','1998-10-20', 12, 12, 21.5, 73.2, 1.76, 968372621,null),
		('Filipe Peso Pesado','M','1993-11-11' , 13, 13, 31.5, 75.4, 1.85, 485769485,null),
		('Hugo Pena pesada','M','1998-11-25' , 14, 14, 36.4, 83.6, 1.89, 485768473,null),
		('Jacito Leite Portugal','M','1996-11-29' , 15, 15, 25.1, 79.9, 1.71,485977373 ,null),
		('Parvalhoti Pampam Pam','M','1979-12-10' , 16, 16, 26.9, 82.9, 1.78, 495686743,'asma'),
		('Salvio Salvio Salvio','M','1980-10-30' , 17, 17, 23.3, 74.7, 1.86, 384759674,null),
		('Manuel Machado Costa','M', '1996-3-10', 18, 18, 34.1, 99.5, 1.75, 594837455,null),
		('Sousa Silva Sozinho','M','1997-05-15' , 19, 19, 20.1, 69.8, 1.73, 978572734,null),
		('Alvaro Campos','M','1993-04-22' , 20, 20, 21.5, 71.2, 1.86, 485867545,null);
        
INSERT INTO contactofuncionario
	(idContacto,NrTelemovel,NrTelemovel2,Email)
	VALUES
		(1,967541987,NULL,'stanilipastarini@outlook.com'),
        (2,96999666,928855888,'marcopolo@hotmail.com'),
        (3,92765178,NULL,'fidelcastro@hotmail.com'),
        (4,96987995,NULL,'greenmario@gmail.com'),
        (5,93759276,NULL,'fastestmanalive@outlook.com'),
        (6,916666667,917666444,'joseph@gmail.com'),
        (7,967541943,NULL,'JafarAfricans@outlook.com'),
        (8,967541324,NULL,'move-itmove-it@outlook.com');
        
INSERT INTO moradafuncionario
	(idMorada,Rua,Localidade,codigoPostal)
    VALUES
		(1,'Rua de Pousada','Gualtar','4710-049'),
        (2,'Rua 1º de Maio','Pedralva','4715-473'),
        (3,'Escudeiros','Escudeiros','4705-473'),
        (4,'Travessa 13 de Maio','Vimieiro','4705-748'),
        (5,'Rua 5 de Julho','Celeirós','4705-730'),
        (6,'Rua 5 de Outubro','São Paio Merelim','4700-020'),
        (7,'Rua de Vera Cruz','Gualtar','4710-045'),
        (8,'Rua da Palmeira','Gualtar','4710-143');


INSERT INTO Funcionario
	(idFuncionario,Nome,DataNascimento,Sexo,Cargo,idContacto,idMorada,UptoDate)
    VALUES
		(1,'Josef Stalini','1990-12-10','M','Empregado de Limpeza',1,1,'S'),
        (2,'Genghis Khan','1986-06-10','M','Personal Traineer',2,2,'S'),
        (3,'Fidel Castro','1994-08-26','M','Professor de Natação',3,3,'S'),
        (4,'Luigi Green Mario','1992-1-16','M','Empregado de Limpeza',4,4,'S'),
        (5,'Usain Bolt','1990-11-1','M','Personal Trainner',5,5,'S'),
        (6,'Joseph Goebbels','1991-05-28','M','Nutricionista',6,6,'S'),
		(7,'Jafar Strogonof','1989-09-10','M','Rececionista',7,7,'S'),
        (8,'King Julian Move-it Move-it','1991-08-22','M','Rececionista',8,8,'S');
        
INSERT INTO servico
	(idServico,Descricao,Preco,Estado,UptoDate)
    VALUES
		(1,'Natação,Passe diario',5,'A','S'),
        (2,'Natação,Passe mensal',30,'A','S'),
        (3,'Ginasio,Passe diario sem acompanhamento',3,'A','S'),
		(4,'Ginasio,Passe mensal sem acompanhamento',25,'A','S'),
        (5,'Ginasio, Passe mensal com PT',120,'A','S'),
        (6,'Nutrição,2x mês',50,'A','S'),
        (7,'Nutricão, ida única', 30,'A','S'),
        (8,'Sauna,Passe mensal',30,'A','S'),
        (9,'Sauna, Passe diario',3,'A','S');
        

INSERT INTO Equipamento
	(idEquipamento,Nome,Descricao)
    VALUES 
		(1,'Banco','Multi Exercício'),
		(2,'Banco','Multi Exercício'),
		(3,'Banco','Multi Exercício'),
		(4,'Multi Press Rack','Peito'),
		(5,'Multi Press Rack','Peito'),
		(6,'Pulley Machine','MultiExercício'),
		(7,'Pulley Machine','MultiExercício'),
		(8,'Dumbbel Set','Multi Exercicio'),
		(9,'Dumbbel Set','Multi Exercicio'),
		(10,'Passadeira Corrida Eletrica','Resistência'),
		(11,'Passadeira Corrida Eletrica','Resistência'),
		(12,'Passadeira Corrida Eletrica','Resistência'),
		(13,'Passadeira Corrida Eletrica','Resistência'),
		(14,'Passadeira Corrida Autopropulsada','Resistência'),
		(15,'Passadeira Corrida Autopropulsada','Resistência'),
		(16,'Prensa','Pernas'),
		(17,'Pull Down Powerline','Costas'),
		(18,'Pull Down Powerline','Costas');
        
INSERT INTO Exercicio 
	(idexercicio,Designacao,Tipo)
	VALUES 
		(1,'Agachamentos','Pernas'),
		(2,'Prensa','Pernas'),
		(3,'Martelo','Bícep'),
		(4,'Preacher Curl','Bícep'),
		(5,'Curl Invertido','Bícep'),
		(6,'Fundos','Trícep'),
		(7,'Puxador Trícep Corda','Trícep'),
		(8,'Trícep Francês','Trícep'),
		(9,'Supino Inclinado','Peito'),
		(10,'Supino Reto','Peito'),
		(11,'Supino Declinado','Peito'),
		(12,'Crucifixo','Peito'),
		(13,'Chin Up','Costas'),
		(14,'Remada Curvada','Costas'),
		(15,'Remada Alta','Costas'),
		(16,'Remada unilateral','Costas'),
		(17,'Lat Pull Down','Costas'),
		(18,'Press Militar em Pé','Ombros'),
		(19,'Elevações Laterais Cabo','Ombros'),
		(20,'Elevações Frontais Halteres','Ombros'),
		(21,'Arnold Press','Ombros'),
		(22,'Corrida','Cardio');
        

        
INSERT INTO prestaservico
	(idServico,idFuncionario,DataInicio)
    VALUES
		(1,3,'2018/01/05'),
		(2,3,'2018/01/05'),
		(5,2,'2018/01/5'),
		(5,5,'2018/01/05'),
		(6,6,'2018/01/05'),
		(7,6,'2018/01/05');
        
        
        
INSERT INTO subscreve
	(idCliente,idServico,DataSubscricao)
    VALUES
		(1,2,'2018/04/20'),
        (1,7,'2018/04/20'),
        (1,9,'2018/04/20'),
        (2,1,'2018/05/21'),
        (3,4,'2018/05/21'),
        (3,8,'2018/05/21'),
        (4,2,'2018/06/01'),
        (4,7,'2018/06/23'),
        (5,5,'2018/11/02'),
        (6,7,'2018/10/11'),
        (7,4,'2018/10/01'),
        (8,4,'2018/11/01'),
        (8,8,'2018/11/20'),
        (9,1,'2018/10/20'),
        (9,2,'2018/11/01'),
        (10,3,'2018/05/06'),
        (10,3,'2018/05/07'),
        (10,3,'2018/05/08'),
        (10,3,'2018/05/09'),
        (10,4,'2018/05/10'),
        (11,4,'2018/02/07'),
        (11,2,'2018/02/08'),
        (12,3,'2018/05/10'),
        (13,1,'2018/08/10'),
        (13,5,'2018/08/10'),
        (14,7,'2018/05/07'),
        (15,6,'2018/03/07'),
        (15,4,'2018/03/07'),
        (16,3,'2018/09/07'),
        (17,8,'2018/09/10'),
        (18,5,'2018/05/01'),
        (18,5,'2018/06/07'),
        (19,4,'2018/05/07'),
        (20,4,'2018/10/07');
        
        
INSERT INTO ExercicioEquipamento 
	(idExercicio, idEquipamento)
    VALUES
		(4,1),
		(8,1),
		(12,1),
		(16,1),
		(21,1),
		(9,4),
		(10,4),
		(11,4),
		(4,6),
		(5,6), 
		(7,6),
		(19,6),
		(3,8),
		(8,8),
		(12,8),
		(14,8),
		(16,8),
		(20,8),
		(21,8),
		(22,10),
		(22,14),
		(2,16),
		(17,17);
                 
 INSERT INTO Fatura 
	(idFatura,ContribuinteGinasio ,Data,Descricao,Valor,Funcionario,idCliente,Desconto,Estado,UptoDate)
	VALUES 
				(1,111111111,'2018/01/05','Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,7,1,30,'A','S'),
                (2,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,7,2,5,'A','S'),
                (3,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Ginasio, Mensal, PersonalTrainer',120,8,3,20,'A','S'),
                (4,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,8,4,30,'A','S'),
                (5,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Sauna, ida única',33,7,5,10,'A','S'),
                (6,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Nutrição, 2x',80,7,6,15,'A','S'),
                (7,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer',120,7,7,23.20,'A','S'),
                (8,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer',120,8,8,23.20,'A','S'),
                (9,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer & Nutrição, ida única',150,8,9,20,'A','S'),
                (10,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, 2x',75,8,10,10,'A','S'),
                (11,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,8,11,5,'A','S'),
                (12,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal',55,8,12,15,'A','S'),
                (13,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,8,13,5,'A','S'),
                (14,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',130,8,14,30,'A','S'),
                (15,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,8,15,5,'A','S'),
                (16,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,8,16,5,'A','S'),
                (17,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio,Passe Diário & Sauna, Passe Diário',6,7,17,0,'A','S'),
                (18,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,7,18,5,'A','S'),
                (19,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,7,19,30,'A','S'),
                (20,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio Mensal',25,7,20,5,'A','S');
 

INSERT INTO PlanoExercicios (Cliente,Exercicio,nSeries,nRepeticoes,Estado)
    VALUES  (1,1,4,10,'A'),
                    (1,5,4,10,'A'),
                    (1,14,4,10,'A'),
                    (1,20,4,10,'A'),
                    (2,2,4,10,'A'),
                    (2,6,4,10,'A'),
                    (2,8,4,10,'A'),
                    (2,15,4,10,'A'),
                    (3,2,4,10,'A'),
                    (3,9,4,10,'A'),
                    (3,10,4,10,'A'),
                    (3,12,4,10,'A'),
                    (3,21,4,10,'A'),
                    (4,3,4,10,'A'),
                    (4,13,4,10,'A'),
                    (4,15,4,10,'A'),
                    (4,18,4,10,'A'),
                    (5,6,3,12,'A'),
                    (5,7,3,12,'A'),
                    (5,11,3,12,'A'),
                    (5,18,3,12,'A'),
                    (6,5,3,12,'A'),
                    (6,12,3,12,'A'),
                    (6,13,3,12,'A'),
                    (6,17,3,12,'A'),
                    (7,4,5,8,'A'),
                    (7,9,5,8,'A'),
                    (7,17,5,8,'A'),
                    (7,22,1,1,'A'),
                    (8,3,5,8,'A'),
                    (8,5,5,8,'A'),
                    (8,8,5,8,'A'),
                    (8,13,5,8,'A'),
                    (9,11,3,10,'A'),
                    (9,16,3,10,'A'),
                    (9,18,3,10,'A'),
                    (9,20,3,10,'A'),
                    (10,15,5,10,'A'),
                    (10,17,5,10,'A'),
                    (10,18,5,10,'A'),
                    (10,21,5,12,'A'),
                    (11,4,5,10,'A'),
                    (11,7,5,10,'A'),
                    (11,8,5,10,'A'),
                    (11,14,5,10,'A'),
                    (12,3,5,10,'A'),
                    (12,6,5,10,'A'),
                    (12,8,5,10,'A'),
                    (12,12,5,8,'A'),
                    (12,17,5,8,'A'),
                    (13,13,4,12,'A'),
                    (13,15,4,12,'A'),
                    (13,17,4,12,'A'),
                    (13,19,4,12,'A'),
                    (14,1,3,13,'A'),
                    (14,11,3,13,'A'),
                    (14,14,3,13,'A'),
                    (14,16,3,13,'A'),
                    (15,2,3,8,'A'),
                    (15,6,3,8,'A'),
                    (15,9,3,8,'A'),
                    (15,13,3,8,'A'),
                    (16,5,3,15,'A'),
                    (16,10,3,15,'A'),
                    (16,15,3,15,'A'),
                    (16,20,3,15,'A'),
                    (17,1,3,12,'A'),
                    (17,4,3,12,'A'),
                    (17,7,3,12,'A'),
                    (17,10,3,12,'A'),
                    (18,13,5,9,'A'),
                    (18,14,5,9,'A'),
                    (18,17,5,9,'A'),
                    (18,18,5,9,'A'),
                    (19,2,5,9,'A'),
                    (19,3,5,9,'A'),
                    (19,6,5,9,'A'),
                    (19,9,5,9,'A'),
                    (20,12,4,10,'A'),
                    (20,16,4,10,'A'),
                    (20,20,4,10,'A'),
                    (20,22,1,1,'A');      
        

INSERT INTO servicofatura
	(idFatura,idServico)
    VALUES
		(1,2),
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

-- CREATE USER 'Jafar Strogonof'@'localhost' IDENTIFIED BY 'Jafar';

-- CREATE USER 'King Julian Move-it Move-it'@'localhost' IDENTIFIED BY 'Julian';


-- GRANT ALL PRIVILEGES ON Ginasio.* TO 'Jafar Strogonof'@'localhost';


-- GRANT ALL PRIVILEGES ON Ginasio.Exercicio TO 'King Julian Move-it Move-it'@'localhost';
-- GRANT ALL PRIVILEGES ON Ginasio.Equipamento TO 'King Julian Move-it Move-it'@'localhost';
-- GRANT ALL PRIVILEGES ON Ginasio.Cliente TO 'King Julian Move-it Move-it'@'localhost';
-- GRANT ALL PRIVILEGES ON Ginasio.Fatura TO 'King Julian Move-it Move-it'@'localhost';



