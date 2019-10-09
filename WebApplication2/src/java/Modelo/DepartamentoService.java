/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import webservice.Departamento;

/**
 *
 * @author Manuel
 */
public class DepartamentoService {
    
    public DepartamentoService(){
        
    }

    public  java.util.List<webservice.Departamento> listar() {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.listar();
    }

    public String agregar(java.lang.String nombre, java.lang.String ubicacion, java.lang.String banos, java.lang.String habitaciones, float valorarriendo, java.lang.String descripcion, java.lang.String fecha) {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.agregar(nombre, ubicacion, banos, habitaciones, valorarriendo, descripcion, fecha);
    }

    public Departamento listarID(int id) {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.listarID(id);
    }

    public String actualizar(int id, java.lang.String nombre, java.lang.String ubicacion, java.lang.String banos, java.lang.String habitaciones, float valorarriendo, java.lang.String descripcion, java.lang.String fecha) {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.actualizar(id, nombre, ubicacion, banos, habitaciones, valorarriendo, descripcion, fecha);
    }

   public  Departamento eliminar(int id) {
        webservice.ServicioDepartamento_Service service = new webservice.ServicioDepartamento_Service();
        webservice.ServicioDepartamento port = service.getServicioDepartamentoPort();
        return port.eliminar(id);
    }
    
    
    
    
    
}
