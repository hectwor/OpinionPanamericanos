/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.IDao;

import Db.Modelos.Juego;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public interface IDAOJuego {
    public ArrayList<Juego> getListaJuegos();
}
