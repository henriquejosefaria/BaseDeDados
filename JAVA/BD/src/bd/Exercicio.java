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

    public Exercicio(Integer id,String descricao, Integer nSeries, Integer nRepeticoes) {
        this.descricao = descricao;
        this.nSeries = nSeries;
        this.nRepeticoes = nRepeticoes;
        this.id = id;
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
    
}