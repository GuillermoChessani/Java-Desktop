/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Date;


public class Transferencia {
       private int Folio;
    private Date Fecha;
   
     private String Equipo;
      private String NS;
       private String DepartamentoPresta;
        private String ResponsablePresta;
         
          private String DepartamentoSolicita;
           private String ResponsableSolicita;

    public Transferencia(int Folio, Date Fecha,  String Equipo, String NS, String DepartamentoPresta, String ResponsablePresta,  String DepartamentoSolicita, String ResponsableSolicita) {
        this.Folio = Folio;
        this.Fecha = Fecha;
        
        this.Equipo = Equipo;
        this.NS = NS;
        this.DepartamentoPresta = DepartamentoPresta;
        this.ResponsablePresta = ResponsablePresta;
        
        this.DepartamentoSolicita = DepartamentoSolicita;
        this.ResponsableSolicita = ResponsableSolicita;
    }
    
    public java.util.Date cambiarFecha(java.util.Date Fecha){
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
    return sqlDate;
    }
    
    
    public Transferencia() {
        this.Folio = Folio;
        this.Fecha = Fecha;
        this.Equipo = Equipo;
        this.NS = NS;
        this.DepartamentoPresta = DepartamentoPresta;
        this.ResponsablePresta = ResponsablePresta;
        this.DepartamentoSolicita = DepartamentoSolicita;
        this.ResponsableSolicita = ResponsableSolicita;
    }
           
           

    public int getFolio() {
        return Folio;
    }

    public void setFolio(int Folio) {
        this.Folio = Folio;
    }

    public Date getFecha() {
        return Fecha;
    }

    public void setFecha(Date Fecha) {
        this.Fecha = Fecha;
    }

    

    public String getEquipo() {
        return Equipo;
    }

    public void setEquipo(String Equipo) {
        this.Equipo = Equipo;
    }

    public String getNS() {
        return NS;
    }

    public void setNS(String NS) {
        this.NS = NS;
    }

    public String getDepartamentoPresta() {
        return DepartamentoPresta;
    }

    public void setDepartamentoPresta(String DepartamentoPresta) {
        this.DepartamentoPresta = DepartamentoPresta;
    }

    public String getResponsablePresta() {
        return ResponsablePresta;
    }

    public void setResponsablePresta(String ResponsablePresta) {
        this.ResponsablePresta = ResponsablePresta;
    }

    
    public String getDepartamentoSolicita() {
        return DepartamentoSolicita;
    }

    public void setDepartamentoSolicita(String DepartamentoSolicita) {
        this.DepartamentoSolicita = DepartamentoSolicita;
    }

    public String getResponsableSolicita() {
        return ResponsableSolicita;
    }

    public void setResponsableSolicita(String ResponsableSolicita) {
        this.ResponsableSolicita = ResponsableSolicita;
    }
           
     
         
}
