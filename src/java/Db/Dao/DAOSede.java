/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Dao;

import Db.Conexion.dbConexion;
import Db.IDao.IDAOSede;
import Db.Modelos.Sede;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public class DAOSede implements IDAOSede{

    @Override
    public ArrayList<Sede> getListaSedes() {
        ArrayList<Sede> aux=new ArrayList<>();
        DB mdb = dbConexion.getConnection();
        DBCollection sede = mdb.getCollection("Sede");
        DBCursor cursor = sede.find();
        while (cursor.hasNext()) {
            DBObject document = cursor.next();
            aux.add(new Sede(
                    (String) document.get("_id").toString(), 
                    (String) document.get("nombreSede").toString(),
                    (String) document.get("distrito").toString()
            ));
        }
        return aux;
    }
    
}
