/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;


import Modelo.DepartamentoService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Manuel
 */
public class CrearDepartamento extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    DepartamentoService depto = new DepartamentoService();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        try {
            if (request.getParameter("nombre") != null && !request.getParameter("nombre").isEmpty()
                    && request.getParameter("ubicacion") != null && !request.getParameter("ubicacion").isEmpty()
                    && request.getParameter("banos") != null && !request.getParameter("banos").isEmpty()
                    && request.getParameter("habitaciones") != null && !request.getParameter("habitaciones").isEmpty()
                    && request.getParameter("valorarriendo") != null && !request.getParameter("valorarriendo").isEmpty()
                    && request.getParameter("descripcion") != null && !request.getParameter("descripcion").isEmpty()
                    && request.getParameter("fecha") != null && !request.getParameter("fecha").isEmpty()) {

                /*Validando que todos los campos no están vacíos, invocamos el método para ingresar
                 un nuevo usuario con la función crearUsuario()  
                 */
                request.setAttribute("msg",
                        depto.agregar(request.getParameter("nombre"),
                                request.getParameter("ubicacion"),
                                request.getParameter("banos"),
                                request.getParameter("habitaciones"),
                                Float.parseFloat(request.getParameter("valorarriendo")),
                                request.getParameter("descripcion"),
                                request.getParameter("fecha"))              
                );

                if (request.getAttribute("msg").toString().contains("correctamente")) {
                    request.getRequestDispatcher("Admin.jsp").forward(request, response);
                } else {
                    //Redireccionamos a la misma página para que lo vuelva a intentar si algún error ocurre
                    request.setAttribute("error", request.getAttribute("msg"));
                    request.getRequestDispatcher("Crear_Material.jsp").forward(request, response);
                }
            } else {
                //Si hay campos en blanco, la página se vuelve a cargar
                request.setAttribute("error", "Debe llenar todos los campos");
                request.getRequestDispatcher("Crear_Material.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            request.setAttribute("error", "Error :" + ex.toString());
            request.getRequestDispatcher("Crear_Material.jsp").forward(request, response);
        } finally {
            out.close();
        }
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
