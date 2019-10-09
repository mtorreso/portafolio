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
public class ReservasService {
    
    public ReservasService(){
        
    }

    public java.util.List<webservice.Reservas> listarReservas() {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.listarReservas();
    }

    public String agregarReserva(java.lang.String fechaReserva, java.lang.String cantidadPersonas, java.lang.String fechaSalida, java.lang.String rut, java.lang.String idDepartamento) {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.agregarReserva(fechaReserva, cantidadPersonas, fechaSalida, rut, idDepartamento);
    }

  
    
    
    
}
