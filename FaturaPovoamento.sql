use Ginasio;


INSERT INTO Fatura (idFatura,ContribuinteGinasio ,Data,Descricao,Valor,idFuncionario,idCliente,Desconto )
 VALUES (1,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,7,1,30),
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
