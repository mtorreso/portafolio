package Datos;

import java.sql.*;
import java.text.DecimalFormat;
import oracle.jdbc.OracleTypes;

public class Consultas {

    static Connection conexion = AccesoBD.getABD().Conectar();

    public static String obtenerIdAdmin(String rut) {
        String id;
        conexion = AccesoBD.getABD().Conectar();
        try {

            CallableStatement cst = conexion.prepareCall("{? = call f_retornar_id_admin(?)}");
            cst.registerOutParameter(1, OracleTypes.NUMBER);
            cst.setString(2, rut);
            cst.execute();
            id = cst.getString(1);
            conexion.close();
            return id;
        } catch (Exception e) {
            return "Error :" + e.toString();
        }
    }

   
    public static String retornarRut(String correo) {
        String rut;
        conexion = AccesoBD.getABD().Conectar();
        try {

            CallableStatement cst = conexion.prepareCall("{? = call f_retornar_rut(?)}");
            cst.registerOutParameter(1, OracleTypes.VARCHAR);
            cst.setString(2, correo);
            cst.execute();
            rut = cst.getString(1);
            conexion.close();
            return rut;
        } catch (Exception e) {
            return "Error :" + e.toString();
        }
    }

    public static String retornarNombre(String correo) {
        String nombre;
        conexion = AccesoBD.getABD().Conectar();
        try {

            CallableStatement cst = conexion.prepareCall("{? = call f_retornar_nombre(?)}");
            cst.registerOutParameter(1, OracleTypes.VARCHAR);
            cst.setString(2, correo);
            cst.execute();
            nombre = cst.getString(1);
            conexion.close();
            return nombre;
        } catch (Exception e) {
            return "Error :" + e.toString();
        }
    }

    public static String crearUsuario(String rut, String nombre, String apellido, String correo, String pass, String rol) {

        try {
            conexion = AccesoBD.getABD().Conectar();
            //Llamando al procedimiento almacenado p_ingreso_usuarios
            CallableStatement cst = conexion.prepareCall("{call p_crear_usuario(?,?,?,?,?,?)}");
            cst.setString(1, rut);
            cst.setString(2, nombre);
            cst.setString(3, apellido);
            cst.setString(4, correo);
            cst.setString(5, pass);
            cst.setString(6, rol);
            cst.execute();

            conexion.close();
            return "Usuario registrado correctamente!!";
        } catch (Exception e) {
            if (e.toString().contains("UQ_USUARIO_RUT")) {
                //Se controla la excepción de clave primaria duplicada
                return "El RUT ingresado ya existe, por favor ingrese otro";
            } else if (e.toString().contains("UQ_USUARIO_CORREO")) {
                return "El correo ingresado ya existe, por favor ingrese otro";
            } else {
                return "Error ";
            }
        }
    }

    public static String modificarUsuario(String rut, String nombre, String apellido, String correo, String pass) {
        try {
            conexion = AccesoBD.getABD().Conectar();
            //Llamando al procedimiento almacenado p_modificar_usuario
            CallableStatement cst = conexion.prepareCall("{call p_modificar_usuario(?,?,?,?,?)}");
            cst.setString(1, rut);
            cst.setString(2, nombre);
            cst.setString(3, apellido);
            cst.setString(4, correo);
            cst.setString(5, pass);
            cst.execute();
            conexion.close();
            return "Usuario modificado correctamente!!";
        } catch (Exception e) {
            return "Error  " + e;
        }
    }

    public static String validaUsuario(String correo, String pass) {
        try {
            conexion = AccesoBD.getABD().Conectar();
            Statement sentencia = conexion.createStatement();
            ResultSet rs = sentencia.executeQuery(
                    "SELECT * FROM usuario WHERE correo='" + correo + "' and pass='" + pass + "'");
            if (rs.next()) {
                String rol = obtenerRol(Integer.parseInt(rs.getString(1)));
                //conexion.close();
                //sesion.setAttribute("rol", rs.getString("id_rol"));
                return rol;
            } else {
                //conexion.close();
                return "0";
            }
        } catch (Exception e) {
            return "error: " + e.toString();
        }
    }

  
    public static String listarUsuarios() {
        String tabla = "";
        String tabla1 = "<table id=\"example\" class=\"table table-bordered responsive\">\n"
                + "                          <thead>"
                + "                            <tr class=\"success\">\n"
                + "                                <th>ID</th>\n"
                + "                                <th>Rol</th>\n"
                + "                                <th>Rut</th>\n"
                + "                                <th>Nombre</th>\n"
                + "                                <th>Apellido</th>\n"
                + "                                <th>Correo</th>\n"
                + "                                <th>Reservas</th>\n"
                + "                                <th></th>\n"
                + "                                <th></th>\n"
                + "                            </tr>"
                + "                          </thead>"
                + "                          <tbody>";
        conexion = AccesoBD.getABD().Conectar();
        try {
            CallableStatement cst = conexion.prepareCall("{call p_listar_usuarios(?)}");
            cst.registerOutParameter(1, OracleTypes.CURSOR);
            cst.execute();
            ResultSet rs = (ResultSet) cst.getObject(1);
            while (rs.next()) {
                tabla += "<tr class='thead-dark'>"
                        + "<td>" + rs.getString("id") + "</td>"
                        + "<td>" + rs.getString("rol") + "</td>"
                        + "<td>" + rs.getString("rut") + "</td>"
                        + "<td>" + rs.getString("nombre") + "</td>"
                        + "<td>" + rs.getString("apellido") + "</td>"
                        + "<td>" + rs.getString("correo") + "</td>"
                        + "<td><a href='reservas.jsp ' class='btn btn-warning btn-xs' role='button'>Reservas <span class='glyphicon glyphicon-pencil'></span></a></td>"
                        + "<td><a href='Modifica_user.jsp?id=" + rs.getString("id") + "&rut=" + rs.getString("rut")
                        + "&nombre=" + rs.getString("nombre") + "&apellido=" + rs.getString("apellido") + "&correo=" + rs.getString("correo") + "&pass=" + rs.getString("pass")
                        + "' class='btn btn-success btn-xs' role='button'>Modificar <span class='glyphicon glyphicon-pencil'></span></a></td>"
                        + "<td><a href='Elimina_user.jsp?id=" + rs.getString("id") + "' class='btn btn-danger btn-xs' role='button' onclick='return confirm(\"Seguro que desea Eliminar este usuario?\")'>Eliminar <span class='glyphicon glyphicon-trash'></span></a></td>"
                        + "</tr>";
            }
            tabla += "</tbody>";
            tabla += "</table>";
            conexion.close();
            return tabla;
        } catch (Exception e) {
            return "Error :" + e.toString();
        }
    }
    
 
    private static String obtenerRol(int id) {
        try {
            conexion = AccesoBD.getABD().Conectar();
            Statement sentencia = conexion.createStatement();
            ResultSet rs = sentencia.executeQuery("Select id_rol from Roles_Usuarios Where id_usuario = " + id);

            if (rs.next()) {

                return rs.getString(1);
            } else {
                return "0";
            }
        } catch (Exception e) {

        }
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public static String eliminarUsuario(String id) {
        try {
            conexion = AccesoBD.getABD().Conectar();
            //Llamando al procedimiento almacenado p_ingreso_usuarios
            CallableStatement cst = conexion.prepareCall("{call p_eliminar_usuario(?)}");
            cst.setString(1, id);
            cst.execute();
            conexion.close();
            return "Eliminado Correctamente!";
        } catch (Exception e) {
            return "Error: " + e.toString();
        }
    }

    //public static String registrarCliente(String rut, String nombre,
    //        String apellido, String correo, String pass, String nombreEdificio, String direccion) {
     public static String registrarCliente(String rut, String nombre,
            String apellido, String correo, String pass) {

        try {
            conexion = AccesoBD.getABD().Conectar();
            //Llamando al procedimiento almacenado 
            CallableStatement cst = conexion.prepareCall("{call p_registrar_cliente(?,?,?,?,?)}");
            cst.setString(1, rut);
            cst.setString(2, nombre);
            cst.setString(3, apellido);
            cst.setString(4, correo);
            cst.setString(5, pass);
            //cst.setString(6, nombreEdificio);
            //cst.setString(7, direccion);
            cst.execute();

            return "Usuario registrado correctamente!!";
        } catch (Exception e) {
            if (e.toString().contains("PRIMARY")) {
                //Se controla la excepción de clave primaria duplicada
                return "El Usuario   ya existe, por favor ingrese otro";
            } else {
                return "Error  " + e;
            }

        }
    }




    public static String crearDepartamento(String nombre, String ubicacion,String banos,String habitaciones,float valorarriendo,String descripcion,String fecha) {

        try {
            conexion = AccesoBD.getABD().Conectar();

            CallableStatement cst = conexion.prepareCall("{call p_crear_departamento(?,?,?,?,?,?,?)}");
            cst.setString(1, nombre);
            cst.setString(2, ubicacion);
            cst.setString(3, banos);
            cst.setString(4, habitaciones);
            cst.setFloat(5, valorarriendo);
            cst.setString(6, descripcion);
            cst.setString(7, fecha);
            cst.execute();

            conexion.close();
            return "Departamento ingresado correctamente!!";
        } catch (Exception e) {

            return "Error ";
        }
    }
    
    
     
}
