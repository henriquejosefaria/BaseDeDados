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
   private String data;
   private String sexo;
   private String cargo;
   private Morada morada;
   private Contacto contacto;
   private Document doc;
   private String uptoDate;

    public Funcionario(Integer id, String nome, String data, String sexo, String cargo, Morada morada, Contacto contacto, String uptoDate) {
        this.id = id;
        this.nome = nome;
        this.data = data;
        this.sexo = sexo;
        this.cargo = cargo;
        this.morada = morada;
        this.contacto = contacto;
        this.uptoDate = uptoDate;
    }

    public ArrayList<Servico> getServicos() {
        return servicos;
    }

    public String getNome() {
        return nome;
    }

    public String getData() {
        return data;
    }

    public String getSexo() {
        return sexo;
    }

    public String getCargo() {
        return cargo;
    }

    public Morada getMorada() {
        return morada;
    }

    public Contacto getContacto() {
        return contacto;
    }

    public Document getDoc() {
        return doc;
    }

   
public Integer getId(){
    return id;
}

public String getUptoDate(){
    return uptoDate;
}

public void addServico(Servico servico){
    servicos.add(servico);
}

public Document createDoc(){
                Document doc = new Document("id", id)
                .append("nome", nome)
                .append("data",data)
                .append("sexo",sexo)
                .append("cargo",cargo)
                .append("morada",morada.createDoc())
                .append("contacto",contacto.createDoc());
   
 BasicDBList dBlist = new BasicDBList();
 for(Servico servico : servicos){
    dBlist.add(new BasicDBObject("id",servico.getId()).append("nome", servico.getNome()).append("Data", servico.getData()).append("estado", servico.getEstado()));
 }              
 doc.put("servicos", dBlist);
return doc;         
}

}
