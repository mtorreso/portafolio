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
public class LocalidadService {
    
    public LocalidadService(){
        
    }

    public java.util.List<webservice.Localidad> listarLocalidades() {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.listarLocalidades();
    }

   public String nuevalocalidad(java.lang.String nombreLocalidad) {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.nuevalocalidad(nombreLocalidad);
    }
    
    
    
    
}
