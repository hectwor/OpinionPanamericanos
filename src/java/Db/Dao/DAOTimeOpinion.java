/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Dao;

import Db.Conexion.dbConexion;
import Db.IDao.IDAOTimeOpinion;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;

/**
 *
 * @author hecto
 */
public class DAOTimeOpinion implements IDAOTimeOpinion {

    @Override
    public void saveTimeOpinion(String time, String dni) {
        BasicDBObject document = new BasicDBObject();
        document.put("persona", dni);
        document.put("tiempo", time);

        DB mdb = dbConexion.getConnection();
        DBCollection persona = mdb.getCollection("FechasOpiniones");
        persona.insert(document);
    }

}
