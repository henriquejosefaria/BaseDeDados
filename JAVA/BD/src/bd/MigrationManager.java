/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    
    public MigrationManager() throws SQLException{
        funcionarios = new HashMap<>();
        servicos = new HashMap<>();
        clientes = new HashMap<>();
        
        String url = "jdbc:mysql://localhost:3307/ginasio?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
        String username = "Jafar Strogonof";
        String password = "Jafar";
        
        System.out.println("Connecting to NoSQL Database...");
        Logger mongoLogger = Logger.getLogger( "org.mongodb.driver" );
        mongoLogger.setLevel(Level.SEVERE);
        MongoClientURI connectionString = new MongoClientURI("mongodb://localhost:27017");
        MongoClient mongoClient = new MongoClient(connectionString);
        
        MongoDatabase database = mongoClient.getDatabase("ginasio");
        MongoCollection<Document> funcionariocol = database.getCollection("funcionario");
        MongoCollection<Document> servicocol = database.getCollection("servico");
        System.out.println("NoSQL Database connected!"); 

        System.out.println("Connecting to MySQL Database...");
        String query1 = "SELECT * FROM funcionario";
        String query2 = "SELECT * FROM servico" ;
        String query3 = "SELECT * FROM prestaservico" ;

        try (Connection con = DriverManager.getConnection(url, username, password)){
            PreparedStatement pstfuncionario = con.prepareStatement(query1);
            ResultSet rsfuncionario = pstfuncionario.executeQuery();
            
            System.out.println("MySQL Database connected!");     
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
            
            int i = 0;
            for(Funcionario f : funcionarios.values()){
                Document doc = f.createDoc();
                funcionariocol.insertOne(doc);
                i++;
            }
            System.out.println(i +" Funcionarios inserted on NoSQL DB");
            
            i=0;
            for(Servico s : servicos.values()){
                Document doc = s.createDoc();
                servicocol.insertOne(doc);
                i++;
            }
            System.out.println(i+" Servicos inserted on NoSQL DB");
            
        }catch (SQLException e) {
            throw new IllegalStateException("Cannot connect to the MySQL database!", e);
        }
    
    }
    
}
