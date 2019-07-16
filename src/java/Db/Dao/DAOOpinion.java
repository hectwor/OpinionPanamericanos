/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Dao;

import AbstractFactory.Interface.Opinion;
import Db.Conexion.dbConexion;
import Db.IDao.IDAOOpinion;
import Prototype.OpinionGame;
import Prototype.OpinionPrototype;
import Prototype.OpinionService;
import Prototype.OpinionVenue;
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
public class DAOOpinion implements IDAOOpinion {

    @Override
    public void realizarOpinion(Opinion op) {
        System.out.println(op);
        BasicDBObject document = new BasicDBObject();
        if ("Juego".equals(op.getTipo())) {
            document.put("persona", op.getIdPersona());
            document.put("comentario", op.getComentario());
            document.put("calificacion", op.getClasificacion());
            document.put("id_juego", op.getId());

            DB mdb = dbConexion.getConnection();
            DBCollection persona = mdb.getCollection("OpinionJuego");
            persona.insert(document);
        } else if ("Sede".equals(op.getTipo())) {
            document.put("persona", op.getIdPersona());
            document.put("comentario", op.getComentario());
            document.put("calificacion", op.getClasificacion());
            document.put("id_sede", op.getId());

            DB mdb = dbConexion.getConnection();
            DBCollection persona = mdb.getCollection("OpinionSede");
            persona.insert(document);
        } else if ("Servicio".equals(op.getTipo())) {
            document.put("persona", op.getIdPersona());
            document.put("comentario", op.getComentario());
            document.put("calificacion", op.getClasificacion());
            document.put("id_servicio", op.getId());

            DB mdb = dbConexion.getConnection();
            DBCollection persona = mdb.getCollection("OpinionServicio");
            persona.insert(document);
        }

    }

    @Override
    public ArrayList<OpinionPrototype> getOpinion(String tipo, String dni) {
        ArrayList<OpinionPrototype> aux = new ArrayList<>();
        DBCollection collection = null;
        DB mdb = dbConexion.getConnection();
        if (tipo.equalsIgnoreCase("game")) {
            collection = mdb.getCollection("OpinionJuego");
            DBCursor cursor = collection.find();
            while (cursor.hasNext()) {
                DBObject document = cursor.next();
                OpinionGame opiniongame = new OpinionGame();
                opiniongame.setId((String) document.get("id_juego").toString());

                String name = "";
                DBCollection collection1 = mdb.getCollection("Juego");
                DBCursor cursor1 = collection1.find();
                while (cursor1.hasNext()) {
                    DBObject document1 = cursor1.next();
                    String in = (String) document1.get("_id").toString();
                    String out = (String) document.get("id_juego").toString();
                    if (in == null ? out == null : in.equals(out)) {
                        name = (String) document1.get("nombreJuego").toString();
                    }
                }
                opiniongame.setNombre(name);

                opiniongame.setIdPersona((String) document.get("persona").toString());
                opiniongame.setClasificacion((Integer) document.get("calificacion"));
                opiniongame.setComentario((String) document.get("comentario"));
                aux.add(opiniongame);
            }
        } else if (tipo.equalsIgnoreCase("service")) {
            collection = mdb.getCollection("OpinionServicio");
            DBCursor cursor = collection.find();
            while (cursor.hasNext()) {
                DBObject document = cursor.next();
                OpinionService opinionservice = new OpinionService();
                opinionservice.setId((String) document.get("id_servicio").toString());

                String name = "";
                DBCollection collection1 = mdb.getCollection("Servicio");
                DBCursor cursor1 = collection1.find();
                while (cursor1.hasNext()) {
                    DBObject document1 = cursor1.next();
                    String in = (String) document1.get("_id").toString();
                    String out = (String) document.get("id_servicio").toString();
                    if (in == null ? out == null : in.equals(out)) {
                        name = (String) document1.get("nombreServicio").toString();
                    }
                }
                opinionservice.setNombre(name);

                opinionservice.setIdPersona((String) document.get("persona").toString());
                opinionservice.setClasificacion((Integer) document.get("calificacion"));
                opinionservice.setComentario((String) document.get("comentario"));
                aux.add(opinionservice);
            }
        } else if (tipo.equalsIgnoreCase("venues")) {
            collection = mdb.getCollection("OpinionSede");
            DBCursor cursor = collection.find();
            while (cursor.hasNext()) {
                DBObject document = cursor.next();
                OpinionVenue opinionvenue = new OpinionVenue();
                opinionvenue.setId((String) document.get("id_sede").toString());

                String name = "";
                DBCollection collection1 = mdb.getCollection("Sede");
                DBCursor cursor1 = collection1.find();
                while (cursor1.hasNext()) {
                    DBObject document1 = cursor1.next();
                    String in = (String) document1.get("_id").toString();
                    String out = (String) document.get("id_sede").toString();
                    if (in == null ? out == null : in.equals(out)) {
                        name = (String) document1.get("nombreSede").toString();
                    }
                }
                opinionvenue.setNombre(name);

                opinionvenue.setIdPersona((String) document.get("persona").toString());
                opinionvenue.setClasificacion((Integer) document.get("calificacion"));
                opinionvenue.setComentario((String) document.get("comentario"));
                aux.add(opinionvenue);
            }
        }
        return aux;
    }

}
