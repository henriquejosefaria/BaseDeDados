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
public class Morada {
    private int id;
    private String rua;
    private String localidade;
    private String codigoPostal;

    public Morada(int id, String rua, String localidade, String codigoPostal) {
        this.id = id;
        this.rua = rua;
        this.localidade = localidade;
        this.codigoPostal = codigoPostal;
    }

    public int getId() {
        return id;
    }

    public String getRua() {
        return rua;
    }

    public String getLocalidade() {
        return localidade;
    }

    public String getCodigoPostal() {
        return codigoPostal;
    }
    public Document createDoc(){
                Document doc = new Document("id", id)
                .append("rua",rua)
                .append("localidade",localidade)
                .append("codigoPostal",codigoPostal);
              return doc;
    }
    

    
}
