/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.CRUDRESERVA;
import Modelo.Conexion;
import Modelo.Reserva;
import Modelo.Reservas;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel
 */
public class ReservaDAO implements CRUDRESERVA {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex = new Conexion();
    int res;
    String msj;

    Reserva r = new Reserva();
    Reservas re = new Reservas();

    @Override
    public List listarreserva() {
        List<Reservas> datos = new ArrayList<>();
        String sql = "select r.id_reserva , r.fecha_reserva,r.cantidad_personas,r.fecha_salida,r.rut,r.id_departamento,\n"
                + "u.id_usuario,u.nombre,u.apellido,d.nombre as residencia , d.ubicacion,d.banos,d.habitaciones,\n"
                + "d.valorarriendo,d.descripcion,d.fecha from reserva r inner join usuario u on r.rut=u.rut_usuario \n"
                + "inner join departamento d on d.id=r.id_departamento";
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                re = new Reservas();
                re.setId_reserva(rs.getInt("id_reserva"));
                re.setFecha_reserva(rs.getString("fecha_reserva"));
                re.setCantidad_personas(rs.getString("cantidad_personas"));
                re.setFecha_salida(rs.getString("fecha_salida"));
                re.setRut(rs.getString("rut"));
                re.setId_departamento(rs.getString("id_departamento"));
                re.setNombre(rs.getString("nombre"));
                re.setApellido(rs.getString("apellido"));
                re.setNombre_1(rs.getString("residencia"));
                re.setUbicacion(rs.getString("ubicacion"));               
                datos.add(re);
            }
        } catch (Exception e) {
        }
        return datos;

    }

    @Override
    public Reserva listarIDaddReserva(int id_reserva) {
        String sql = "select * from reserva where id_reserva=" + id_reserva;
        r = new Reserva();
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                r.setId_reserva(rs.getInt("id_reserva"));
                r.setFecha_reserva(rs.getString("fecha_reserva"));
                r.setCantidad_personas(rs.getString("cantidad_personas"));
                r.setFecha_salida(rs.getString("fecha_salida"));
                r.setRut(rs.getString("rut"));
                r.setId_departamento(rs.getString("id_departamento"));
            }
        } catch (Exception e) {
        }
        return r;
    }

    @Override
    public String addReserva(String fecha_reserva, String cantidad_personas, String fecha_salida, String rut, String id_departamento) {
        String sql = "insert into reserva(fecha_reserva,cantidad_personas,fecha_salida,rut,id_departamento) values(?,?,?,?,?)";
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, fecha_reserva);
            ps.setString(2, cantidad_personas);
            ps.setString(3, fecha_salida);
            ps.setString(4, rut);
            ps.setString(5, id_departamento);

            res = ps.executeUpdate();
            if (res == 1) {
                msj = "Reserva generada correctamente";
            } else {
                msj = "Error reserva existe";
            }

        } catch (Exception e) {
        }
        return msj;
    }

    @Override
    public String editReserva(int id_reserva, String fecha_reserva, String cantidad_personas, String fecha_salida, String rut, String id_departamento) {

        String sql = "update reserva set fecha_reserva=?,cantidad_personas=?,fecha_salida=?,rut=?,id_departamento=? where id_reserva=" + id_reserva;
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, fecha_reserva);
            ps.setString(2, cantidad_personas);
            ps.setString(3, fecha_salida);
            ps.setString(4, rut);
            ps.setString(5, id_departamento);

            res = ps.executeUpdate();
            if (res == 1) {
                msj = "Reserva Actualizada correctamente";
            } else {
                msj = "Error en la actualización";
            }

        } catch (Exception e) {
        }
        return msj;
    }

    @Override
    public Reserva deleteeditReserva(int id_reserva) {
        String sql = "delete from reserva where id_reserva=" + id_reserva;
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
        } catch (Exception e) {
        }
        return r;
    }

}
