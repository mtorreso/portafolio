<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Datos.*" %>
<!DOCTYPE html>
<%
    //obtenemos la sesion del usuario
    HttpSession sesion = request.getSession();
    //preguntamo por la variable de sesion creada en el servlet
    if ((sesion.getAttribute("logeado") == null
        || (Boolean) sesion.getAttribute("logeado") != true) && sesion.getAttribute("tipo")!= "Administrador del Sistema") {
        //si es nula o vale false.... redirijo al usuario hacia la pagina de Login
        out.print("<script>alert('Para entrar a esta página debes estar logueado como Administrador del Sistema'); window.history.back(-1);</script>");
        response.sendRedirect("index.jsp");
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
        <link rel="stylesheet" href="content/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="estilos/estilo.css" media="screen">
        <title>Eliminar Paquete</title>
    </head>
    <body>
        <%@include file="Menus/Menu_admin.jsp" %>
        <%
            if (request.getParameter("id") != null) {
                String id = request.getParameter("id");
                String respuesta = Consultas.eliminarPaquete(id);
                out.print("<br><br>");
                out.print("<div class='container text-center'>");
                out.print("<h2>Datos Actualizados"+"</h2><br><br>");
                out.print("<h2>"+respuesta+"</h2><br><br>");
                out.print("<a href='listaPaquete.jsp' class='btn btn-success' role='button'>Regresar</a>");
                out.print("</div>");
                //out.print("<h1>"+request.getParameter("id")+"</h1>");
            }
        %>



        <%@include file="common/footer.jsp" %>
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
