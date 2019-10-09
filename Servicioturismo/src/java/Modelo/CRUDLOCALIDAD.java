/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.List;

/**
 *
 * @author Manuel
 */
public interface CRUDLOCALIDAD {
    
    public List listarlocalidades();
    public Localidad listarIDlocalidad(int id_localidad);
    public String addlocalidad(String nombre_localidad);
    public String editlocalidad(int id_localidad,String nombre_localidad);
    public Departamento deletelocalidad(int id_localidad);
    
}
