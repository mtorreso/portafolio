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
public interface CRUDINVENTARIO {
    
    public List listarInventario();
    public Inventario BuscarInventario(int id_inv);
    public String addInventario(String id_depto,String producto,String cantidad,String estado,String descripcion);
    public String editInventario(int id_inv,String producto,String cantidad,String estado,String descripcion);
    public Inventario deleteInventario(int id_inv);
    
}
