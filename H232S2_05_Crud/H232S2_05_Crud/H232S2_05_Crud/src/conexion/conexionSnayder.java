/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Lab12
 */
public class conexionSnayder {
    
    Connection con;
    
    public conexionSnayder(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://barcia.ctay20i24d23.us-east-1.rds.amazonaws.com:3306/gestion_hotel","snayder","snayder1234");
        } catch (Exception e) {
            System.out.println("Error");
        }
    } 
        public Connection getConnection(){
            return con;
        }
    }
    
        
    


