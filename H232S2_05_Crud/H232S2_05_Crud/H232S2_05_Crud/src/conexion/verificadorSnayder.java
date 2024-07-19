/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;

/**
 *
 * @author Lab12
 */
public class verificadorSnayder {

    
    public static void main(String[] args) {
        
        conexionSnayder conexion = new conexionSnayder();
        Connection connection = conexion.getConnection();
        if(connection !=null){
            System.out.println("Conectado con exito a la Base de Datos");
        }else{
            System.out.println("Error en conectar la Base de Datos");
        }
    }
    
}
