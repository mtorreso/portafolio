<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
        <link rel="stylesheet" href="content/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="estilos/estilo.css" media="screen">
        <title>Resultado</title>

    </head>
    <body>
        <%@include file="Menus/Menu_tecnico.jsp" %>

        <br><br>
        <div class="container">
            <%
                String respuesta = request.getParameter("resultado");
                if (respuesta.equals("1")) {
                    out.print("<h1>Detalle de cotización Registrado correctamente!</h1>");
                } else if (respuesta.equals("0")) {
                    out.print("<h1>No se pudo registrar el detalle</h1>");
                } else {
                    out.print("<h1>Error! No puedes regresar a la página anterior</h1>");
                }
            %>
        </div>


        <%@include file="common/footer.jsp" %>
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
