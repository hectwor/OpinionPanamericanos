/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Dao;

import Db.Conexion.dbConexion;
import Db.IDao.IDAOJuego;
import Db.Modelos.Juego;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public class DAOGame implements IDAOJuego{

    @Override
    public ArrayList<Juego> getListaJuegos() {
        ArrayList<Juego> aux=new ArrayList<>();
        DB mdb = dbConexion.getConnection();
        DBCollection juegos = mdb.getCollection("Juego");
        DBCursor cursor = juegos.find();
        while (cursor.hasNext()) {
            DBObject document = cursor.next();
            aux.add(new Juego(
                    (String) document.get("_id").toString(), 
                    (String) document.get("nombreJuego").toString(), 
                    (String) document.get("descripcionJuego").toString()
            ));
        }
        return aux;
    }
    
}
