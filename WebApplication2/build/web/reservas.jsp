<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Datos.*" %>
<%@page import="java.util.List"%>
<%@page import="webservice.Reservas"%>
<%@page import="Modelo.ReservasService"%>
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
        <link rel="stylesheet" href="content/dt/dataTables.bootstrap.css">

        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>

        <script src="content/dt/jquery.dataTables.min.js"></script>
        <script src="content/dt/dataTables.bootstrap.js"></script>

        <title>Lista de Reservas</title>
    </head>
    <body>
        <%@include file="Menus/Menu_admin.jsp" %>
        <c:if test="${requestScope.error!=null}">
            <script>alert('<c:out value="${requestScope.error}"/>');</script>
        </c:if>
        <c:if test="${requestScope.msg!=null}">
            <script>alert('<c:out value="${requestScope.msg}"/>');</script>
        </c:if>

        <div class="container">
            <br>
            <br>
            <input class="form-control" id="myInput" type="text" placeholder="Buscar">
            <br>
            <div class="panel panel-blue" style="background:#FFF;">
                <div class="panel-heading">Reservas</div>
                <table  class="table table-bordered responsive" id="dataTable">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID Reserva</th>
                            <th>Rut</th>
                            <th>Nombre</th>
                            <th>Departamento</th>
                            <th>Fecha Reserva</th>
                            <th>Locación</th>
                            <th>Fecha Salida</th>                          
                            <th>Check-in</th>
                            <th>Check-out</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <%
                            ReservasService reser = new ReservasService();
                            List<Reservas> datos = reser.listarReservas();
                            for (Reservas d : datos) {
                        %>

                        <tr>
                            <td><%= d.getIdReserva()%></td>
                            <td><%= d.getRut()%></td>
                            <td><%= d.getNombre()%> <%= d.getApellido()%></td>
                            <td><%= d.getNombre1()%></td>
                            <td><%= d.getFechaReserva()%></td>
                            <td><%= d.getUbicacion()%></td>
                            <td><%= d.getFechaSalida()%></td>
                            <td><a href='checkin.jsp?id=<%= d.getId()%>'class='btn btn-warning btn-xs' role='button'>Check-in<span class='glyphicon glyphicon-pencil'></span></a></td>
                            <td><a href='checkout.jsp?id=<%= d.getId()%>&fecha=<%= d.getFecha()%>&nombre=<%= d.getNombre()%>&ubicacion=<%= d.getUbicacion()%>  &banos=<%= d.getBanos()%>&habitaciones=<%= d.getHabitaciones()%>&valorarriendo=<%= d.getValorarriendo()%>&descripcion=<%= d.getDescripcion()%>' class='btn btn-success btn-xs' role='button'>Check-out <span class='glyphicon glyphicon-pencil'></span></a></td>
                            <td><a href='Elimina_reserva.jsp?id=<%= d.getId()%>' class='btn btn-danger btn-xs' role='button' onclick='return confirm(\'Seguro que desea Eliminar este usuario?\')'>Eliminar <span class='glyphicon glyphicon-trash'></span></a></td>

                        </tr>
                        <%}%>
                    </tbody>
                </table>
                <script>
                    $(document).ready(function () {
                        $("#myInput").on("keyup", function () {
                            var value = $(this).val().toLowerCase();
                            $("#myTable tr").filter(function () {
                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                            });
                        });
                    });
                </script>
            </div>
        </div>
        <%@include file="common/footer.jsp" %>

    </body>
</html>
