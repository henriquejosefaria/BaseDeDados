USE Ginasio;
ALTER DATABASE ginasio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO contacto
	(idContacto,NrTelemovel,NrTelemovel2,Email)
	VALUES
		(1,965499765,NULL,'quantosqueres@outlook.com'),
        (2,911457895,937652981,'joaninha@hotmail.com'),
        (3,916150165,NULL,'carneirinho@hotmail.com'),
        (4,916150166,NULL,'eraumavez@gmail.com'),
        (5,912153165,916789541,'cocacola@gmail.com'),
        (6,916220165,NULL,'anabelinha@gmail.com'),
        (7,916152265,NULL,'silviameme@hotmail.com'),
        (8,916159865,NULL,'pepsiwinscoca@hotmail.com'),
        (9,933178987,NULL,'mentoscomcola@gmail.com'),
        (10,911567972,965816791,'mordidelasnostetos@outlook.com'),
        (11,928765915,NULL,'escacarpedra@yahoo.pt'),
        (12,969167845,NULL,'waifulord@outlook.pt'),
        (13,938752875,938456101,'mylitlepony@gmail.com'),
        (14,916125955,NULL,'lolisdragon@outlook.com'),
        (15,96789555,NULL,'specialkid@gmail.com'),
        (16,916199998,921560165,'origamis@hotmail.com'),
        (17,961876540,NULL,'moises@gmail.com'),
        (18,926650165,NULL,'blabla@hotmail.com'),
        (19,966650165,92671986,'originalityisover@outlook.com'),
        (20,922250165,NULL,'carryon@gmail.com');
        
INSERT INTO morada
	(idMorada,Rua,Localidade,codigoPostal)
    VALUES
		(1,'Rua dos peoes','Vila Verde','4730-490'),
        (2,'Rua das alminhas','Braga','4700-005'),
        (3,'Rua das prezes','Esposende','4740-007'),
        (4,'Travessa principal','Braga','4700-100'),
        (5,'Rua do Farto ','Braga','4700-426'),
        (6,'Rua da Sé ','Braga','4700-426'),
        (7,'Alameda da Fonte','Braga','4700-426'),
        (8,'Rua 1º de Maio','Espinho','4715-604'),
        (9,'Rua 25 de Abril','Espinho','4715-602'),
        (10,'Rua 8 de Dezembro','Espinho','4715-605'),
        (11,'Rua da Igreja','Padim da Graça','4700-658'),
        (12,'Rua da Fontinha da Igreja','Espinho','4700-670'),
        (13,'Rua do 1º Cabo Baltazar Abreu Simões','ADAÚFE','4710-586'),
        (14,'Travessa 1º de Maio','Adaúfe','4710-470'),
        (15,'Largo da Igreja Velha','Arentim','4705-014'),
        (16,'Rua Monte de Baixo','Arentim','4705-015'),
        (17,'Rua João Nascimento dos Santos','Gualtar','4710-078'),
        (18,'Rua Nova de Santa Cruz','Gualtar','4710-409'),
        (19,'Rua da Quinta do Capa','Gualtar','4710-133'),
        (20,'Rua do Bairro Novo','Gualtar','4710-043');
        
        
INSERT INTO Cliente 
	(idCliente,Nome, Sexo, Idade, idContacto, idMorada, IMC, Peso, Altura,NumeroContribuinte,LimitacoesFisicas )
	VALUES 
		(1,'João Paulo Silva Freitas','M', 20, 1, 1,23.2 , 80.7, 1.86, 384968373,null),
		(2,'Joana Amaral Canesi Gomes','F', 21 , 2, 2, 25.3, 75 , 1.75, 384757394,null),
		(3,'Luís Vitor Costa','M',32 ,3 , 3, 32.6, 94, 1.81,485963744 ,null),
		(4,'Pedro Simões Cardoso','M',21 , 4, 4, 20.7,79 , 1.87, 586734747,null),
		(5,'José Pedro Campos Silva ','M',19 ,5 , 5, 27, 87.2, 1.78, 485737263,null),
		(6,'Ana Salva Gatore Resende','F',18 ,6 , 6, 26.1, 69.2, 1.53, 457463635,'nanismo'),
		(7,'Silvia Domingues Santos','F',19 ,7 , 7, 28.2, 76, 1.49, 584736463,'nanismo'),
		(8,'Salvador Sabrosa Vidal','M',45 ,8 , 8, 26.1, 86.4, 1.70, 567362635,'reumatismo'),
		(9,'Nunu Uzumaki Tristão','M',23,9 , 9, 29.4, 84.5, 1.78, 506795847,'asma'),
		(10,'Rafael Penedo Feio ','M',20,10 , 10, 23.2, 86.3, 1.97, 458677947,'esclerose lateral'),
		(11,'Jonas Suares Sousa','M',22 ,11 , 11, 22.1, 76.3, 1.86, 346678645,null),
		(12,'Carlos Manuel Cartola','M', 22, 12, 12, 21.5, 73.2, 1.76, 968372621,null),
		(13,'Filipe Peso Pesado','M',22 , 13, 13, 31.5, 75.4, 1.85, 485769485,null),
		(14,'Hugo Pena pesada','M',21 , 14, 14, 36.4, 83.6, 1.89, 485768473,null),
		(15,'Jacito Leite Portugal','M',20 , 15, 15, 25.1, 79.9, 1.71,485977373 ,null),
		(16,'Parvalhoti Pampam Pam','M',38 , 16, 16, 26.9, 82.9, 1.78, 495686743,'asma'),
		(17,'Salvio Salvio Salvio','M',52 , 17, 17, 23.3, 74.7, 1.86, 384759674,null),
		(18,'Manuel Machado Costa','M', 17, 18, 18, 34.1, 99.5, 1.75, 594837455,null),
		(19,'Sousa Silva Sozinho','M',20 , 19, 19, 20.1, 69.8, 1.73, 978572734,null),
		(20,'Alvaro Campos','M',24 , 20, 20, 21.5, 71.2, 1.86, 485867545,null);
        
INSERT INTO contactofuncionario
	(idContacto,NrTelemovel,NrTelemovel2,Email)
	VALUES
		(1,967541987,NULL,'stanilipastarini@outlook.com'),
        (2,96999666,928855888,'marcopolo@hotmail.com'),
        (3,92765178,NULL,'fidelcastro@hotmail.com'),
        (4,96987995,NULL,'greenmario@gmail.com'),
        (5,93759276,NULL,'fastestmanalive@outlook.com'),
        (6,916666667,917666444,'joseph@gmail.com');
        
INSERT INTO moradafuncionario
	(idMorada,Rua,Localidade,codigoPostal)
    VALUES
		(1,'Rua de Pousada','Gualtar','4710-049'),
        (2,'Rua 1º de Maio','Pedralva','4715-473'),
        (3,'Escudeiros','Escudeiros','4705-473'),
        (4,'Travessa 13 de Maio','Vimieiro','4705-748'),
        (5,'Rua 5 de Julho','Celeirós','4705-730'),
        (6,'Rua 5 de Outubro','São Paio Merelim','4700-020');
        
        
INSERT INTO Funcionario
	(idFuncionario,Nome,Idade,Sexo,Cargo,idContacto,idMorada)
    VALUES
		(1,'Josef Stalini',45,'M','Empregado de Limpeza',1,1),
        (2,'Genghis Khan',34,'M','Personal Traineer',2,2),
        (3,'Fidel Castro',55,'M','Professor de Natação',3,3),
        (4,'Luigi Green Mario',45,'M','Empregado de Limpeza',4,4),
        (5,'Usain Bolt',45,'M','Personal Trainner',5,5),
        (6,'Joseph Goebbels',25,'M','Nutricionista',6,6);
        
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
        
INSERT INTO funcionarioservico
	(idServico,idFuncionario,DataInicio)
    VALUES
		(1,3,'2018/04/20'),
        (6,6,'2018/01/20'),
        (5,5,'2017/12/20');
        
INSERT INTO subscreve
	(idCliente,idServico,DataInicio)
    VALUES
		(1,1,'2018/04/20'),
        (1,7,'2018/04/20'),
        (1,9,'2018/04/20'),
        (2,2,'2018/05/21');
