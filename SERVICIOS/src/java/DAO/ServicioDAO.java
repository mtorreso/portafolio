/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Conexion;
import Modelo.Serviciosdepto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author torre
 */
public class ServicioDAO {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex = new Conexion();
    int res;
    String msj;

    Serviciosdepto srv = new Serviciosdepto();

    public List listarServicios(int id) {
        System.out.println("id departamento" + id);
        List<Serviciosdepto> datos = new ArrayList<>();
        String sql = "select s.id_srv,s.nombre_srv,s.precio,s.id_departamento from servicios inner join departamento d on d.id=s.id_departamento where s.id_departamento=" + id;
        try {
            con = conex.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Serviciosdepto srv = new Serviciosdepto();
                srv.setId_srv(rs.getInt("id_srv"));
                srv.setNombre_srv(rs.getString("nombre_srv"));
                srv.setPrecio(rs.getFloat("precio"));
                datos.add(srv);
            }
        } catch (Exception e) {
            System.err.println("ERROR AL LISTAR SERVICIOS POR DEPARTAMENTO" + e.getMessage());
        }
        System.out.println("datos" + datos.toString());
        return datos;
    }

}
