use GinasioMiguel;

-- Musculação -> 1
-- Natação -> 2
-- Nutrição -> 3

INSERT INTO FuncionarioServico(idServico,idFuncionario,DataInicio) 
    VALUES(1,2,STR_TO_DATE( "30/04/2018", "%d/%m/%Y" )),
				  (1,5,STR_TO_DATE( "30/04/2018", "%d/%m/%Y" )),
				  (2,3,STR_TO_DATE( "30/04/2018", "%d/%m/%Y" )),
                  (3,6,STR_TO_DATE( "30/04/2018", "%d/%m/%Y" ));
        