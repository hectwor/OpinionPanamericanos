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
public class UserLoged {
    private String nombre;
    public Memento saveToMemento(){
        return new Memento(nombre);
    }
    
    public void restoreFromMemento(Memento m){
        nombre = m.getSavedState();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
