/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proxy;

import Db.Conexion.dbConexion;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public class SaveData implements ISaveConexion {
    
    @Override
    public void save(String dni) {
        if (dbConexion.thereIsConnection()) {
            new SaveRemote().save(dni);
        } else {
            new SaveLocal().save(dni);
        }}

}
