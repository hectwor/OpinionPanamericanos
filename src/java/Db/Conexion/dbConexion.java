/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Conexion;

import com.mongodb.DB;
import com.mongodb.Mongo;
/**
 *
 * @author usuario
 */
public class dbConexion {
   private static DB con=null;
   public static DB getConnection(){
       if( con == null ){
//            String driver="com.mysql.jdbc.Driver"; //el driver varia segun la DB que usemos
//            String url="jdbc:mysql://localhost/sakila?autoReconnect=true";
//            String pwd="";
//            String usr="root";
//            Class.forName(driver);
//            con = DriverManager.getConnection(url,usr,pwd);
//
            Mongo mongo = new Mongo("Localhost",27017);
            con = mongo.getDB("local");
            System.out.println("Conection Succesfull "+con.getName());
       }
     return con;
   }
}
