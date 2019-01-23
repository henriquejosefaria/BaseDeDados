/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Aggregates.limit;
import java.awt.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bson.Document;

/**
 *
 * @author Ryzon
 */


public class MigrationManager {
    
    private Map<Integer,Funcionario> funcionarios;
    private Map<Integer,Servico> servicos;
    private Map<Integer,Cliente> clientes;
    private Map<Integer,Exercicio> exercicios;
    private Map<Integer,Fatura> faturas;
    private Map<Integer,Contacto> clienteContactos;
    private Map<Integer,Contacto> funcContactos;
    private Map<Integer,Morada> clienteMoradas;
    private Map<Integer,Morada> funcMoradas;
    private int lastNoSQLFaturaId;
    private int lastNoSQLFuncionarioId;
    private int lastNoSQLServicoId;
    
    public MigrationManager() throws SQLException{
        funcionarios = new HashMap<>();
        servicos = new HashMap<>();
        clientes = new HashMap<>();
        exercicios = new HashMap<>();
        faturas = new HashMap<>();
        clienteContactos = new HashMap<>();
        funcContactos = new HashMap<>();
        clienteMoradas = new HashMap<>();
        funcMoradas = new HashMap<>();
        lastNoSQLFaturaId = 0;
        lastNoSQLFuncionarioId = 0;
        lastNoSQLServicoId = 0;
        
        String url = "jdbc:mysql://localhost:3306/ginasio?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String username = "Jafar Strogonof";
        String password = "Jafar";
      
        System.out.println("Connecting to NoSQL Database...");
        Logger mongoLogger = Logger.getLogger( "org.mongodb.driver" );
        mongoLogger.setLevel(Level.SEVERE);
        MongoClientURI connectionString = new MongoClientURI("mongodb://localhost:27017");
        MongoClient mongoClient = new MongoClient(connectionString);
        
        MongoDatabase database = mongoClient.getDatabase("ginasio");
        MongoCollection<Document> clientecol = database.getCollection("cliente");
        clientecol.drop();
        MongoCollection<Document> funcionariocol = database.getCollection("funcionario");
        MongoCollection<Document> servicocol = database.getCollection("servico");
        MongoCollection<Document> faturacol = database.getCollection("fatura");
        
        System.out.println("NoSQL Database connected!"); 

        System.out.println("Connecting to MySQL Database...");
        String query1 = "SELECT * FROM funcionario";
        String query2 = "SELECT * FROM servico";
        String query3 = "SELECT * FROM prestaservico";//n altera
        String query4 = "SELECT * FROM cliente";
        String query5 = "SELECT * FROM fatura;";
        String query6 = "SELECT * FROM subscreve";//n altera
        String query7 = "SELECT * FROM exercicio";//n altera
        String query8 = "SELECT * FROM planoexercicios";
        String query9 = "SELECT * FROM morada";
        String query10 = "SELECT * FROM moradafuncionario";
        String query11 = "SELECT * FROM contacto";
        String query12 = "SELECT * FROM contactofuncionario";
        
        


        try (Connection con = DriverManager.getConnection(url, username, password)){
            System.out.println("MySQL Database connected!");
            
                    //get NOSQL last ID
            BasicDBObject  sortfat = new BasicDBObject();
            sortfat.put("id",-1);
            MongoCursor<Document> cursorfat = faturacol.find().sort(sortfat).limit(1).iterator();
            while(cursorfat.hasNext()){
                Document ole = cursorfat.next();
                lastNoSQLFaturaId = (Integer)ole.get("id");
            }
            System.out.println("Last Fatura ID loaded from NOsql DB: " + lastNoSQLFaturaId);
            
            BasicDBObject  sortfunc = new BasicDBObject();
            sortfunc.put("id",-1);
            MongoCursor<Document> cursorfunc = funcionariocol.find().sort(sortfunc).limit(1).iterator();
            while(cursorfunc.hasNext()){
                Document ole = cursorfunc.next();
                lastNoSQLFuncionarioId = (Integer)ole.get("id");
            }
            System.out.println("Last Funcionario ID loaded from NOsql DB: " + lastNoSQLFuncionarioId);
            
            BasicDBObject  sortserv = new BasicDBObject();
            sortserv.put("id",-1);
            MongoCursor<Document> cursorserv = servicocol.find().sort(sortserv).limit(1).iterator();
            while(cursorserv.hasNext()){
                Document ole = cursorserv.next();
                lastNoSQLServicoId = (Integer)ole.get("id");
            }
            System.out.println("Last Servico ID loaded from NOsql DB: " + lastNoSQLServicoId);
            
            ///////
            PreparedStatement pstmoradac = con.prepareStatement(query9);
            ResultSet rsmoradac = pstmoradac.executeQuery();        
            while (rsmoradac.next()) {
                Morada morada = new Morada(rsmoradac.getInt(1),rsmoradac.getString(2),rsmoradac.getString(3),rsmoradac.getString(4));
                clienteMoradas.put(morada.getId(),morada);
            }
            System.out.println("Moradas do cliente loaded from MySQL DB: " + clienteMoradas.size());
            
            PreparedStatement pstmoradaf = con.prepareStatement(query10);
            ResultSet rsmoradaf = pstmoradaf.executeQuery();        
            while (rsmoradaf.next()) {
                Morada morada = new Morada(rsmoradaf.getInt(1),rsmoradaf.getString(2),rsmoradaf.getString(3),rsmoradaf.getString(4));
                funcMoradas.put(morada.getId(),morada);
            }
            System.out.println("Moradas do Funcionario loaded from MySQL DB: " + funcMoradas.size());
            
            PreparedStatement pstcontatoc = con.prepareStatement(query11);
            ResultSet rscontactoc = pstcontatoc.executeQuery();        
            while (rscontactoc.next()) {
                Contacto contacto = new Contacto(rscontactoc.getInt(1),rscontactoc.getInt(2),rscontactoc.getInt(3),rscontactoc.getString(4));
                clienteContactos.put(contacto.getId(),contacto);
            }
            System.out.println("Contactos do cliente  loaded from MySQL DB: " + clienteContactos.size());
            
            
            PreparedStatement pstContactof = con.prepareStatement(query12);
            ResultSet rsContactof = pstContactof.executeQuery();        
            while (rsContactof.next()) {
                Contacto contacto = new Contacto(rsContactof.getInt(1),rsContactof.getInt(2),rsContactof.getInt(3),rsContactof.getString(4));
                funcContactos.put(contacto.getId(),contacto);
            }
            System.out.println("Contactos do Cliente loaded from MySQL DB: " + funcContactos.size());
            
            
            PreparedStatement pstservico = con.prepareStatement(query2);
            ResultSet rsservico = pstservico.executeQuery();        
            while (rsservico.next()) {
                Servico servico = new Servico(rsservico.getInt(1),rsservico.getString(2),rsservico.getDouble(3),null,rsservico.getString(4),rsservico.getString(5));
                servicos.put(servico.getId(),servico);
            }
            System.out.println("Servicos loaded from MySQL DB: " + servicos.size());
            
            
                        PreparedStatement pstfuncionario = con.prepareStatement(query1);
            ResultSet rsfuncionario = pstfuncionario.executeQuery();
            while (rsfuncionario.next()) {
        
                Funcionario func = new Funcionario(rsfuncionario.getInt(1),rsfuncionario.getString(2),rsfuncionario.getString(3),rsfuncionario.getString(4),rsfuncionario.getString(5),funcMoradas.get(rsfuncionario.getInt(7)),funcContactos.get(rsfuncionario.getInt(6)),rsfuncionario.getString(8));
                funcionarios.put(rsfuncionario.getInt(1),func);
            }
            System.out.println("Funcionarios loaded from MySQL DB: " + funcionarios.size());
            
            PreparedStatement pstPservico = con.prepareStatement(query3);
            ResultSet rsPServico = pstPservico.executeQuery();     
            while (rsPServico.next()) {
                Servico pservico = new Servico(rsPServico.getInt(1),servicos.get(rsPServico.getInt(1)).getNome(),servicos.get(rsPServico.getInt(1)).getPreco(),rsPServico.getString(3),servicos.get(rsPServico.getInt(1)).getEstado(),servicos.get(rsPServico.getInt(1)).getUptoDate());
                Funcionario pfunc = funcionarios.get(rsPServico.getInt(2));
                pfunc.addServico(pservico);
            }

            PreparedStatement pstCliente = con.prepareStatement(query4);
            ResultSet rsCliente = pstCliente.executeQuery();     
            while (rsCliente.next()) {
                Cliente cliente = new Cliente(rsCliente.getInt(1),rsCliente.getString(2),rsCliente.getString(3),rsCliente.getString(4),rsCliente.getDouble(7),rsCliente.getDouble(8),rsCliente.getDouble(9),
                rsCliente.getInt(10),rsCliente.getString(11),rsCliente.getString(12));
                cliente.setContacto(clienteContactos.get(rsCliente.getInt(5)));
                cliente.setMorada(clienteMoradas.get(rsCliente.getInt(6)));
                clientes.put(cliente.getId(),cliente);
            }
            System.out.println("Clients loaded from MySQL DB: " + clientes.size());
            
            PreparedStatement pstSubscreve = con.prepareStatement(query6);
            ResultSet rsSubscreve = pstSubscreve.executeQuery();     
            while (rsSubscreve.next()) {
                Servico pservico = new Servico(rsSubscreve.getInt(2),servicos.get(rsSubscreve.getInt(2)).getNome(),servicos.get(rsSubscreve.getInt(2)).getPreco(),rsSubscreve.getString(3),servicos.get(rsSubscreve.getInt(2)).getEstado(),servicos.get(rsSubscreve.getInt(2)).getUptoDate());
                Cliente pcliente = clientes.get(rsSubscreve.getInt(1));
                pcliente.addServico(pservico);
            }
            
            PreparedStatement pstExercicio = con.prepareStatement(query7);
            ResultSet rsExercicio = pstExercicio.executeQuery();     
            while (rsExercicio.next()) {
                Exercicio exercicio = new Exercicio(rsExercicio.getInt(1),rsExercicio.getString(2),rsExercicio.getString(3),null,null,null);
                exercicios.put(rsExercicio.getInt(1), exercicio);
            }
            System.out.println("Exercicios loaded from MySQL DB: " + exercicios.size());

            PreparedStatement pstPExercicio = con.prepareStatement(query8);
            ResultSet rsPExercicio = pstPExercicio.executeQuery();     
            while (rsPExercicio.next()) {
                Exercicio exercicio = new Exercicio(rsPExercicio.getInt(2),exercicios.get(rsPExercicio.getInt(2)).getDescricao(),exercicios.get(rsPExercicio.getInt(2)).getTipo(),rsPExercicio.getInt(3),rsPExercicio.getInt(4),rsPExercicio.getString(5));
                clientes.get(rsPExercicio.getInt(1)).addExercicio(exercicio);
            }
            
           
            PreparedStatement pstFatura = con.prepareStatement(query5);
            ResultSet rsFatura = pstFatura.executeQuery();    
            while (rsFatura.next()) {
                   
                Fatura fat = new Fatura(rsFatura.getInt(1),rsFatura.getInt(2),rsFatura.getString(3),
                rsFatura.getString(4),rsFatura.getDouble(5),rsFatura.getDouble(7),rsFatura.getInt(8),
                clientes.get(rsFatura.getInt(6)).getNome(),funcionarios.get(rsFatura.getInt(8)).getNome(), clientes.get(rsFatura.getInt(6)).getNcontribuinte(),rsFatura.getString(9),rsFatura.getString(10));
                Cliente client = clientes.get(rsFatura.getInt(6));
                client.addFatura(fat);
                faturas.put(rsFatura.getInt(1),fat);
            }
            System.out.println("Faturas loaded from MySQL DB: " + faturas.size());
            int k = 0;
            int i = 0;
            for(Cliente c : clientes.values()){
                if(c.getId()<=lastNoSQLFuncionarioId){
                     if(c.getUpToDate().equals("N")){
                         BasicDBList servs = new BasicDBList();
        for(Servico ser : c.getServicos()){
            servs.add(new BasicDBObject("id", ser.getId())
                .append("nome",ser.getNome())
                .append("data",ser.getData())
                .append("preco",ser.getPreco()));
                     }
        BasicDBList exercs = new BasicDBList();
        for(Exercicio ex : c.getExercicios()){
            exercs.add(new BasicDBObject("id",ex.getId())
                    .append("descricao", ex.getDescricao())
                    .append("tipo",ex.getTipo())
                    .append("sets", ex.getnSeries())
                    .append("reps", ex.getnRepeticoes())
                    .append("estado",ex.getEstado()));
        }   
        BasicDBList fats = new BasicDBList();
        for(Fatura fat : c.getFaturas()){
            fats.add(new BasicDBObject("id", fat.getId())
                    .append("contribuinteGinasio", fat.getContribuinteGinasio())
                    .append("data", fat.getData())
                    .append("descricao",fat.getDescricao())
                    .append("valor",fat.getValor())
                    .append("desconto",fat.getDesconto())
                    .append("funcionarioId",fat.getFuncionarioId())
                    .append("invalida",fat.getEstado()));
        }         
        
                         
                        BasicDBObject newFunc = new BasicDBObject().append("$set", new  BasicDBObject("imc", c.getImc()).append("peso",c.getPeso()).append("altura",c.getAltura()).append("servicos",servs).append("exercicios",exercs).append("faturas",fats));
                        funcionariocol.updateOne(new BasicDBObject().append("id", c.getId()), newFunc);
                        k++;
                     }}
                
                else{
                Document doc = c.createDoc();
                clientecol.insertOne(doc);
                i++;
                }
            }
            System.out.println(i +" Clientes inserted on NoSQL DB");
            i=0;
            

            k = 0;
            for(Fatura fat : faturas.values()){
                if(fat.getId()<=lastNoSQLFaturaId){
                    if(fat.getUptoDate().equals("N")){
                        BasicDBObject cmd = new BasicDBObject().append("$set", new  BasicDBObject("estado", fat.getEstado()));
                        faturacol.updateOne(new BasicDBObject().append("id", fat.getId()), cmd);
                        k++;
                    }}
                    else{
                Document doc = fat.createDoc();
                faturacol.insertOne(doc);
                i++;
                    }
            }
            System.out.println(k +" Faturas updated on NoSQL DB");
            System.out.println(i +" Faturas inserted on NoSQL DB");
            
            k = 0;
            i=0;
            for(Funcionario f : funcionarios.values()){
                if(f.getId()<=lastNoSQLFuncionarioId){
                     if(f.getUptoDate().equals("N")){
                         BasicDBObject contacto = new  BasicDBObject("tele1",f.getContacto().getTele1())
                                 .append("tele2",f.getContacto().getTele2())
                                 .append("email",f.getContacto().getEmail());
                         BasicDBObject morada = new  BasicDBObject("rua",f.getMorada().getRua())
                                 .append("localidade",f.getMorada().getLocalidade())
                                 .append("codigoPostal",f.getMorada().getCodigoPostal());
                          BasicDBList dBlist = new BasicDBList();
                            for(Servico servico : f.getServicos()){
                            dBlist.add(new BasicDBObject("id",servico.getId()).append("nome", servico.getNome()).append("Data", servico.getData()).append("estado", servico.getEstado()));
                          }  
                         
                        BasicDBObject newFunc = new BasicDBObject().append("$set", new  BasicDBObject("sexo", f.getSexo()).append("cargo",f.getCargo()).append("contacto",contacto).append("morada",morada).append("servicos",dBlist));
                        funcionariocol.updateOne(new BasicDBObject().append("id", f.getId()), newFunc);
                        k++;
                     }}
                
                else{
                    Document doc = f.createDoc();
                    funcionariocol.insertOne(doc);
                    i++;
                }
            }
            System.out.println(k +" Funcionarios updated on NoSQL DB");
            System.out.println(i +" Funcionarios inserted on NoSQL DB");
            
            i=0;
            k = 0;
            for(Servico s : servicos.values()){
                 if(s.getId()<=lastNoSQLServicoId){
                    if(s.getUptoDate().equals("N")){
                       System.out.println( s.getEstado()+"kkkk");
                        BasicDBObject newServico = new BasicDBObject().append("$set", new  BasicDBObject("estado",s.getEstado()));
                        servicocol.updateOne(new BasicDBObject().append("id", s.getId()), newServico);
                        k++;
                    }}
                else{
                    Document doc = s.createDoc();
                    servicocol.insertOne(doc);
                    i++;
                }
            }
            System.out.println(k+" Servicos updated on NoSQL DB");
            System.out.println(i+" Servicos inserted on NoSQL DB");
            
            String query20 = "UPDATE cliente SET UptoDate = 'R' where UptoDate = 'N';";
            PreparedStatement pstc = con.prepareStatement(query20);
            pstc.execute();
            
                        String query21 = "UPDATE servico SET UptoDate = 'R' where UptoDate = 'N';";
            PreparedStatement psts = con.prepareStatement(query21);
            psts.execute();
            
            
                        String query23 = "UPDATE fatura SET UptoDate = 'R' where UptoDate = 'N';";
            PreparedStatement pstfa = con.prepareStatement(query23);
            pstfa.execute();
            
                        String query25 = "UPDATE funcionario SET UptoDate = 'R' where UptoDate = 'N';";
            PreparedStatement pstf = con.prepareStatement(query25);
            pstf.execute();

        }catch (SQLException e) {
            throw new IllegalStateException("Cannot connect to the MySQL database!", e);
        }
    
    }
    
    
}
