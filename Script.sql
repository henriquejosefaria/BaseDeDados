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
	(NrTelemovel,NrTelemovel2,Email)
	VALUES
		(967541987,NULL,'stanilipastarini@outlook.com'),
        (96999666,928855888,'marcopolo@hotmail.com'),
        (92765178,NULL,'fidelcastro@hotmail.com'),
        (96987995,NULL,'greenmario@gmail.com'),
        (93759276,NULL,'fastestmanalive@outlook.com'),
        (916666667,917666444,'joseph@gmail.com');
        
INSERT INTO moradafuncionario
	(Rua,Localidade,codigoPostal)
    VALUES
		('Rua de Pousada','Gualtar','4710-049'),
        ('Rua 1º de Maio','Pedralva','4715-473'),
        ('Escudeiros','Escudeiros','4705-473'),
        ('Travessa 13 de Maio','Vimieiro','4705-748'),
        ('Rua 5 de Julho','Celeirós','4705-730'),
        ('Rua 5 de Outubro','São Paio Merelim','4700-020');
        
        
INSERT INTO Funcionario
	(Nome,Idade,Sexo,Cargo,idContacto,idMorada)
    VALUES
		(1,'Josef Stalini',45,'M','Empregado de Limpeza',1,1),
        (2,'Genghis Khan',34,'M','Personal Traineer',2,2),
        (3,'Fidel Castro',55,'M','Professor de Natação',3,3),
        (4,'Luigi Green Mario',45,'M','Empregado de Limpeza',4,4),
        (5,'Usain Bolt',45,'M','Personal Trainner',5,5),
        (6,'Joseph Goebbels',25,'M','Nutricionista',6,6);
        
INSERT INTO servico
	(Descricao,Preco)
    VALUES
		('Natação,Passe diario',5),
        ('Natação,Passe mensal',30),
        ('Ginasio,Passe diario sem acompanhamento',3),
		('Ginasio,Passe mensal sem acompanhamento',25),
        ('Ginasio, Passe mensal com PT',120),
        ('Nutrição,2x mês',50),
        ('Nutricão, ida única', 30),
        ('Sauna,Passe mensal',30),
        ('Sauna, Passe diario',3);
        
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
