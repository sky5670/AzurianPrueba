/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sky5670.entity;

/**
 *
 * @author javie
 */
public class Persona {
    
    int ID_Persona;
    String Nombre;
    String Apellido;
    String RUT;

    public Persona() {
    }

    public Persona(int ID_Persona, String Nombre, String Apellido, String RUT) {
        this.ID_Persona = ID_Persona;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.RUT = RUT;
    }

    public int getID_Persona() {
        return ID_Persona;
    }

    public void setID_Persona(int ID_Persona) {
        this.ID_Persona = ID_Persona;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getRUT() {
        return RUT;
    }

    public void setRUT(String RUT) {
        this.RUT = RUT;
    }
    
    
}
