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
    private int lastNoSQLFaturaId;
 
    private int lastSQLFaturaId;
    
    public MigrationManager() throws SQLException{
        funcionarios = new HashMap<>();
        servicos = new HashMap<>();
        clientes = new HashMap<>();
        exercicios = new HashMap<>();
        faturas = new HashMap<>();
        lastNoSQLFaturaId = 0;
        lastSQLFaturaId = 0;
        
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
        String query9 = "Select MAX(idCliente) as lastID from cliente;";
        


        try (Connection con = DriverManager.getConnection(url, username, password)){
            System.out.println("MySQL Database connected!");
            
                    //get NOSQL last ID
            BasicDBObject  sort = new BasicDBObject();
            sort.put("id",-1);
            MongoCursor<Document> cursor = faturacol.find().sort(sort).limit(1).iterator();
            while(cursor.hasNext()){
                Document ole = cursor.next();
                lastNoSQLFaturaId = (Integer)ole.get("id");
            }
            System.out.println("Last Fatura ID loaded from NOsql DB: " + lastNoSQLFaturaId);
            
            PreparedStatement pstLastFaturaID = con.prepareStatement(query9);
            ResultSet rsLastFaturaID = pstLastFaturaID.executeQuery();
            if (rsLastFaturaID.next()) {
                lastSQLFaturaId = rsLastFaturaID.getInt(1);
            }
            System.out.println("Last Fatura ID loaded from MySQL DB: " + lastSQLFaturaId);
            
            PreparedStatement pstfuncionario = con.prepareStatement(query1);
            ResultSet rsfuncionario = pstfuncionario.executeQuery();
            while (rsfuncionario.next()) {
        
                Funcionario func = new Funcionario(rsfuncionario.getInt(1),rsfuncionario.getString(2));
                funcionarios.put(rsfuncionario.getInt(1),func);
            }
            System.out.println("Funcionarios loaded from MySQL DB: " + funcionarios.size());
            
            PreparedStatement pstservico = con.prepareStatement(query2);
            ResultSet rsservico = pstservico.executeQuery();        
            while (rsservico.next()) {
                Servico servico = new Servico(rsservico.getInt(1),rsservico.getString(2),null);
                servicos.put(servico.getId(),servico);
            }
            System.out.println("Servicos loaded from MySQL DB: " + servicos.size());
            
            PreparedStatement pstPservico = con.prepareStatement(query3);
            ResultSet rsPServico = pstPservico.executeQuery();     
            while (rsPServico.next()) {
                Servico pservico = new Servico(rsPServico.getInt(1),servicos.get(rsPServico.getInt(1)).getNome(),rsPServico.getString(3));
                Funcionario pfunc = funcionarios.get(rsPServico.getInt(2));
                pfunc.addServico(pservico);
            }

            PreparedStatement pstCliente = con.prepareStatement(query4);
            ResultSet rsCliente = pstCliente.executeQuery();     
            while (rsCliente.next()) {
                Cliente cliente = new Cliente(rsCliente.getInt(1));
                clientes.put(cliente.getId(),cliente);
            }
            System.out.println("Clients loaded from MySQL DB: " + clientes.size());
            
            PreparedStatement pstSubscreve = con.prepareStatement(query6);
            ResultSet rsSubscreve = pstSubscreve.executeQuery();     
            while (rsSubscreve.next()) {
                Servico pservico = new Servico(rsSubscreve.getInt(2),servicos.get(rsSubscreve.getInt(2)).getNome(),null);
                Cliente pcliente = clientes.get(rsSubscreve.getInt(1));
                pcliente.addServico(pservico);
            }
            
            PreparedStatement pstExercicio = con.prepareStatement(query7);
            ResultSet rsExercicio = pstExercicio.executeQuery();     
            while (rsExercicio.next()) {
                Exercicio exercicio = new Exercicio(rsExercicio.getInt(1),rsExercicio.getString(2),null,null);
                exercicios.put(rsExercicio.getInt(1), exercicio);
            }
            System.out.println("Exercicios loaded from MySQL DB: " + exercicios.size());

            PreparedStatement pstPExercicio = con.prepareStatement(query8);
            ResultSet rsPExercicio = pstPExercicio.executeQuery();     
            while (rsPExercicio.next()) {
                Exercicio exercicio = new Exercicio(rsPExercicio.getInt(2),exercicios.get(rsPExercicio.getInt(2)).getDescricao(),rsPExercicio.getInt(3),rsPExercicio.getInt(4));
                clientes.get(rsPExercicio.getInt(1)).addExercicio(exercicio);
            }
            
           
            PreparedStatement pstFatura = con.prepareStatement(query5);
            ResultSet rsFatura = pstFatura.executeQuery();    
            int k = 0;
            while (rsFatura.next()) {
                   
                Fatura fat = new Fatura(rsFatura.getInt(1),rsFatura.getInt(2),rsFatura.getString(3),
                rsFatura.getString(4),rsFatura.getDouble(5),rsFatura.getDouble(7),rsFatura.getInt(8),
                    null);
                Cliente client = clientes.get(rsFatura.getInt(6));
                client.addFatura(fat);
                faturas.put(rsFatura.getInt(1),fat);
                k++;
            }
            System.out.println(k+"  lalalal");
            System.out.println("Faturas loaded from MySQL DB: " + faturas.size());
            
            int i = 0;
            for(Cliente c : clientes.values()){
                Document doc = c.createDoc();
                clientecol.insertOne(doc);
                i++;
            }
            
            i=0;
            
            
            
            for(Fatura fat : faturas.values()){
                if(fat.getId()<=lastNoSQLFaturaId){
                    if(fat.getUptoDate().equals("N")){
                        BasicDBObject cmd = new BasicDBObject().append("$set", new  BasicDBObject("estado", fat.getEstado()));
                        faturacol.updateOne(new BasicDBObject().append("id", fat.getId()), cmd);
                    }}
                    else{
                Document doc = fat.createDoc();
                faturacol.insertOne(doc);
                i++;
                    }
            }
            
            i=0;
            for(Funcionario f : funcionarios.values()){
                if(f.getId()<=lastNoSQLFuncionarioId){
                     if(f.getUptoDate().equals("N")){
                        BasicDBObject cmd = new BasicDBObject().append("$set", new  BasicDBObject("estado", fat.getEstado()).append());
                        faturacol.updateOne(new BasicDBObject().append("id", fat.getId()), cmd);
                     }}
                
                else{
                Document doc = f.createDoc();
                funcionariocol.insertOne(doc);
                i++;
                }
            }
            System.out.println(i +" Funcionarios inserted on NoSQL DB");
            
            i=0;
            for(Servico s : servicos.values()){
                Document doc = s.createDoc();
                servicocol.insertOne(doc);
                i++;
            }
            System.out.println(i+" Servicos inserted on NoSQL DB");
            
             BasicDBList dBlist = new BasicDBList();
    dBlist.add(new BasicDBObject("name", "Miguel é gay").append("Data", "LALALA"));
              
            
            Document testObject = new Document(); 
            BasicDBObject milestoneObject = new BasicDBObject();
            //testObject.put("suitename", "testsuite");
            //testObject.put("testname", "testcase");         
            BasicDBObject cmd = new BasicDBObject().append("$set", new  BasicDBObject("servicos", dBlist));
            funcionariocol.updateOne(new BasicDBObject().append("id", 2), cmd);
            
            
           
 
       // faturacol.save(new BasicDBObject("_id", 4).append("grades", grades));
 
        faturacol.updateOne( new BasicDBObject("id", 1).append("servico.grade", 85),
                           new BasicDBObject("$set", new BasicDBObject("grades.$.std", 6)) );
 
        System.out.println(faturacol.find(new BasicDBObject("_id", 4)));

        }catch (SQLException e) {
            throw new IllegalStateException("Cannot connect to the MySQL database!", e);
        }
    
    }
    public void updateFatura(){


    }
    
    
}
