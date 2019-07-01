/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AbstractFactory.Interface;

/**
 *
 * @author hecto
 */
public abstract class Opinion {
    String idPersona;
    int clasificacion;
    String comentario;
    public abstract String getTipo();
}
