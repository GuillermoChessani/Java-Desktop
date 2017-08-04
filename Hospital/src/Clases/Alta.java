/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Date;

/**
 *
 * @author Usuario
 */
public class Alta {
    int Folio;
    String Equipo;
    Date Fecha;
    String Observaciones;

    public int getFolio() {
        return Folio;
    }

    public void setFolio(int Folio) {
        this.Folio = Folio;
    }

    public String getEquipo() {
        return Equipo;
    }

    public void setEquipo(String Equipo) {
        this.Equipo = Equipo;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    public String getObservaciones() {
        return Observaciones;
    }

    public void setObservaciones(String Observaciones) {
        this.Observaciones = Observaciones;
    }

    public Alta() {
        this.Folio = Folio;
        this.Equipo = Equipo;
        this.Fecha = Fecha;
        this.Observaciones = Observaciones;
        
        
    }

    public Alta(int Folio, String Equipo, Date Fecha, String Observaciones) {
        this.Folio = Folio;
        this.Equipo = Equipo;
        this.Fecha = Fecha;
        this.Observaciones = Observaciones;
    }
    
    
   
   public java.sql.Date cambiarFecha(java.util.Date Fecha){
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
    return sqlDate;
    }
}
