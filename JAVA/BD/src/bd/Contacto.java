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
public class Contacto {
    private int id;
    private int tele1;
    private int tele2;
    private String email;

    public int getId() {
        return id;
    }

    public int getTele1() {
        return tele1;
    }

    public int getTele2() {
        return tele2;
    }

    public String getEmail() {
        return email;
    }

    public Contacto(int id, int tele1, int tele2, String email) {
        this.id = id;
        this.tele1 = tele1;
        this.tele2 = tele2;
        this.email = email;
    }
        public Document createDoc(){
                Document doc = new Document("tele1",tele1)
                .append("tele2",tele2)
                .append("email",email);
              return doc;
    }
}
