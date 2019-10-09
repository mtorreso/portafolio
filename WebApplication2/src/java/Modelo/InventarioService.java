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
public class InventarioService {
    public InventarioService(){
        
    }

   

    public String nuevoinventario(java.lang.String idDepto, java.lang.String producto, java.lang.String cantidad, java.lang.String estado, java.lang.String descripcion) {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.nuevoinventario(idDepto, producto, cantidad, estado, descripcion);
    }

  

   

   
    
    
}
