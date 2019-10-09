/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author Manuel
 */
public class Departamento {
    int id;
    String fecha;
    String nombre,ubicacion,banos,habitaciones;
    float valorarriendo;
    String descripcion;
    
    public Departamento(){
        
    }

    public Departamento(int id, String fecha, String nombre, String ubicacion, String banos, String habitaciones, float valorarriendo, String descripcion) {
        this.id = id;
        this.fecha = fecha;
        this.nombre = nombre;
        this.ubicacion = ubicacion;
        this.banos = banos;
        this.habitaciones = habitaciones;
        this.valorarriendo = valorarriendo;
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getBanos() {
        return banos;
    }

    public void setBanos(String banos) {
        this.banos = banos;
    }

    public String getHabitaciones() {
        return habitaciones;
    }

    public void setHabitaciones(String habitaciones) {
        this.habitaciones = habitaciones;
    }

    public float getValorarriendo() {
        return valorarriendo;
    }

    public void setValorarriendo(float valorarriendo) {
        this.valorarriendo = valorarriendo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
}
