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
        <script type="text/javascript" src="js/validarut.js"></script>
        <script src="//cdn.ckeditor.com/4.12.1/full/ckeditor.js"></script></head>
        <title>Modificar Usuario</title>
    </head>
    <body>
        <%@include file="Menus/Menu_admin.jsp" %>
 <%
            if (request.getParameter("id") != null && request.getParameter("nombre") != null
                    && request.getParameter("ubicacion") != null && request.getParameter("banos") != null
                    && request.getParameter("habitaciones") != null && request.getParameter("valorarriendo") != null
                    && request.getParameter("descripcion") != null && request.getParameter("fecha") != null) {
                
                out.print("<h1 class='text-center'>Modificar Departamento</h1><br>");
                out.print("<div class='container' id='formulario-modificar'>");
                out.print("<div class='col-md-8 col-md-offset-2 well' id='registro'>");              
                out.print("<form class='form-horizontal' id='Formulario' role='form' action='ModificaDepartamento' method='POST'>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='id' >Id interno</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type=text class='form-control' name='id' id='id' value='" + request.getParameter("id") + "' readonly='readonly'>");
                out.print("</div>");
                out.print("</div>");
                
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='fecha'>Fecha Publicación</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='date' class='form-control' name='fecha' id='fecha' value='" + request.getParameter("fecha") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='nombre'>Nombre</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='text' class='form-control' name='nombre' id='nombre' value='" + request.getParameter("nombre") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='ubicacion'>Ubicación</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<select class='form-control' name='ubicacion'>");
                out.print("<option value='"+ request.getParameter("ubicacion") +"'>"+ request.getParameter("ubicacion") +"</option>");
                out.print("<option value='Valparaiso'>Valparaiso</option>");
                out.print("<option value='Talca'>Talca</option>");
                out.print("</select>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='pwd'>Baños</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='number' class='form-control' name='banos' id='banos' value='" + request.getParameter("banos") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='pwd'>Dormitorios</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='number' class='form-control' name='habitaciones' id='habitaciones' value='" + request.getParameter("habitaciones") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='pwd'>Valor Arriendo</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='number' class='form-control' name='valorarriendo' id='valorarriendo' value='" + request.getParameter("valorarriendo") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='pwd'>Descripción</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='text' class='form-control' name='descripcion' id='descripcion' value='" + request.getParameter("descripcion") + "'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'> ");
                out.print("<div class='col-sm-offset-2 col-sm-10 col-xs-12 btn-group-vertical'>");
                out.print("<button type='submit' class='btn btn-success btn-lg'><span class='glyphicon glyphicon-floppy-disk'></span>   Actualizar Cambios</button>");
                out.print("<a href='VerLista.jsp' class='btn btn-danger btn-lg' role='button'><span class='glyphicon glyphicon-remove'></span>   Cancelar</a>");
                out.print("</div>");
                out.print("</div>");
                out.print("</form>");
                out.print("</div>");
                out.print("</div>");

            } else {
                out.print("<h1>Ha ocurrido un error cargando los datos</h1>");
                out.print("<br><br><br><br><a href='departamentos.jsp'>Regresar</a>");
            }
        %>


        <%@include file="common/footer.jsp" %>
        <!--JQuery-->
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
        <script language="JavaScript" src="js/validarCampos.js"></script>
    </body>
</html>
