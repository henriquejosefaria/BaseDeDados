use Ginasio;


INSERT INTO Fatura (idFatura,ContribuinteGinasio ,Data,Descricao,Valor,idCliente,Desconto )
 VALUES (1,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,1,30),
                (2,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,2,5),
                (3,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Ginasio, Mensal, PersonalTrainer',120,3,20),
                (4,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,4,30),
                (5,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Sauna, ida única',33,5,10),
                (6,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Nutrição, 2x',80,6,15),
                (7,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer',120,7,23.20),
                (8,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer',120,8,23.20),
                (9,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal, PersonalTrainer & Nutrição, ida única',150,9,20),
                (10,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, 2x',75,10,10),
                (11,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,11,5),
                (12,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal',55,12,15),
                (13,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal & Nutrição, ida única',55,13,5),
                (14,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',130,14,30),
                (15,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,15,5),
                (16,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,16,5),
                (17,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio,Passe Diário & Sauna, Passe Diário',6,17,0),
                (18,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio, Mensal ',25,18,5),
                (19,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação, Mensal & Ginásio, Mensal, PersonalTrainer',150,19,30),
                (20,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Ginásio Mensal',25,20,5);


 -- // Maneira de apagar tabela toda// --
-- DELETE FROM Fatura WHERE idFatura != 387
