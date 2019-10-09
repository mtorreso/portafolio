/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Manuel
 */
public class BuscarReserva {

    int id_reserva;
    String fecha_reserva;
    String cantidad_personas;
    String fecha_salida;
    String rut;
    String departamentoid;
    String id_usuario;
    String rut_usuario;
    String nombre;
    String apellido;
    String correo;
    int id;
    String depto;
    String ubicacion;
    String banos;
    String habitaciones;
    float valorarriendo;
    String descripcion;
    String fecha;

    public BuscarReserva() {

    }

    public BuscarReserva(int id_reserva, String fecha_reserva, String cantidad_personas, String fecha_salida, String rut, String departamentoid, String id_usuario, String rut_usuario, String nombre, String apellido, String correo, int id, String depto, String ubicacion, String banos, String habitaciones, String descripcion, String fecha) {
        this.id_reserva = id_reserva;
        this.fecha_reserva = fecha_reserva;
        this.cantidad_personas = cantidad_personas;
        this.fecha_salida = fecha_salida;
        this.rut = rut;
        this.departamentoid = departamentoid;
        this.id_usuario = id_usuario;
        this.rut_usuario = rut_usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.id = id;
        this.depto = depto;
        this.ubicacion = ubicacion;
        this.banos = banos;
        this.habitaciones = habitaciones;
        this.descripcion = descripcion;
        this.fecha = fecha;
    }

    public int getId_reserva() {
        return id_reserva;
    }

    public void setId_reserva(int id_reserva) {
        this.id_reserva = id_reserva;
    }

    public String getFecha_reserva() {
        return fecha_reserva;
    }

    public void setFecha_reserva(String fecha_reserva) {
        this.fecha_reserva = fecha_reserva;
    }

    public String getCantidad_personas() {
        return cantidad_personas;
    }

    public void setCantidad_personas(String cantidad_personas) {
        this.cantidad_personas = cantidad_personas;
    }

    public String getFecha_salida() {
        return fecha_salida;
    }

    public void setFecha_salida(String fecha_salida) {
        this.fecha_salida = fecha_salida;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getDepartamentoid() {
        return departamentoid;
    }

    public void setDepartamentoid(String departamentoid) {
        this.departamentoid = departamentoid;
    }

    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getRut_usuario() {
        return rut_usuario;
    }

    public void setRut_usuario(String rut_usuario) {
        this.rut_usuario = rut_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDepto() {
        return depto;
    }

    public void setDepto(String depto) {
        this.depto = depto;
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

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    

    

}
