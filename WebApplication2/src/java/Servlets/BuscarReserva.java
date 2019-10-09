/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USUARIO
 */
public class BuscarReserva extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            try {
                Class.forName("oracle.jdbc.OracleDriver");
                Connection miConexionCD = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "prueba", "prueba");
                Statement declararObjetosBdST = miConexionCD.createStatement();
                String rut = request.getParameter("rut");
                String consulta = "";
                if (!rut.isEmpty()) {
                    consulta = "select r.id_reserva,r.fecha_reserva,r.cantidad_personas,r.fecha_salida,r.rut , r.id_departamento as departamentoid ,u.id_usuario,u.rut_usuario,\n"
                            + "                u.nombre,u.apellido,u.correo,u.pass,d.id,d.nombre as depto,d.ubicacion,d.banos,d.habitaciones,d.valorarriendo,d.descripcion,d.fecha\n"
                            + "                    from reserva r inner join usuario u on u.rut_usuario = r.rut inner join departamento d on r.id_departamento=d.id\n"
                            + "                 where u.rut_usuario='" + rut + "'";
                } else {
                    consulta = "select * from reserva";

                }
                ResultSet datosObtenidosRs = declararObjetosBdST.executeQuery(consulta);
                String tabla = "";
                out.println("<table class=\"table table-bordered responsive\" id=\"dataTable\">");
                out.println("<td id='fondo'><center>Folio Reserva</center></td>");
                out.println("<td id='fondo'><center>Check-in</center></td>");
                out.println("<td id='fondo'><center>Check-out</center></td>");
                out.println("<td id='fondo'><center>Locación</center></td>");
                out.println("<td id='fondo'><center>N° de personas</center></td>");
                out.println("<td id='fondo'><center>Arriendo</center></td>");
                out.println("<td id='fondo'><center>Acciones</center></td>");
                out.println("</thead>");
                out.println("<tbody>");
                while (datosObtenidosRs.next()) {
                    tabla += "<tr class='thead-dark'>";
                    out.println("<td id='let'><center>" + datosObtenidosRs.getString("id_reserva") + "</center></td>");
                    out.println("<td id='let'><center>" + datosObtenidosRs.getString("fecha_reserva") + "</center></td>");
                    out.println("<td id='let'><center>" + datosObtenidosRs.getString("fecha_salida") + "</center></td>");
                    out.println("<td id='let'><center>" + datosObtenidosRs.getString("ubicacion") + "</center></td>");
                    out.println("<td id='let'><center>" + datosObtenidosRs.getString("cantidad_personas") + "</center></td>");
                    out.println("<td id='let'><center>" + datosObtenidosRs.getString("valorarriendo") + "</center></td>");
                    out.println("<td id='let'><a href=\"Controlador?accion=detallereserva&id=" + datosObtenidosRs.getString("id_reserva") + "\" class=\"btn btn-warning\">Detalle</a>\n"
                            + "                                    <a href=\"Controlador?accion=anularreserva&id=" + datosObtenidosRs.getString("id_reserva") + "\" class=\"btn btn-danger\">Anular</a></td>");

                    out.println("</tr>");
                }
                tabla += "</tbody>";
                tabla += "</table>";
                datosObtenidosRs.close();
                declararObjetosBdST.close();
                miConexionCD.close();
                
            } catch (SQLException ex) {
                Logger.getLogger(BuscarReserva.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(BuscarReserva.class.getName()).log(Level.SEVERE, null, ex);
            }
        } finally {
            out.close();
        }
        Object tabla = "";
        request.setAttribute("tabla",tabla);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
