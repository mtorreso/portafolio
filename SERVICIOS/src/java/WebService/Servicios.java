/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package WebService;

import DAO.CuentasDAO;
import DAO.DepartamentoDAO;
import DAO.InventarioDAO;
import DAO.ReservaDAO;
import DAO.ServicioDAO;
import Modelo.Categoria;
import Modelo.Departamento;
import Modelo.Inventarios;
import Modelo.Localidad;
import Modelo.Reserva;
import Modelo.Reservas;
import Modelo.Reservasdepto;
import Modelo.Serviciosdepto;
import Modelo.Usuario;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author torre
 */
@WebService(serviceName = "Servicios")
public class Servicios {

    DepartamentoDAO ddao = new DepartamentoDAO();
    ReservaDAO rdao = new ReservaDAO();
    InventarioDAO indao = new InventarioDAO();
    CuentasDAO cuentas = new CuentasDAO();
    ServicioDAO srv=new ServicioDAO();

    @WebMethod(operationName = "listardepartamentos")
    public List<Departamento> listardepartamentos() {
        List datos = ddao.Listar();
        return datos;
    }

    /**
     * Web service operation
     *
     * @param nombre
     * @param ubicacion
     * @param banos
     * @param habitaciones
     * @param valorarriendo
     * @param descripcion
     * @param fecha
     * @param direccion
     * @return
     */
    @WebMethod(operationName = "agregardepartamento")
    public String agregardepartamento(@WebParam(name = "nombre") String nombre, @WebParam(name = "ubicacion") String ubicacion, @WebParam(name = "banos") String banos, @WebParam(name = "habitaciones") String habitaciones, @WebParam(name = "valorarriendo") float valorarriendo, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "fecha") String fecha, @WebParam(name = "direccion") String direccion) {
        String datos = ddao.add(nombre, ubicacion, banos, habitaciones, valorarriendo, descripcion, fecha, direccion);
        return datos;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "listarpordepartamento")
    public Departamento listarpordepartamento(@WebParam(name = "id") int id) {
        Departamento departamento = ddao.listarID(id);
        return departamento;
    }

    /**
     * Web service operation
     *
     * @param id
     * @param nombre
     * @param ubicacion
     * @param banos
     * @param habitaciones
     * @param valorarriendo
     * @param descripcion
     * @param fecha
     * @param direccion
     * @return
     */
    @WebMethod(operationName = "Actualizardepartamento")
    public String Actualizardepartamento(@WebParam(name = "id") int id, @WebParam(name = "nombre") String nombre, @WebParam(name = "ubicacion") String ubicacion, @WebParam(name = "banos") String banos, @WebParam(name = "habitaciones") String habitaciones, @WebParam(name = "valorarriendo") float valorarriendo, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "fecha") String fecha, @WebParam(name = "direccion") String direccion) {
        String datos = ddao.edit(id, nombre, ubicacion, banos, habitaciones, valorarriendo, descripcion, fecha, direccion);
        return datos;
    }

    /**
     * Web service operation
     *
     * @param id
     * @return
     */
    @WebMethod(operationName = "Eliminardepartamento")
    public String Eliminardepartamento(@WebParam(name = "id") int id) {
        String datos = ddao.delete(id);
        return datos;
    }

    /**
     * Web service operation
     *
     * @return
     */
    @WebMethod(operationName = "listarLocalidades")
    public List<Localidad> listarLocalidades() {
        List datos = ddao.listarlocalidades();
        return datos;
    }

    /**
     * Web service operation
     *
     * @param rut
     * @return
     */
    @WebMethod(operationName = "listarReservas")
    public List<Reservas> listarReservas(@WebParam(name = "rut") String rut) {
        List datos = rdao.listarreserva(rut);
        return datos;
    }

    @WebMethod(operationName = "agregarReserva")
    public String agregarReserva(@WebParam(name = "fecha_reserva") String fecha_reserva, @WebParam(name = "cantidad_personas") String cantidad_personas, @WebParam(name = "fecha_salida") String fecha_salida, @WebParam(name = "rut") String rut, @WebParam(name = "id_departamento") String id_departamento) {
        String datos = rdao.addReserva(fecha_reserva, cantidad_personas, fecha_salida, rut, id_departamento);
        return datos;
    }

    @WebMethod(operationName = "eliminarReserva")
    public String eliminarReserva(@WebParam(name = "id_reserva") int id_reserva) {
        String datos = rdao.eliminar(id_reserva);
        return datos;
    }

    @WebMethod(operationName = "listarInventario")
    public List<Inventarios> listarInventario(@WebParam(name = "id") int id) {
        List datos = indao.listarInventario(id);
        return datos;
    }

    @WebMethod(operationName = "nuevoinventario")
    public String nuevoinventario(@WebParam(name = "id_depto") String id_depto, @WebParam(name = "producto") String producto, @WebParam(name = "cantidad") String cantidad, @WebParam(name = "estado") String estado, @WebParam(name = "descripcion") String descripcion,@WebParam(name = "categoria") String categoria) {
        String datos = indao.addInventario(id_depto, producto, cantidad, estado, descripcion,categoria);
        return datos;
    }
    
       @WebMethod(operationName = "eliminarinventario")
    public String eliminarinventario(@WebParam(name = "id") int id) {
        String datos = indao.deleteInventario(id);
        return datos;
    }

    @WebMethod(operationName = "listarDeptos")
    public List<Departamento> listarDeptos(@WebParam(name = "ubicacion") String ubicacion) {
        List datos = ddao.listarporubicacion(ubicacion);
        return datos;
    }

    @WebMethod(operationName = "listarreservadepartamento")
    public List<Reservasdepto> listarreservadepartamento(@WebParam(name = "id") int id) {
        List datos = ddao.listarreservadepartamento(id);
        return datos;
    }

    @WebMethod(operationName = "CrearCuenta")
    public String CrearCuenta(@WebParam(name = "rut") String rut, @WebParam(name = "nombre") String nombre, @WebParam(name = "correo") String correo, @WebParam(name = "telefono") String telefono, @WebParam(name = "clave") String clave, @WebParam(name = "id_rol") int id_rol) {
        String datos = cuentas.CrearCuenta(rut, nombre, correo, telefono, clave, id_rol);
        return datos;
    }

    @WebMethod(operationName = "modificarUsuario")
    public String modificarUsuario(@WebParam(name = "rut") String rut, @WebParam(name = "nombre") String nombre, @WebParam(name = "correo") String correo, @WebParam(name = "telefono") String telefono, @WebParam(name = "clave") String clave) {
        String datos = cuentas.modificarUsuario(rut, nombre, correo, telefono, clave);
        return datos;
    }

    @WebMethod(operationName = "validaUsuario")
    public String validaUsuario(@WebParam(name = "correo") String correo, @WebParam(name = "clave") String clave) {
        String datos = cuentas.validaUsuario(correo, clave);
        return datos;
    }

    @WebMethod(operationName = "retornarRut")
    public String retornarRut(@WebParam(name = "correo") String correo) {
        String datos = cuentas.retornarRut(correo);
        return datos;
    }

    @WebMethod(operationName = "retornarNombre")
    public String retornarNombre(@WebParam(name = "correo") String correo) {
        String datos = cuentas.retornarNombre(correo);
        return datos;
    }

    @WebMethod(operationName = "eliminarUsuario")
    public String eliminarUsuario(@WebParam(name = "id") int id) {
        String datos = cuentas.eliminarUsuario(id);
        return datos;
    }

    @WebMethod(operationName = "listarusuarios")
    public List<Usuario> listarusuarios() {
        List datos = cuentas.listarUsuarios();
        return datos;
    }

    @WebMethod(operationName = "listarclientes")
    public List<Usuario> listarclientes() {
        List datos = cuentas.listarClientes();
        return datos;
    }

    @WebMethod(operationName = "Mostrarporrut")
    public Usuario Mostrarporrut(@WebParam(name = "rut") String rut) {
        Usuario usuario = cuentas.Mostrarporrut(rut);
        return usuario;
    }

    @WebMethod(operationName = "listarcategorias")
    public List<Categoria> listarcategorias() {
        List datos = indao.listarcategorias();
        return datos;
    }
    
    
    @WebMethod(operationName = "listarServicios")
    public List<Serviciosdepto> listarServicios(@WebParam(name = "id") int id) {
        List datos = srv.listarServicios(id);
        return datos;
    }

}
