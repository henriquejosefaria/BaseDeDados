/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

/**
 *
 * @author Filipe Universidade
 */
public class Exercicio {
    private String descricao;
    private Integer nSeries;
    private Integer nRepeticoes;
    private Integer id;
    private String tipo;
    private String estado;

    public Exercicio(Integer id,String descricao,String tipo, Integer nSeries, Integer nRepeticoes,String estado) {
        this.tipo = tipo;
        this.descricao = descricao;
        this.nSeries = nSeries;
        this.nRepeticoes = nRepeticoes;
        this.id = id;
        this.estado = estado;
    }

    public String getDescricao() {
        return descricao;
    }

    public Integer getnSeries() {
        return nSeries;
    }

    public Integer getnRepeticoes() {
        return nRepeticoes;
    }

    public Integer getId() {
        return id;
    }
    public String getTipo(){
        return tipo;
    }
    public String getEstado(){
        return estado;
    }
    
}