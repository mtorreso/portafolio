<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%
    //obtenemos la sesion del usuario
    HttpSession sesion = request.getSession();
    //preguntamo por la variable de sesion creada en el servlet
    if ((sesion.getAttribute("logeado") == null
            || (Boolean) sesion.getAttribute("logeado") != true) && sesion.getAttribute("tipo") != "Cliente") {
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

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.0/font/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
        <link type="text/css" rel="stylesheet" href="css/jquery-ui-1.10.4.custom.min.css">
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
        <link type="text/css" rel="stylesheet" href="css/animate.css">
        <link type="text/css" rel="stylesheet" href="css/all.css">
        <link type="text/css" rel="stylesheet" href="css/main.css">
        <link type="text/css" rel="stylesheet" href="styles/style-responsive.css">
        <link type="text/css" rel="stylesheet" href="styles/pace.css">
        <link type="text/css" rel="stylesheet" href="styles/jquery.news-ticker.css">
        <link href='https://fonts.googleapis.com/css?family=Hind:400,300,500,600%7cMontserrat:400,700' rel='stylesheet'
              
        <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/fontawesome-all.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/bootstrap-select.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/custom.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/responsive.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/style.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/fonts.css">
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="multimedia/css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="multimedia/css/slick.css" />
        <link type="text/css" rel="stylesheet" href="multimedia/css/slick-theme.css" />
        <link type="text/css" rel="stylesheet" href="multimedia/css/nouislider.min.css" />
        <link rel="stylesheet" href="multimedia/css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="multimedia/css/style.css" />
        <title>Mis Datos</title>
    </head>
    <body>
        <%@include file="Menus/Menu_cliente.jsp" %>

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
