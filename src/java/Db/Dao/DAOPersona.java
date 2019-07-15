/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Dao;

import Db.Conexion.dbConexion;
import Db.IDao.IDAOPersona;
import Db.Modelos.Persona;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public class DAOPersona implements IDAOPersona{

    @Override
    public ArrayList<Persona> getListaPersonas() {
        ArrayList<Persona> aux=new ArrayList<>();
        DB mdb = dbConexion.getConnection();
        DBCollection persona = mdb.getCollection("Persona");
        DBCursor cursor = persona.find();
        while (cursor.hasNext()) {
            DBObject document = cursor.next();
            aux.add(new Persona(
                    (String) document.get("_id").toString(), 
                    (String) document.get("nombre").toString(),
                    (String) document.get("apellidoPaterno").toString(), 
                    (String) document.get("apellidoMaterno").toString(),
                    (String) document.get("dni").toString(), 
                    (String) document.get("contrasena").toString(),
                    (String) document.get("_idRol").toString()
            ));
        }
        return aux;
    }

    @Override
    public void nuevaPersona(Persona nueva) {
        BasicDBObject document = new BasicDBObject();
        document.put("nombre",nueva.getNombre());
        document.put("apellidoPaterno",nueva.getApellidoMaterno());
        document.put("apellidoMaterno",nueva.getApellidoPaterno());
        document.put("dni",nueva.getDni());
        document.put("contrasena",nueva.getContrasena());
        document.put("_idRol",nueva.getIdRol());
        
        DB mdb = dbConexion.getConnection();
        DBCollection persona = mdb.getCollection("Persona");
        persona.insert(document);
    }

    @Override
    public void editarPersona(String dni, Persona edit) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
