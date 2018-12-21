/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import org.bson.Document;

/**
 *
 * @author Filipe Universidade
 */


public class Servico {
    private Integer id;
    private String nome;
    private String data;
    
    public Servico(Integer id,String nome,String data){
        this.id = id;
        this.nome = nome;
        this.data = data;
    }
    
    public Servico(Servico o){
    }
    public Integer getId(){
        return id;
    }
    public String getNome(){
            return nome;
    }
    public String getData(){
        return data;
    }
    public Servico clone(){
        return new Servico(this);
    }
    public Document createDoc(){
        Document doc = new Document("nome", nome);
        return doc;
    }
}
