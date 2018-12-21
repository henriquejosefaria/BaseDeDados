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
public class Fatura {
    private Integer id;
    private Integer contribuinteGinasio;
    private String data;
    private String descricao;
    private double valor;
    private double desconto;
    private Integer funcionarioId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getContribuinteGinasio() {
        return contribuinteGinasio;
    }

    public void setContribuinteGinasio(Integer contribuinteGinasio) {
        this.contribuinteGinasio = contribuinteGinasio;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public double getDesconto() {
        return desconto;
    }

    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }

    public Integer getFuncionarioId() {
        return funcionarioId;
    }

    public void setFuncionarioId(Integer funcionarioId) {
        this.funcionarioId = funcionarioId;
    }

    public String getInvalida() {
        return invalida;
    }

    public void setInvalida(String invalida) {
        this.invalida = invalida;
    }
    private String invalida;
    
    public Fatura(Integer id, Integer contribuinteGinasio, String data, String descricao, double valor, double desconto,
            Integer funcionarioId, String invalida){
        this.id = id;
        this.contribuinteGinasio = contribuinteGinasio;
        this.data = data;
        this.descricao = descricao;
        this.valor = valor;
        this.desconto = desconto;
        this.funcionarioId = funcionarioId;
        this.invalida = invalida;
    }
    
}
