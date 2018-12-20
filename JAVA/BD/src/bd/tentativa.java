/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Filipe Universidade
 */
public class tentativa {
    private static final String USERNAME = "root";
private static final String PASSWORD = "password";
private static final String CONN_STRING = "jdbc:mysql://localhost:3306/ginasio";

public static void main(String[] args) throws ClassNotFoundException {
    Connection conn = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(CONN_STRING,USERNAME,PASSWORD);
        System.out.println("Connected");
    }catch (SQLException e){
    System.err.println(e);
    }
}
}
