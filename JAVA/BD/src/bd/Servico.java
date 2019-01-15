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
    private double preco;
    private String data;
    private String estado;
    private String uptoDate;
    
    public Servico(Integer id,String nome,double preco,String data,String estado,String uptoDate){
        this.id = id;
        this.nome = nome;
        this.estado = estado;
        this.data = data;
        this.preco = preco;
        this.uptoDate = uptoDate;
    }
    
    public Servico(Servico o){
    }
    public Integer getId(){
        return id;
    }
    public String getEstado(){
        return estado;
    }
    public String getUptoDate(){
        return uptoDate;
    }
    public String getNome(){
            return nome;
    }
    public String getData(){
        return data;
    }
    public double getPreco(){
        return preco;
    }
    public Servico clone(){
        return new Servico(this);
    }
    public Document createDoc(){
        Document doc = new Document("id", id)
                .append("nome",nome)
                .append("preco",preco)
                .append("estado",estado);
        return doc;
    }
}
