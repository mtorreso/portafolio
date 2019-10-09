/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.CRUDINVENTARIO;
import Modelo.Conexion;
import Modelo.Departamento;
import Modelo.Inventario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel
 */
public class InventarioDAO implements CRUDINVENTARIO {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex = new Conexion();
    int res;
    String msj;
    Inventario i = new Inventario();

    @Override
    public Inventario BuscarInventario(int id_inv) {
        String sql = "select * from inventario where id_inv=" + id_inv;
        i = new Inventario();
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                i.setId_inv(rs.getInt("id_inv"));
                i.setId_depto(rs.getString("id_depto"));
                i.setProducto(rs.getString("producto"));
                i.setCantidad(rs.getString("cantidad"));
                i.setEstado(rs.getString("estado"));
                i.setDescripcion(rs.getString("descripcion"));               
            }
        } catch (Exception e) {
        }
        return i;
    }

    @Override
    public String addInventario(String id_depto, String producto, String cantidad, String estado, String descripcion) {
        String sql = "insert into inventario(id_depto,producto,cantidad,estado,descripcion)values(?,?,?,?,?)";
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, id_depto);
            ps.setString(2, producto);
            ps.setString(3, cantidad);
            ps.setString(4, estado);
            ps.setString(5, descripcion);
            res = ps.executeUpdate();
            if (res == 1) {
                msj = "inventario ingresado ";
            } else {
                msj = "Error en el registro";
            }
        } catch (Exception e) {
        }
        return msj;
    }

    @Override
    public String editInventario(int id_inv, String producto, String cantidad, String estado, String descripcion) {
        String sql = "update inventario set producto=?,cantidad=?,estado=?,descripcion=? where id_inv=" + id_inv;
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, producto);
            ps.setString(2, cantidad);
            ps.setString(3, estado);
            ps.setString(4, descripcion);
            res = ps.executeUpdate();
            if (res == 1) {
                msj = "Inventario actualizado ";
            } else {
                msj = "Error en la actualización";
            }
        } catch (Exception e) {
        }
        return msj;
    }

    @Override
    public Inventario deleteInventario(int id_inv) {
        String sql = "delete from inventario where id_inv=" + id_inv;
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
        } catch (Exception e) {
        }
        return i;
    }

   
       
                
               
     public List listarInventario() {
        List<Inventario> datos = new ArrayList<>();
        String sql = "select inv.id_inv,inv.id_depto,inv.producto,inv.cantidad,inv.estado,inv.descripcion,d.id,d.nombre,d.ubicacion from inventario inv inner join departamento d on\n" +
"inv.id_depto=d.id";
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                i = new Inventario();
                i.setId_inv(rs.getInt("id_inv"));
                i.setId_depto(rs.getString("id_depto"));
                i.setProducto(rs.getString("producto"));
                i.setCantidad(rs.getString("cantidad"));
                i.setEstado(rs.getString("estado"));
                i.setDescripcion(rs.getString("descripcion"));
               
                datos.add(i);
            }
        } catch (Exception e) {
        }
        return datos;
    }
}
    
       

    


