package BD;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.sql.*;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bson.Document;

public class Base
{

public static void main(String[] args) throws ClassNotFoundException {
String url = "jdbc:mysql://localhost:3306/ginasio?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
String username = "Jafar Strogonof";
String password = "Jafar";

 MongoClientURI connectionString = new MongoClientURI("mongodb://localhost:27017");
 MongoClient mongoClient = new MongoClient(connectionString);
 MongoDatabase database = mongoClient.getDatabase("Desktop");
        for (String name : database.listCollectionNames()) {

            System.out.println(name);
        }
 MongoCollection<Document> collection = database.getCollection("Ginasio");
 

System.out.println("Connecting database...");
    String query = "SELECT * FROM cliente";
int id = 0;
String nome = null;
String sexo= null;
int idade = 0;
int idContacto = 0;
int idMorada= 0;
double imc= 0;
double peso= 0;
double altura= 0;
int contribuinte= 0;
String limitacoes= null;
try (Connection con = DriverManager.getConnection(url, username, password);
        PreparedStatement pst = con.prepareStatement(query);
        ResultSet rs = pst.executeQuery()){
    System.out.println("Database connected!");
    while (rs.next()) {
        
     id = (rs.getInt(1));
     nome = rs.getString(2);
     sexo = rs.getString(3);
     idade = rs.getInt(4);
     idContacto = rs.getInt(5);
     idMorada =  rs.getInt(6);
     imc = rs.getDouble(7);
     peso = rs.getDouble(8);
     altura = rs.getDouble(9);
     contribuinte = rs.getInt(10);
     limitacoes = rs.getString(11);
      
      Document doc = new Document("id", id)
                .append("name", nome)
                .append("sexo", sexo)
                .append("idade", idade)
                .append("idContacto", idContacto)
                .append("idMorada", idMorada)
                .append("imc", imc)
                .append("peso", peso)
                .append("altura", altura)
                .append("contribuinte", contribuinte)
                .append("limitacoes", limitacoes);
 collection.insertOne(doc);
 System.out.println("inserted");
}
} catch (SQLException e) {
    throw new IllegalStateException("Cannot connect the database!", e);
}



}
}
