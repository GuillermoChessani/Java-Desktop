/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.util.Date;


public class Baja {
int Folio;
String Equipo;
String Marca;
String Modelo;
String NS;
String NControl;
Date FechaInicio;
Date FechaBaja;
String Area;
String Departamento;
String Responsable;

String Motivo;
String Destino;

String Terceros;

String Revisadopor ="Ing. Victor Hugo Hernández Hernández";
String Aprobadopor;
String Comentarios;

    public Baja() {
        this.Folio  = Folio;
        this.Equipo = Equipo;
        this.Marca = Marca;
        this.Modelo = Modelo;
        this.NS = NS;
        this.NControl = NControl;
        this.FechaInicio = FechaInicio;
        this.FechaBaja = FechaBaja;
        this.Departamento = Departamento;
        this.Area = Area;
        this.Motivo = Motivo;
        this.Destino = Destino;
        this.Terceros = Terceros;
        this.Aprobadopor = Aprobadopor;
        this.Comentarios = Comentarios;
    }

       public java.util.Date cambiarFecha(java.util.Date Fecha){
    java.util.Date utilDate = new java.util.Date();
    java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
    return sqlDate;
    }
    
    public String getEquipo() {
        return Equipo;
    }

    public int getFolio() {
        return Folio;
    }

    public void setFolio(int Folio) {
        this.Folio = Folio;
    }

    public void setEquipo(String Equipo) {
        this.Equipo = Equipo;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getModelo() {
        return Modelo;
    }

    public void setModelo(String Modelo) {
        this.Modelo = Modelo;
    }

    public String getNS() {
        return NS;
    }

    public void setNS(String NS) {
        this.NS = NS;
    }

    public String getNControl() {
        return NControl;
    }

    public String getArea() {
        return Area;
    }

    public void setArea(String Area) {
        this.Area = Area;
    }

    public void setNControl(String NControl) {
        this.NControl = NControl;
    }

    public Date getFechaInicio() {
        return FechaInicio;
    }

    public void setFechaInicio(Date FechaInicio) {
        this.FechaInicio = FechaInicio;
    }

    public Date getFechaBaja() {
        return FechaBaja;
    }

    public void setFechaBaja(Date FechaBaja) {
        this.FechaBaja = FechaBaja;
    }

    public String getDepartamento() {
        return Departamento;
    }

    public void setDepartamento(String Departamento) {
        this.Departamento = Departamento;
    }

    public String getResponsable() {
        return Responsable;
    }

    public void setResponsable(String Responsable) {
        this.Responsable = Responsable;
    }

    public String getMotivo() {
        return Motivo;
    }

    public void setMotivo(String Motivo) {
        this.Motivo = Motivo;
    }

    public String getDestino() {
        return Destino;
    }

    public void setDestino(String Destino) {
        this.Destino = Destino;
    }

    public String getTerceros() {
        return Terceros;
    }

    public void setTerceros(String Terceros) {
        this.Terceros = Terceros;
    }

    public String getRevisadopor() {
        return Revisadopor;
    }

    public void setRevisadopor(String Revisadopor) {
        this.Revisadopor = Revisadopor;
    }

    public String getAprobadopor() {
        return Aprobadopor;
    }

    public void setAprobadopor(String Aprobadopor) {
        this.Aprobadopor = Aprobadopor;
    }

    public String getComentarios() {
        return Comentarios;
    }

    public void setComentarios(String Comentarios) {
        this.Comentarios = Comentarios;
    }

   

}
