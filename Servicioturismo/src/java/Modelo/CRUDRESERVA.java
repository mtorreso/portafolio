/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;
import java.util.List;

/**
 *
 * @author Manuel
 */
public interface CRUDRESERVA {
    
    public List listarreserva();
    public Reserva listarIDaddReserva(int id_reserva);
    public String addReserva(String fecha_reserva,String cantidad_personas,String fecha_salida,String rut,String id_departamento);
    public String editReserva(int id_reserva,String fecha_reserva,String cantidad_personas,String fecha_salida,String rut,String id_departamento);
    public Reserva deleteeditReserva(int id_reserva);
    
}
