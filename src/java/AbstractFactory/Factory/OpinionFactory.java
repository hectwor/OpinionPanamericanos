/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AbstractFactory.Factory;

import AbstractFactory.Interface.Opinion;
import AbstractFactory.method.AbstractFactory;
import AbstractFactory.objetos.Juego;
import AbstractFactory.objetos.Sede;
import AbstractFactory.objetos.Servicio;

/**
 *
 * @author hecto
 */
public class OpinionFactory implements AbstractFactory{

    @Override
    public Opinion getOpinion(String codRol, String tipo) {
        if (codRol.equalsIgnoreCase("rol-01") || codRol.equalsIgnoreCase("rol-02")) {
            if(tipo.equalsIgnoreCase("Juego"))
                return new Juego();
            else if(tipo.equalsIgnoreCase("Sede"))
                return new Sede();
            else if(tipo.equalsIgnoreCase("Servicio"))
                return new Servicio();
        }
        return null;
    }
    
}
