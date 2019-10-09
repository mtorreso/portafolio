/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.CRUDDEPARTAMENTO;
import Modelo.Conexion;
import Modelo.Departamento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel
 */
public class DepartamentoDAO implements CRUDDEPARTAMENTO {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex = new Conexion();
    int res;
    String msj;

    Departamento d = new Departamento();

    @Override
    public List listar() {
        List<Departamento> datos = new ArrayList<>();
        String sql = "select * from departamento";
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                d = new Departamento();
                d.setId(rs.getInt("id"));
                d.setNombre(rs.getString("nombre"));
                d.setUbicacion(rs.getString("ubicacion"));
                d.setBanos(rs.getString("banos"));
                d.setHabitaciones(rs.getString("habitaciones"));
                d.setValorarriendo(rs.getFloat("valorarriendo"));
                d.setDescripcion(rs.getString("descripcion"));
                d.setFecha(rs.getString("fecha"));
                datos.add(d);
            }
        } catch (Exception e) {
        }
        return datos;
    }

    @Override
    public Departamento listarID(int id) {
        String sql = "select * from departamento where id=" + id;
        d = new Departamento();
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                d.setId(rs.getInt("id"));
                d.setNombre(rs.getString("nombre"));
                d.setUbicacion(rs.getString("ubicacion"));
                d.setBanos(rs.getString("banos"));
                d.setHabitaciones(rs.getString("habitaciones"));
                d.setValorarriendo(rs.getFloat("valorarriendo"));
                d.setDescripcion(rs.getString("descripcion"));
                d.setFecha(rs.getString("fecha"));
            }
        } catch (Exception e) {
        }
        return d;
    }

    @Override
    public String add(String fecha, String nombre, String ubicacion, String banos, String habitaciones, float valorarriendo, String descripcion) {
        String sql = "insert into departamento(fecha,nombre,ubicacion,banos,habitaciones,valorarriendo,descripcion) values(?,?,?,?,?,?,?)";
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, fecha);
            ps.setString(2, nombre);
            ps.setString(3, ubicacion);
            ps.setString(4, banos);
            ps.setString(5, habitaciones);
            ps.setFloat(6, valorarriendo);
            ps.setString(7, descripcion);
            res = ps.executeUpdate();
            if (res == 1) {
                msj = "Departamento Agregado";
            } else {
                msj = "Error departamento existe";
            }

        } catch (Exception e) {
        }
        return msj;

    }

    @Override
    public String edit(int id, String fecha, String nombre, String ubicacion, String banos, String habitaciones, float valorarriendo, String descripcion) {
        String sql = "update departamento set fecha=?,nombre=?,ubicacion=?,banos=?,habitaciones=?,valorarriendo=?,descripcion=? where id=" + id;
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, fecha);
            ps.setString(2, nombre);
            ps.setString(3, ubicacion);
            ps.setString(4, banos);
            ps.setString(5, habitaciones);
            ps.setFloat(6, valorarriendo);
            ps.setString(7, descripcion);
            res = ps.executeUpdate();
            if (res == 1) {
                msj = "Departamento Actualizado";
            } else {
                msj = "Error en la actualización";
            }

        } catch (Exception e) {
        }
        return msj;

    }

    @Override
    public Departamento delete(int id) {
        String sql = "delete from departamento where id=" + id;
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
        } catch (Exception e) {
        }
        return d;

    }

}
