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
public class Servicio {
    private String _id;
    private String nombreServicio;

    public Servicio(String _id, String nombreServicio) {
        this._id = _id;
        this.nombreServicio = nombreServicio;
    }

    public String getId() {
        return _id;
    }

    public void setId(String _id) {
        this._id = _id;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }
    
    
}
