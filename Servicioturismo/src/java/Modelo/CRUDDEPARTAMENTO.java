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
public interface CRUDDEPARTAMENTO {

    public List listar();
    public Departamento listarID(int id);
    public String add(String fecha,String nombre,String ubicacion,String banos,String habitaciones,float valorarriendo,String descripcion);
    public String edit(int id,String fecha,String nombre,String ubicacion,String banos,String habitaciones,float valorarriendo,String descripcion);
    public Departamento delete(int id);
}
