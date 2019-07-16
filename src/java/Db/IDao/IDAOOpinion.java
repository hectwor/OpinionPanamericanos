/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.IDao;

import AbstractFactory.Interface.Opinion;
import Prototype.OpinionPrototype;
import java.util.ArrayList;

/**
 *
 * @author hecto
 */
public interface IDAOOpinion {
    public void realizarOpinion(Opinion op);
    
    public ArrayList<OpinionPrototype> getOpinion(String tipo, String dni);
}
