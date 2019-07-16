/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Conexion;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

/**
 *
 * @author usuario
 */
public class dbConexion {

    private static DB con = null;
    private static boolean thereIsConnection;

    public dbConexion() {
        thereIsConnection = false;
    }

    public static DB getConnection() {
        if (con == null) {
            MongoClientURI uri = new MongoClientURI(
                    "mongodb+srv://root:JFLrRorvKux6poDR@cluster0-ih4bu.mongodb.net/test?retryWrites=true&w=majority");
            MongoClient mongo = new MongoClient(uri);
            //Mongo mongo = new Mongo("Localhost",27017);
            con = mongo.getDB("OpinionesPanamericanos");
            System.out.println("Conection Succesfull " + con.getName());
            thereIsConnection = true;
        }
        return con;
    }

    public static boolean thereIsConnection() {
        return thereIsConnection;
    }
}
