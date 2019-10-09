<%@page import="webservice.Localidad"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.LocalidadService"%>
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
        <script type="text/javascript" src="js/comunas.js"></script>
        <script src="//cdn.ckeditor.com/4.12.1/full/ckeditor.js"></script></head>

    <title>Crear Departamento</title>
</head>
<body>
    <c:if test="${requestScope.error!=null}">
        <script>alert('<c:out value="${requestScope.error}"/>');</script>
    </c:if>
    <%@include file="Menus/Menu_admin.jsp" %>
    <h1 class="text-center">Crear Departamento</h1><br>
    <div class="container">
        <form id="Formulario" class="form-horizontal" role="form" action="CrearDepartamento" method="POST">

            <div class="form-group">
                <label class="control-label col-sm-2" for="fecha">Fecha</label>
                <div class="col-sm-10">
                    <input id="nombre" type="date" class="form-control" name="fecha" value="" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="nombre">Nombre</label>
                <div class="col-sm-10">
                    <input id="nombre" type="text" class="form-control" name="nombre" value="" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="ubicacion">Ubicación</label>
                <div class="col-sm-10">

                 <!--   <select class="form-control selectric" name="ubicacion">
                        <option value="">Seleccionar</option>

                        <%
                            LocalidadService loc = new LocalidadService();
                            List<Localidad> datos = loc.listarLocalidades();
                            for (Localidad d : datos) {
                        %>
                        <option value="<%= d.getNombreLocalidad()%>"><%= d.getNombreLocalidad()%></option>  
                        <%}%>
                    </select>-->
                        
                        <input type="text" name="ubicacion">




                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="banos">Baños</label>
                <div class="col-sm-10">
                    <input id="banos" type="number" class="form-control" name="banos" value="" required>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="dormitorios">Dormitorios</label>
                <div class="col-sm-10">
                    <input id="habitaciones" type="number" class="form-control" name="habitaciones" value="" required>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="valorarriendo">Valor Arriendo</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" name="valorarriendo" id="valorarriendo">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="descripcion">Descripción</label>
                <div class="col-sm-10">
                    <textarea name="descripcion" id="editor1" rows="10" cols="80" required></textarea>
                </div>
            </div>

            <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="submit" class="btn btn-blue" value="Guardar">&nbsp&nbsp;<button type="reset" class="btn btn-warning">Limpiar</button>
                </div>
            </div>
            <div class="form-group">        
                <div class="col-sm-offset-2 col-sm-10">

                </div>
            </div>
        </form>
        <br><br><br><br>

    </div>
    <script>
        // Replace the <textarea id="editor1"> with a CKEditor
        // instance, using default configuration.
        CKEDITOR.replace('editor1');
    </script>

    <%@include file="common/footer.jsp" %>
    <script src="content/jq/jquery-1.11.3.min.js"></script>
    <script src="content/bootstrap/js/bootstrap.js"></script>
    <script language="JavaScript" src="js/validarCampos.js"></script>
</body>
</html>