/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Dao;

import AbstractFactory.Interface.Opinion;
import Db.Conexion.dbConexion;
import Db.IDao.IDAOOpinion;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;

/**
 *
 * @author hecto
 */
public class DAOOpinion implements IDAOOpinion{

    @Override
    public void realizarOpinion(Opinion op) {
        System.out.println(op);
        BasicDBObject document = new BasicDBObject();
        if("Juego".equals(op.getTipo())){
            document.put("persona","'"+op.getIdPersona()+"'");
            document.put("comentario","'"+op.getComentario()+"'");
            document.put("calificacion","'"+op.getClasificacion()+"'");
            document.put("id_juego","'"+op.getId()+"'");

            DB mdb = dbConexion.getConnection();
            DBCollection persona = mdb.getCollection("OpinionJuego");
            persona.insert(document);
        }else if("Sede".equals(op.getTipo())){
            document.put("persona","'"+op.getIdPersona()+"'");
            document.put("comentario","'"+op.getComentario()+"'");
            document.put("calificacion","'"+op.getClasificacion()+"'");
            document.put("id_sede","'"+op.getId()+"'");

            DB mdb = dbConexion.getConnection();
            DBCollection persona = mdb.getCollection("OpinionSede");
            persona.insert(document);
        }
        else if("Servicio".equals(op.getTipo())){
            document.put("persona","'"+op.getIdPersona()+"'");
            document.put("comentario","'"+op.getComentario()+"'");
            document.put("calificacion","'"+op.getClasificacion()+"'");
            document.put("id_servicio","'"+op.getId()+"'");
            
            DB mdb = dbConexion.getConnection();
            DBCollection persona = mdb.getCollection("OpinionServicio");
            persona.insert(document);
        }
        
    }
    
}
