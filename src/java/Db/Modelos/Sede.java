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
public class Sede {
    private String _id;
    private String nombreSede;
    private String distrito;

    public Sede(String _id, String nombreSede, String distrito) {
        this._id = _id;
        this.nombreSede = nombreSede;
        this.distrito = distrito;
    }

    public String getId() {
        return _id;
    }

    public void setId(String _id) {
        this._id = _id;
    }

    public String getNombreSede() {
        return nombreSede;
    }

    public void setNombreSede(String nombreSede) {
        this.nombreSede = nombreSede;
    }

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }
    
}
