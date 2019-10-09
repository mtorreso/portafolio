
package Negocio;

import Datos.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ModificaUser", urlPatterns = {"/ModificaUser"})
public class ModificaUser extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            if (request.getParameter("rut") != null && !request.getParameter("rut").isEmpty()
                    && request.getParameter("nombre") != null && !request.getParameter("nombre").isEmpty()
                    && request.getParameter("apellido") != null && !request.getParameter("apellido").isEmpty()
                    && request.getParameter("correo") != null && !request.getParameter("correo").isEmpty()
                    && request.getParameter("pass") != null && !request.getParameter("pass").isEmpty()) {


                /*Validando que todos los campos no están vacíos, invocamos el método para modificar
                  un nuevo usuario con la función modificarUsuario()  
                */
                request.setAttribute("msg",
                        Consultas.modificarUsuario(request.getParameter("rut"),
                                request.getParameter("nombre"), 
                                request.getParameter("apellido"), 
                                request.getParameter("correo"), 
                                request.getParameter("pass")));
                
                if (request.getAttribute("msg").toString().contains("correctamente")) {
                    request.getRequestDispatcher("VerLista.jsp").forward(request, response);
                }else{
                    
                    request.setAttribute("error", request.getAttribute("msg"));
                    request.getRequestDispatcher("VerLista.jsp").forward(request, response);
                }
            } else {
                //Si hay campos en blanco, la página se vuelve a cargar
                request.setAttribute("error", "Debe llenar todos los campos");
                request.getRequestDispatcher("VerLista.jsp").forward(request, response);
            }
            
        }catch(Exception ex){
            request.setAttribute("error", "Error :" + ex.toString());
            request.getRequestDispatcher("Admin.jsp").forward(request, response);
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
