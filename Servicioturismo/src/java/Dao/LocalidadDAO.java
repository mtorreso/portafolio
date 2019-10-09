/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Modelo.CRUDLOCALIDAD;
import Modelo.Conexion;
import Modelo.Departamento;
import Modelo.Localidad;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel
 */
public class LocalidadDAO implements CRUDLOCALIDAD {
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex = new Conexion();
    int res;
    String msj;

    Localidad l = new Localidad();

    @Override
    public List listarlocalidades() {
         List<Localidad> datos = new ArrayList<>();
         String sql = "select * from localidades order by nombre_localidad DESC";
          try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                l = new Localidad();
                l.setId_localidad(rs.getInt("id_localidad"));
                l.setNombre_localidad(rs.getString("nombre_localidad"));                
                datos.add(l);
            }
        } catch (Exception e) {
        }
          return datos;
    }

    @Override
    public Localidad listarIDlocalidad(int id_localidad) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String addlocalidad(String nombre_localidad) {
  String sql = "insert into localidades(nombre_localidad) values(?)";
        try {
            con = conex.getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, nombre_localidad);
           
            res = ps.executeUpdate();
            if (res == 1) {
                msj = "Localidad Agregado";
            } else {
                msj = "Error localidad existe";
            }

        } catch (Exception e) {
        }
        return msj;
    
    }

    @Override
    public String editlocalidad(int id_localidad, String nombre_localidad) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Departamento deletelocalidad(int id_localidad) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
