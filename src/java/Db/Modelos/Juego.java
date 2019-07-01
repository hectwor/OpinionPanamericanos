/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Db.Modelos;

/**
 *
 * @author hecto
 */
public class Juego {
    private String id;
    private String nombreJuego;
    private String descripcionJuego;

    public Juego(String id, String nombreJuego, String descripcionJuego) {
        this.id = id;
        this.nombreJuego = nombreJuego;
        this.descripcionJuego = descripcionJuego;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNombreJuego() {
        return nombreJuego;
    }

    public void setNombreJuego(String nombreJuego) {
        this.nombreJuego = nombreJuego;
    }

    public String getDescripcionJuego() {
        return descripcionJuego;
    }

    public void setDescripcionJuego(String descripcionJuego) {
        this.descripcionJuego = descripcionJuego;
    }
    
    
}
