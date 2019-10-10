package Negocio;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Datos.*;
import java.util.HashSet;
import javax.servlet.http.HttpSession;

@WebServlet(name = "ValidarUser", urlPatterns = {"/ValidarUser"})
public class ValidarUser extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession(true);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            if (request.getParameter("correo") != null && !request.getParameter("correo").isEmpty()
                    && request.getParameter("pass") != null && !request.getParameter("pass").isEmpty()) {
                
                
                        request.setAttribute("msg",Consultas.validaUsuario(request.getParameter("correo"),
                        request.getParameter("pass")));
                        //***********************************************************
                        sesion.setAttribute("email", request.getParameter("correo"));
                        sesion.setAttribute("contrasena", request.getParameter("pass"));
                        sesion.setAttribute("rut", Consultas.retornarRut(request.getParameter("correo")));
                        sesion.setAttribute("nombre",Consultas.retornarNombre(request.getParameter("correo")));
                        //***********************************************************
                
                if (request.getAttribute("msg").toString().equals("0")) {
                    
                    request.setAttribute("error", "Correo Electrónico o password incorrectos");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    
                    
                } else {
                    sesion.setAttribute("logeado", true);
                    String rol=request.getAttribute("msg").toString();
                    switch(Integer.parseInt(rol)){
                        case 1:
                            sesion.setAttribute("tipo", "Administrador del Sistema");
                            request.getRequestDispatcher("Admin.jsp").forward(request, response);
                            break;
                        case 2:
                            sesion.setAttribute("tipo", "Funcionario");
                            request.getRequestDispatcher("Funcionario.jsp").forward(request, response);
                            break;
                        
                        case 5:
                            sesion.setAttribute("tipo", "Cliente");
                            request.getRequestDispatcher("Cliente.jsp").forward(request, response);
                            break;
                    }
                    

                }
            } else {
                request.setAttribute("error", "Debe llenar todos los campos");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            request.setAttribute("error", "Error :" + ex.toString());
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
