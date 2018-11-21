use GinasioMiguel;

INSERT INTO GinasioMiguel.Fatura (idFatura,ContribuinteGinasio ,Data,Descricao,Valor,idCliente,Desconto )
 VALUES (1,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação & Musculação',150,1,23.5),
                (2,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,2,23.5),
                (3,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação & Musculação',150,3,23.5),
                (4,111111111,STR_TO_DATE( "5/01/2018",  "%d/%m/%Y" ),'Natação & Musculação',150,4,23.5),
                (5,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação & Nutrição',110,5,23.5),
                (6,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Natação & Nutrição',110,6,23.5),
                (7,111111111,STR_TO_DATE( "6/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,7,23.5),
                (8,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,8,23.5),
                (9,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,9,23.5),
                (10,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,10,23.5),
                (11,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,11,23.5),
                (12,111111111,STR_TO_DATE( "7/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,12,23.5),
                (13,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação & Nutrição',110,13,23.5),
                (14,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação & Musculação',150,14,23.5),
                (15,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação & Musculação',150,15,23.5),
                (16,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação & Musculação',150,16,23.5),
                (17,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação & Nutrição',110,17,23.5),
                (18,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Natação & Musculação',150,18,23.5),
                (19,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,19,23.5),
                (20,111111111,STR_TO_DATE( "8/01/2018",  "%d/%m/%Y" ),'Nutrição & Musculação',120,20,23.5);
                
SELECT * FROM Fatura;

 -- // Maneira de apagar tabela toda// --
-- DELETE FROM Fatura WHERE idFatura != 387
