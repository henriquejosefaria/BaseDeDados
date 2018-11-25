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
        (911567972,965816791,'mordidelasnostetos@outlook.com'),
        (928765915,NULL,'escacarpedra@yahoo.pt'),
        (969167845,NULL,'waifulord@outlook.pt'),
        (938752875,938456101,'mylitlepony@gmail.com'),
        (916125955,NULL,'lolisdragon@outlook.com'),
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
	(Nome, Sexo, Idade, idContacto, idMorada, IMC, Peso, Altura,NumeroContribuinte,LimitacoesFisicas )
	VALUES 
		('João Paulo Silva Freitas','M', 20, 1, 1,23.2 , 80.7, 1.86, 384968373,null),
		('Joana Amaral Canesi Gomes','F', 21 , 2, 2, 25.3, 75 , 1.75, 384757394,null),
		('Luís Vitor Costa','M',32 ,3 , 3, 32.6, 94, 1.81,485963744 ,null),
		('Pedro Simões Cardoso','M',21 , 4, 4, 20.7,79 , 1.87, 586734747,null),
		('José Pedro Campos Silva ','M',19 ,5 , 5, 27, 87.2, 1.78, 485737263,null),
		('Ana Salva Gatore Resende','F',18 ,6 , 6, 26.1, 69.2, 1.53, 457463635,'nanismo'),
		('Silvia Domingues Santos','F',19 ,7 , 7, 28.2, 76, 1.49, 584736463,'nanismo'),
		('Salvador Sabrosa Vidal','M',45 ,8 , 8, 26.1, 86.4, 1.70, 567362635,'reumatismo'),
		('Nunu Uzumaki Tristão','M',23,9 , 9, 29.4, 84.5, 1.78, 506795847,'asma'),
		('Rafael Penedo Feio ','M',20,10 , 10, 23.2, 86.3, 1.97, 458677947,'esclerose lateral'),
		('Jonas Suares Sousa','M',22 ,11 , 11, 22.1, 76.3, 1.86, 346678645,null),
		('Carlos Manuel Cartola','M', 22, 12, 12, 21.5, 73.2, 1.76, 968372621,null),
		('Filipe Peso Pesado','M',22 , 13, 13, 31.5, 75.4, 1.85, 485769485,null),
		('Hugo Pena pesada','M',21 , 14, 14, 36.4, 83.6, 1.89, 485768473,null),
		('Jacito Leite Portugal','M',20 , 15, 15, 25.1, 79.9, 1.71,485977373 ,null),
		('Parvalhoti Pampam Pam','M',38 , 16, 16, 26.9, 82.9, 1.78, 495686743,'asma'),
		('Salvio Salvio Salvio','M',52 , 17, 17, 23.3, 74.7, 1.86, 384759674,null),
		('Manuel Machado Costa','M', 17, 18, 18, 34.1, 99.5, 1.75, 594837455,null),
		('Sousa Silva Sozinho','M',20 , 19, 19, 20.1, 69.8, 1.73, 978572734,null),
		('Alvaro Campos','M',24 , 20, 20, 21.5, 71.2, 1.86, 485867545,null);
        
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
	(idFuncionario,Nome,Idade,Sexo,Cargo,idContacto,idMorada)
    VALUES
		(1,'Josef Stalini',45,'M','Empregado de Limpeza',1,1),
        (2,'Genghis Khan',34,'M','Personal Traineer',2,2),
        (3,'Fidel Castro',55,'M','Professor de Natação',3,3),
        (4,'Luigi Green Mario',45,'M','Empregado de Limpeza',4,4),
        (5,'Usain Bolt',45,'M','Personal Trainner',5,5),
        (6,'Joseph Goebbels',25,'M','Nutricionista',6,6),
		(7,'Jafar Strogonof',31,'M','Rececionista',7,7),
        (8,'King Julian Move-it Move-it',26,'M','Rececionista',8,8);
        
INSERT INTO servico
	(idServico,Descricao,Preco)
    VALUES
		(1,'Natação,Passe diario',5),
        (2,'Natação,Passe mensal',30),
        (3,'Ginasio,Passe diario sem acompanhamento',3),
		(4,'Ginasio,Passe mensal sem acompanhamento',25),
        (5,'Ginasio, Passe mensal com PT',120),
        (6,'Nutrição,2x mês',50),
        (7,'Nutricão, ida única', 30),
        (8,'Sauna,Passe mensal',30),
        (9,'Sauna, Passe diario',3);
        

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
	(idFatura,ContribuinteGinasio ,Data,Descricao,Valor,Funcionario,idCliente,Desconto )
	VALUES 
				(1,111111111,'2018/01/05','Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,7,1,30),
                (2,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,7,2,5),
                (3,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Ginasio, Mensal, PersonalTrainer',120,8,3,20),
                (4,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,8,4,30),
                (5,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Sauna, ida única',33,7,5,10),
                (6,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Nutrição, 2x',80,7,6,15),
                (7,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer',120,7,7,23.20),
                (8,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer',120,8,8,23.20),
                (9,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer & Nutrição, ida única',150,8,9,20),
                (10,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, 2x',75,8,10,10),
                (11,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,8,11,5),
                (12,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal',55,8,12,15),
                (13,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,8,13,5),
                (14,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',130,8,14,30),
                (15,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,8,15,5),
                (16,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,8,16,5),
                (17,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio,Passe Diário & Sauna, Passe Diário',6,7,17,0),
                (18,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,7,18,5),
                (19,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,7,19,30),
                (20,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio Mensal',25,7,20,5);
 

 -- // Maneira de apagar tabela toda// --
-- DELETE FROM Fatura WHERE idFatura != 387
INSERT INTO PlanoExercicios (Cliente,Exercicio,nSeries,nRepeticoes)
    VALUES  (1,1,4,10),
                    (1,5,4,10),
                    (1,14,4,10),
                    (1,20,4,10),
                    (2,2,4,10),
                    (2,6,4,10),
                    (2,8,4,10),
                    (2,15,4,10),
                    (3,2,4,10),
                    (3,9,4,10),
                    (3,10,4,10),
                    (3,12,4,10),
                    (3,21,4,10),
                    (4,3,4,10),
                    (4,13,4,10),
                    (4,15,4,10),
                    (4,18,4,10),
                    (5,6,3,12),
                    (5,7,3,12),
                    (5,11,3,12),
                    (5,18,3,12),
                    (6,5,3,12),
                    (6,12,3,12),
                    (6,13,3,12),
                    (6,17,3,12),
                    (7,4,5,8),
                    (7,9,5,8),
                    (7,17,5,8),
                    (7,22,1,1),
                    (8,3,5,8),
                    (8,5,5,8),
                    (8,8,5,8),
                    (8,13,5,8),
                    (9,11,3,10),
                    (9,16,3,10),
                    (9,18,3,10),
                    (9,20,3,10),
                    (10,15,5,10),
                    (10,17,5,10),
                    (10,18,5,10),
                    (10,21,5,12),
                    (11,4,5,10),
                    (11,7,5,10),
                    (11,8,5,10),
                    (11,14,5,10),
                    (12,3,5,10),
                    (12,6,5,10),
                    (12,8,5,10),
                    (12,12,5,8),
                    (12,17,5,8),
                    (13,13,4,12),
                    (13,15,4,12),
                    (13,17,4,12),
                    (13,19,4,12),
                    (14,1,3,13),
                    (14,11,3,13),
                    (14,14,3,13),
                    (14,16,3,13),
                    (15,2,3,8),
                    (15,6,3,8),
                    (15,9,3,8),
                    (15,13,3,8),
                    (16,5,3,15),
                    (16,10,3,15),
                    (16,15,3,15),
                    (16,20,3,15),
                    (17,1,3,12),
                    (17,4,3,12),
                    (17,7,3,12),
                    (17,10,3,12),
                    (18,13,5,9),
                    (18,14,5,9),
                    (18,17,5,9),
                    (18,18,5,9),
                    (19,2,5,9),
                    (19,3,5,9),
                    (19,6,5,9),
                    (19,9,5,9),
                    (20,12,4,10),
                    (20,16,4,10),
                    (20,20,4,10),
                    (20,22,1,1);      
        

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

CREATE USER 'Jafar Strogonof'@'localhost' IDENTIFIED BY 'Jafar';

CREATE USER 'King Julian Move-it Move-it'@'localhost' IDENTIFIED BY 'Julian';

GRANT DELETE,INSERT,UPDATE,EXECUTE, SHOW VIEW ON Ginasio.* TO 'Jafar Strogonof'@'localhost';


GRANT DELETE,INSERT,UPDATE,EXECUTE, SHOW VIEW ON Ginasio.* TO 'King Julian Move-it Move-it'@'localhost';




