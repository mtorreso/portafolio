/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebService;


import Dao.DepartamentoDAO;
import Dao.InventarioDAO;
import Dao.LocalidadDAO;
import Dao.ReservaDAO;

import Modelo.Departamento;
import Modelo.Localidad;
import Modelo.Reservas;
import java.sql.Date;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Manuel
 */
@WebService(serviceName = "ServicioDepartamento")
public class ServicioDepartamento {
    ReservaDAO rdao = new ReservaDAO();
    DepartamentoDAO dao = new DepartamentoDAO();
    InventarioDAO indao = new InventarioDAO();
    LocalidadDAO ldao=new LocalidadDAO();

    @WebMethod(operationName = "listar")
    public List<Departamento> listar() {
        List datos = dao.listar();
        return datos;
    }

    @WebMethod(operationName = "agregar")
    public String agregar(@WebParam(name = "nombre") String nombre, @WebParam(name = "ubicacion") String ubicacion, @WebParam(name = "banos") String banos, @WebParam(name = "habitaciones") String habitaciones, @WebParam(name = "valorarriendo") float valorarriendo, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "fecha") String fecha) {
        String datos = dao.add(fecha, nombre, ubicacion, banos, habitaciones, valorarriendo, descripcion);
        return datos;
    }

    @WebMethod(operationName = "listarID")
    public Departamento listarID(@WebParam(name = "id") int id) {
        Departamento depto = dao.listarID(id);
        return depto;
    }

    @WebMethod(operationName = "Actualizar")
    public String Actualizar(@WebParam(name = "id") int id, @WebParam(name = "nombre") String nombre, @WebParam(name = "ubicacion") String ubicacion, @WebParam(name = "banos") String banos, @WebParam(name = "habitaciones") String habitaciones, @WebParam(name = "valorarriendo") float valorarriendo, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "fecha") String fecha) {
        String datos = dao.edit(id, fecha, nombre, ubicacion, banos, habitaciones, valorarriendo, descripcion);
        return datos;
    }

    @WebMethod(operationName = "Eliminar")
    public Departamento Eliminar(@WebParam(name = "id") int id) {
        Departamento d = dao.delete(id);
        return d;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "listarReservas")
    public List<Reservas> listarReservas() {
         List datos = rdao.listarreserva();
        return datos;
    }
    
     @WebMethod(operationName = "agregarReserva")
    public String agregarReserva(@WebParam(name = "fecha_reserva") String fecha_reserva, @WebParam(name = "cantidad_personas") String cantidad_personas, @WebParam(name = "fecha_salida") String fecha_salida, @WebParam(name = "rut") String rut, @WebParam(name = "id_departamento") String id_departamento) {
        String datos = rdao.addReserva(fecha_reserva,cantidad_personas,fecha_salida,rut,id_departamento);
        return datos;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "nuevoinventario")
    public String nuevoinventario(@WebParam(name = "id_depto") String id_depto, @WebParam(name = "producto") String producto, @WebParam(name = "cantidad") String cantidad, @WebParam(name = "estado") String estado, @WebParam(name = "descripcion") String descripcion) {
       String datos=indao.addInventario(id_depto, producto, cantidad, estado, descripcion);      
       return datos;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "listarLocalidades")
    public List<Localidad> listarLocalidades() {
        List datos = ldao.listarlocalidades();
        return datos;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "nuevalocalidad")
    public String nuevalocalidad(@WebParam(name = "nombre_localidad") String nombre_localidad) {
        String datos=ldao.addlocalidad(nombre_localidad);
        return datos;
    }

}
