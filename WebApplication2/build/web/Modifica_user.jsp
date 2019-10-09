<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    //obtenemos la sesion del usuario
    HttpSession sesion = request.getSession();
    //preguntamo por la variable de sesion creada en el servlet
    if ((sesion.getAttribute("logeado") == null
            || (Boolean) sesion.getAttribute("logeado") != true) && sesion.getAttribute("tipo") != "Administrador del Sistema") {
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
        <title>Modificar Usuario</title>
    </head>
    <body>
        <%@include file="Menus/Menu_admin.jsp" %>
        <%
            if (request.getParameter("id") != null && request.getParameter("rut") != null
                    && request.getParameter("nombre") != null && request.getParameter("apellido") != null
                    && request.getParameter("correo") != null && request.getParameter("pass") != null) {

                out.print("<div class='container' id='formulario-modificar'>");
                out.print("<div class='col-md-8 col-md-offset-2 well' id='registro'>");
                out.print("<h2 class='text-center text-muted'>Modificar Usuario</h2><br>");
                out.print("<form class='form-horizontal' id='Formulario' role='form' action='ModificaUser' method='POST'>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='rut' >Rut</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type=text class='form-control' name='rut' id='rut' value='" + request.getParameter("rut") + "' readonly='readonly'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='nombre'>Nombre</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='text' class='form-control' name='nombre' id='nombre' value='" + request.getParameter("nombre") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='apellido'>Apellido</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='text' class='form-control' name='apellido' id='apellido' value='" + request.getParameter("apellido") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='email'>E-Mail</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='email' class='form-control' name='correo' id='email' value='" + request.getParameter("correo") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='pwd'>Password</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='password' class='form-control' name='pass' id='pwd' value='" + request.getParameter("pass") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'> ");
                out.print("<div class='col-sm-offset-2 col-sm-10 col-xs-12 btn-group-vertical'>");
                out.print("<button type='submit' class='btn btn-success btn-lg'><span class='glyphicon glyphicon-floppy-disk'></span>   Guardar Cambios</button>");
                out.print("<a href='VerLista.jsp' class='btn btn-danger btn-lg' role='button'><span class='glyphicon glyphicon-remove'></span>   Cancelar</a>");
                out.print("</div>");
                out.print("</div>");
                out.print("</form>");
                out.print("</div>");
                out.print("</div>");

            } else {
                out.print("<h1>Ha ocurrido un error cargando los datos</h1>");
                out.print("<br><br><br><br><a href='VerLista.jsp'>Regresar</a>");
            }
        %>

        <%@include file="common/footer.jsp" %>
        <!--JQuery-->
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
        <script language="JavaScript" src="js/validarCampos.js"></script>
    </body>
</html>
