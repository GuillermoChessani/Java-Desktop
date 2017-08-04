/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Usuario
 */
  public class Equipo {
      String NControl ;
      String Descripcion;
      String Marca;
      String Modelo;
      String NS;
      String Accesorios;
      String Area;
      int Comodato;
      int Estatus;

    public Equipo(String NControl, String Descripcion, String Marca, String Modelo, String NS) {
        this.NControl = NControl;
        this.Descripcion = Descripcion;
        this.Marca = Marca;
        this.Modelo = Modelo;
        this.NS = NS;
    }

    public Equipo() {
        this.NControl = NControl;
        this.Descripcion = Descripcion;
        this.Marca = Marca;
        this.Modelo = Modelo;
        this.NS = NS;
        this.Accesorios = Accesorios;
        this.Area = Area;
        this.Comodato = Comodato;
        this.Estatus = Estatus;
    }

    public String getNControl() {
        return NControl;
    }

    public void setNControl(String NControl) {
        this.NControl = NControl;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
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

    public String getAccesorios() {
        return Accesorios;
    }

    public void setAccesorios(String Accesorios) {
        this.Accesorios = Accesorios;
    }

    public String getArea() {
        return Area;
    }

    public void setArea(String Area) {
        this.Area = Area;
    }

    public int getComodato() {
        return Comodato;
    }

    public void setComodato(int Comodato) {
        this.Comodato = Comodato;
    }

    public int getEstatus() {
        return Estatus;
    }

    public void setEstatus(int Estatus) {
        this.Estatus = Estatus;
    }
        
}