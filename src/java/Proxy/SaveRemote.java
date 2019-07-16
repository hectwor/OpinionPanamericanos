/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proxy;

import Db.Dao.DAOTimeOpinion;
import java.sql.Timestamp;
import javax.servlet.http.Cookie;

/**
 *
 * @author hecto
 */
public class SaveRemote implements ISaveConexion {

    @Override
    public void save(String dni) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        DAOTimeOpinion dao = new DAOTimeOpinion();
        dao.saveTimeOpinion(timestamp.toString(), dni);
    }

}
