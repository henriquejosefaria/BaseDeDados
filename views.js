// VIEWS

//serviços subscritos pelos clientes

db.createView("TodasSubscricoesClientes","cliente",[{$project: {_id:0,id:1,nome:1,"servicos.nome":1,"servicos.data":1}}]);
//db.TodasSubscricoesClientes.find().pretty()


//viewClientes

db.createView("ViewCliente","cliente",[{$project: {_id:0,id:1,nome:1,sexo:1,dataNascimento:1,imc:1,peso:1,altura:1,contribuinte:1,limitacao:1,morada:1,contacto:1,exercicios:1,servicos:1,faturas:1}}]);

//db.ViewCliente.find().pretty()




//viewFuncionarios fazer sort (id)

db.createView("ViewFuncionarios","funcionario",[{$project: {_id:0,id:1,nome:1,data:1,sexo:1,cargo:1,contacto:1,morada:1}}]);

//db.ViewFuncionarios.find().pretty()


//view exercicios/Cliente


db.createView("ExerciciosPorCliente","cliente",[{$project: {_id:0,id:1,nome:1,"exercicios.descricao":1,"exercicios.sets":1,"exercicios.reps":1}}]);

//db.ExerciciosPorCliente.find().pretty()


//ViewFaturas

db.createView("ViewFaturas","fatura",[{$project: {_id:0,id:1,contribuinteGinasio:1,data:1,descricao:1,valor:1,desconto:1,nomeCliente:1,nomeRececionista:1}}]);

//db.ViewFaturas.find().pretty()



//View ServicosFuncionario


db.createView("ServicosFuncionario","funcionario",[{$project:{_id:0,nome:1,cargo:1,"servicos.nome":1}}]);
//db.ServicosFuncionario.find().pretty()

