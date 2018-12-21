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
    private ArrayList<Exercicio> exercicios = new ArrayList<>();
    private ArrayList<Servico> servicos = new ArrayList<>();
    private ArrayList<Fatura> faturas = new ArrayList<>();

    public Cliente(int id){
        this.id = id;
    }
    
    public Document createDoc(){
        Document doc = new Document("id", id);
        
        BasicDBList dBlist0 = new BasicDBList();
        for(Servico ser : servicos){
            dBlist0.add(new BasicDBObject("nome", ser.getNome()));
        }              
        doc.put("servicos", dBlist0);
   
        BasicDBList dBlist1 = new BasicDBList();
        for(Exercicio ex : exercicios){
            dBlist1.add(new BasicDBObject("descricao", ex.getDescricao())
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
                    .append("invalida",fat.getInvalida()));
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
    public Integer getId() {
        return id;
    }
}
