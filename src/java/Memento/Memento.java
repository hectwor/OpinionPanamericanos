/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Memento;

/**
 *
 * @author hecto
 */
public class Memento {
    private String estado;

    public Memento(String estado) {
        this.estado = estado;
    }
    public String getSavedState(){
        return estado;
    }
}
