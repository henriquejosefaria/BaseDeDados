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
 * @author Filipe Universidade
 */
public class Cliente {
    
    private Integer id = 0;
    private String nome;
    private String sexo;
    private String dataNascimento;
    private double imc;
    private double peso;
    private double altura;
    private int contribuinte;
    private String limitcao;
    private Morada morada;
    private Contacto contacto;
    private ArrayList<Exercicio> exercicios = new ArrayList<>();
    private ArrayList<Servico> servicos = new ArrayList<>();
    private ArrayList<Fatura> faturas = new ArrayList<>();

    public Cliente(Integer id,String nome, String sexo, String dataNascimento, double imc, double peso, double altura, int contribuinte, String limitcao) {
        this.id = id;
        this.nome = nome;
        this.sexo = sexo;
        this.dataNascimento = dataNascimento;
        this.imc = imc;
        this.peso = peso;
        this.altura = altura;
        this.contribuinte = contribuinte;
        this.limitcao = limitcao;
    }


    
    public Document createDoc(){
        Document doc = new Document("id", id);
        
        BasicDBList dBlist0 = new BasicDBList();
        for(Servico ser : servicos){
            dBlist0.add(new BasicDBObject("id", ser.getId())
                .append("nome",ser.getNome())
                .append("data",ser.getData())
                .append("preco",ser.getPreco()));
        }              
        doc.put("servicos", dBlist0);
   
        BasicDBList dBlist1 = new BasicDBList();
        for(Exercicio ex : exercicios){
            dBlist1.add(new BasicDBObject("descricao", ex.getDescricao())
                    .append("tipo",ex.getTipo())
                    .append("sets", ex.getnSeries())
                    .append("reps", ex.getnRepeticoes()));
        }              
        doc.put("exercicios", dBlist1);
        
        BasicDBList dBlist2 = new BasicDBList();
        for(Fatura fat : faturas){
            dBlist2.add(new BasicDBObject("id", fat.getId())
                    .append("contribuinteGinasio", fat.getContribuinteGinasio())
                    .append("data", fat.getData())
                    .append("descricao",fat.getDescricao())
                    .append("valor",fat.getValor())
                    .append("desconto",fat.getDesconto())
                    .append("funcionarioId",fat.getFuncionarioId())
                    .append("invalida",fat.getEstado()));
        }              
        doc.put("faturas", dBlist2);
        return doc;         
    }
    public void addServico(Servico servico){
        servicos.add(servico);
    }
    public void addFatura(Fatura a){
        faturas.add(a);
    }
        public void addExercicio(Exercicio a){
        exercicios.add(a);
    }

    public void setMorada(Morada morada) {
        this.morada = morada;
    }

    public void setContacto(Contacto contacto) {
        this.contacto = contacto;
    }
}
