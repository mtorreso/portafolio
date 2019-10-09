package Negocio;

import Datos.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RegistraCliente extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            if ( 
                 request.getParameter("rut") != null && !request.getParameter("rut").isEmpty()  
              && request.getParameter("nombre") != null && !request.getParameter("nombre").isEmpty()         
              && request.getParameter("apellido") != null && !request.getParameter("apellido").isEmpty()
              && request.getParameter("correo") != null && !request.getParameter("correo").isEmpty()  
              && request.getParameter("pass") != null && !request.getParameter("pass").isEmpty()){
             // && request.getParameter("nombreEdificio") != null && !request.getParameter("nombreEdificio").isEmpty()
             // && request.getParameter("direccion") != null && !request.getParameter("direccion").isEmpty()) {

             request.setAttribute("msg",Consultas.registrarCliente(request.getParameter("rut"),
                            request.getParameter("nombre"),
                            request.getParameter("apellido"),
                            request.getParameter("correo"),
                            request.getParameter("pass"))
                          //  request.getParameter("nombreEdificio"),
                          //  request.getParameter("direccion"))
             );
              
              
                if (request.getAttribute("msg").toString().contains("correctamente")) {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }else
                    request.setAttribute("error", request.getAttribute("msg"));
                    request.getRequestDispatcher("rCliente.jsp").forward(request, response);
                //Redireccionamos a la misma página para que lo vuelva a intentar

            } else {
                request.setAttribute("error", "Debe llenar todos los campos");
                request.getRequestDispatcher("rCliente.jsp").forward(request, response);
            }
            
        } catch (Exception ex) {
            request.setAttribute("error", "Error :" + ex.toString());
            request.getRequestDispatcher("rCliente.jsp").forward(request, response);
        
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
