USE GinasioMiguel;

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
       