/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Date;

public class Servicio {
     private int Folio;
    private Date FechaSolicitud;
    private Date FechaTerminacion;
    private String NC;
    private String NS;
    private String Equipo;
    private String Departamento;
    private String Reporta;
    private String Falla;
    private String Recibe;
    private String TrabajoRealizado;
    private String ListaFalla;
    private String ListaTrabajo;
    private String Refacciones;
    private String Observaciones;
    private double Costo;
    private String Recibido;
    private String Comentarios;

    public Servicio(int Folio, Date FechaSolicitud, Date FechaTerminacion, String NC, String NS, String Equipo, String Departamento, String Reporta, String Falla, String Recibe, String TrabajoRealizado, String ListaFalla, String ListaTrabajo, String Refacciones, String Observaciones, double Costo, String Recibido) {
        this.Folio = Folio;
        this.FechaSolicitud = FechaSolicitud;
        this.FechaTerminacion = FechaTerminacion;
        this.NC = NC;
        this.NS = NS;
        this.Equipo = Equipo;
        this.Departamento = Departamento;
        this.Reporta = Reporta;
        this.Falla = Falla;
        this.Recibe = Recibe;
        this.TrabajoRealizado = TrabajoRealizado;
        this.ListaFalla = ListaFalla;
        this.ListaTrabajo = ListaTrabajo;
        this.Refacciones = Refacciones;
        this.Observaciones = Observaciones;
        this.Costo = Costo;
        this.Recibido = Recibido;
    }

    public Servicio() {
   this.Folio = Folio;
        this.FechaSolicitud = FechaSolicitud;
        this.FechaTerminacion = FechaTerminacion;
        this.NC = NC;
        this.NS = NS;
        this.Equipo = Equipo;
        this.Departamento = Departamento;
        this.Reporta = Reporta;
        this.Falla = Falla;
        this.Recibe = Recibe;
        this.TrabajoRealizado = TrabajoRealizado;
        this.ListaFalla = ListaFalla;
        this.ListaTrabajo = ListaTrabajo;
        this.Refacciones = Refacciones;
        this.Observaciones = Observaciones;
        this.Costo = Costo;
        this.Recibido = Recibido;
    }

     public java.sql.Date cambiarFecha(java.util.Date Fecha){
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
    return sqlDate;
    }
    
    public int getFolio() {
        return Folio;
    }

    public void setFolio(int Folio) {
        this.Folio = Folio;
    }

    public Date getFechaSolicitud() {
        return FechaSolicitud;
    }

    public void setFechaSolicitud(Date FechaSolicitud) {
        this.FechaSolicitud = FechaSolicitud;
    }

    public Date getFechaTerminacion() {
        return FechaTerminacion;
    }

    public void setFechaTerminacion(Date FechaTerminacion) {
        this.FechaTerminacion = FechaTerminacion;
    }

    public String getNC() {
        return NC;
    }

    public void setNC(String NC) {
        this.NC = NC;
    }

    public String getNS() {
        return NS;
    }

    public void setNS(String NS) {
        this.NS = NS;
    }

    public String getEquipo() {
        return Equipo;
    }

    public void setEquipo(String Equipo) {
        this.Equipo = Equipo;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public String getReporta() {
        return Reporta;
    }

    public void setReporta(String Reporta) {
        this.Reporta = Reporta;
    }

    public String getFalla() {
        return Falla;
    }

    public void setFalla(String Falla) {
        this.Falla = Falla;
    }

    public String getRecibe() {
        return Recibe;
    }

    public void setRecibe(String Recibe) {
        this.Recibe = Recibe;
    }

    public String getTrabajoRealizado() {
        return TrabajoRealizado;
    }

    public void setTrabajoRealizado(String TrabajoRealizado) {
        this.TrabajoRealizado = TrabajoRealizado;
    }

    public String getListaFalla() {
        return ListaFalla;
    }

    public void setListaFalla(String ListaFalla) {
        this.ListaFalla = ListaFalla;
    }

    public String getListaTrabajo() {
        return ListaTrabajo;
    }

    public void setListaTrabajo(String ListaTrabajo) {
        this.ListaTrabajo = ListaTrabajo;
    }

    public String getRefacciones() {
        return Refacciones;
    }

    public void setRefacciones(String Refacciones) {
        this.Refacciones = Refacciones;
    }

    public String getObservaciones() {
        return Observaciones;
    }

    public void setObservaciones(String Observaciones) {
        this.Observaciones = Observaciones;
    }

    public double getCosto() {
        return Costo;
    }

    public void setCosto(double Costo) {
        this.Costo = Costo;
    }

    public String getRecibido() {
        return Recibido;
    }

    public void setRecibido(String Recibido) {
        this.Recibido = Recibido;
    }

    public String getComentarios() {
        return Comentarios;
    }

    public void setComentarios(String Comentarios) {
        this.Comentarios = Comentarios;
    }
            
           
    
}
