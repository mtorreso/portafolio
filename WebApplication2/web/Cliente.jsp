
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        <link rel="stylesheet" href="content/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="estilos/estilo.css" media="screen">
        <title>Cliente</title>
    </head>
    <body>
        <%
            //obtenemos la sesion del usuario
            HttpSession sesion = request.getSession();
            //preguntamo por la variable de sesion creada en el servlet
            if (sesion.getAttribute("logeado") == null
                    || (Boolean) sesion.getAttribute("logeado") != true) {
                //si es nula o vale false.... redirijo al usuario hacia la pagina de Login
                response.sendRedirect("index.jsp");
            }
        %>
        <c:if test="${requestScope.msg!=null and requestScope.msg =='5'}">
             <script>swal("Bienvenido!", "Cliente!", "success");</script>
        </c:if>
        <%@include file="Menus/Menu_cliente.jsp" %>


        <div class="container">
            <section class="row">
                <article class="col-xs-12 text-center">
                    <h2>Bienvenido Cliente</h2>
                    <img class="img-responsive center-block" src="img/cliente.png" width="250px" height="auto"/>
                </article>
            </section>
        </div>
        <%@include file="common/footer.jsp" %>
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
