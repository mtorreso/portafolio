<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    //obtenemos la sesion del usuario
    HttpSession sesion = request.getSession();
    //preguntamo por la variable de sesion creada en el servlet
    if ((sesion.getAttribute("logeado") == null
            || (Boolean) sesion.getAttribute("logeado") != true) && sesion.getAttribute("tipo") != "Operador Telefónico") {
        //si es nula o vale false.... redirijo al usuario hacia la pagina de Login
        out.print("<script>alert('Para entrar a esta página debes estar logueado como Operador Telefónico'); window.history.back(-1);</script>");
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
        <link rel="stylesheet" href="content/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="estilos/estilo.css" media="screen">
        <title>Mis Datos</title>
    </head>
    <body>
        <%@include file="Menus/Menu_operador.jsp" %>

        <br><br>
        <div class="container">
            <hr><h2 class="text-center">Mis Datos</h2><hr>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-success">
                        <div class="panel-heading">&nbsp;</div>
                        <div class="panel-body">
                            <div class="col-md-4">
                                <img src="img/misdatos.png" width="200px" height="auto" style="margin:0 auto;" class="img-responsive">
                            </div>
                            <div class="col-md-8">
                                <table class="table table-hover table-bordered">
                                    <tr>
                                        <th>RUT</th>
                                        <td><%
                                            //preguntamo por la variable de sesion creada en el servlet
                                            if (sesion.getAttribute("rut") != null) {
                                                out.print(sesion.getAttribute("rut"));
                                            }
                                            %></td>
                                    </tr>
                                    <tr>
                                        <th>Nombre</th>
                                        <td><%
                                            //preguntamo por la variable de sesion creada en el servlet
                                            if (sesion.getAttribute("nombre") != null) {
                                                out.print(sesion.getAttribute("nombre"));
                                            }
                                            %></td>
                                    </tr>
                                    <tr>
                                        <th>Correo</th>
                                        <td><%
                                            //preguntamo por la variable de sesion creada en el servlet
                                            if (sesion.getAttribute("email") != null) {
                                                out.print(sesion.getAttribute("email"));
                                            }
                                            %></td>
                                    </tr>
                                    <tr>
                                        <th>Tipo de Usuario</th>
                                        <td>
                                            <%
                                                //preguntamo por la variable de sesion creada en el servlet
                                                if (sesion.getAttribute("tipo") != null) {
                                                    out.print(sesion.getAttribute("tipo"));
                                                }%>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="common/footer.jsp" %>
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
