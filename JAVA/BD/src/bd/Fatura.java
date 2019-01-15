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
public class Fatura {
    private Integer id;
    private Integer contribuinteGinasio;
    private String data;
    private String descricao;
    private double valor;
    private double desconto;
    private Integer funcionarioId;
    private String estado;
    private String uptoDate;
    
    public Fatura(Integer id, Integer contribuinteGinasio, String data, String descricao, double valor, double desconto,
            Integer funcionarioId, String invalida,String uptoDate){
        this.id = id;
        this.contribuinteGinasio = contribuinteGinasio;
        this.data = data;
        this.descricao = descricao;
        this.valor = valor;
        this.desconto = desconto;
        this.funcionarioId = funcionarioId;
        this.estado = invalida;
        this.uptoDate = uptoDate;
    }
    public Document createDoc(){
        Document doc = new Document("id", id)
                .append("contribuinteGinasio", contribuinteGinasio)
                .append("data",data)
                .append("descricao", descricao)
                .append("valor", valor)
                .append("desconto",desconto)
                .append("funcionarioId", funcionarioId)
                .append("estado",estado);
        return doc;
    }

    public Integer getId() {
        return id;
    }
    public String getUptoDate(){
        return uptoDate;
    }

    public Integer getContribuinteGinasio() {
        return contribuinteGinasio;
    }

    public String getData() {
        return data;
    }

    public String getDescricao() {
        return descricao;
    }

    public double getValor() {
        return valor;
    }

    public double getDesconto() {
        return desconto;
    }

    public Integer getFuncionarioId() {
        return funcionarioId;
    }

    public String getEstado() {
        return estado;
    }
    
}
