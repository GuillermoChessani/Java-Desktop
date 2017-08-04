/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

public class Proveedor {
    String Nombre;
    String Cargo;
    String Empresa;
    String Direccion;
    String Telefono1;
    String Telefono2;
    String Celular;
    String Fax;
    String Email;
    String Provee;

    public Proveedor() {
        this.Nombre = Nombre;
        this.Cargo = Cargo;
        this.Provee = Provee;
        this.Empresa = Empresa;
        this.Direccion = Direccion;
        this.Telefono1 = Telefono1;
        this.Telefono2 = Telefono2;
        this.Celular = Celular;
        this.Fax = Fax;
        this.Email = Email;
    }

    public Proveedor(String Nombre, String Cargo, String Empresa, String Direccion, String Telefono1, String Telefono2, String Celular, String Fax, String Email) {
        this.Nombre = Nombre;
        this.Cargo = Cargo;
        this.Empresa = Empresa;
        this.Direccion = Direccion;
        this.Telefono1 = Telefono1;
        this.Telefono2 = Telefono2;
        this.Celular = Celular;
        this.Fax = Fax;
        this.Email = Email;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getProvee() {
        return Provee;
    }

    public void setProvee(String Provee) {
        this.Provee = Provee;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getCargo() {
        return Cargo;
    }

    public void setCargo(String Cargo) {
        this.Cargo = Cargo;
    }

    public String getEmpresa() {
        return Empresa;
    }

    public void setEmpresa(String Empresa) {
        this.Empresa = Empresa;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono1() {
        return Telefono1;
    }

    public void setTelefono1(String Telefono1) {
        this.Telefono1 = Telefono1;
    }

    public String getTelefono2() {
        return Telefono2;
    }

    public void setTelefono2(String Telefono2) {
        this.Telefono2 = Telefono2;
    }

    public String getCelular() {
        return Celular;
    }

    public void setCelular(String Celular) {
        this.Celular = Celular;
    }

    public String getFax() {
        return Fax;
    }

    public void setFax(String Fax) {
        this.Fax = Fax;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
    
    
    
}
