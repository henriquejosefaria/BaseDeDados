/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import java.util.ArrayList;
import org.bson.Document;

/**
 *
 * @author Ryzon
 */

/**
 *
 * @author Filipe Universidade
 */
public class Funcionario {
   private ArrayList<Servico> servicos = new ArrayList<>();
   private Integer id;
   private String nome;
   private Document doc;
   
public Funcionario(Integer id,String nome){
    this.id = id;
    this.nome = nome;
    }
public Integer getId(){
    return id;
}

public void addServico(Servico servico){
    servicos.add(servico);
}
public Document createDoc(){
                Document doc = new Document("id", id)
                .append("nome", nome);
   
 BasicDBList dBlist = new BasicDBList();
 for(Servico servico : servicos){
    dBlist.add(new BasicDBObject("name", servico.getNome()).append("Data", servico.getData()));
 }              
 doc.put("servicos", dBlist);
return doc;         
}

}
