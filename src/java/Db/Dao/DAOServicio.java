/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Dao;

import Db.Conexion.dbConexion;
import Db.IDao.IDAOServicio;
import Db.Modelos.Servicio;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public class DAOServicio implements IDAOServicio{

    @Override
    public ArrayList<Servicio> getListaServicio() {
        ArrayList<Servicio> aux=new ArrayList<>();
        DB mdb = dbConexion.getConnection();
        DBCollection servicio = mdb.getCollection("Servicio");
        DBCursor cursor = servicio.find();
        while (cursor.hasNext()) {
            DBObject document = cursor.next();
            aux.add(new Servicio(
                    (String) document.get("_id").toString(), 
                    (String) document.get("nombreServicio").toString()
            ));
        }
        return aux;
    }
}
