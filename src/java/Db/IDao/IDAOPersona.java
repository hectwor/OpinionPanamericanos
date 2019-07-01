/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.IDao;

import Db.Modelos.Persona;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public interface IDAOPersona {
    public ArrayList<Persona> getListaPersonas();
    
    public void nuevaPersona(Persona nueva);
    
    public void editarPersona(String dni, Persona edit);
}
