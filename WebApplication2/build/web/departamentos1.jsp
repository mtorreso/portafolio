<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Datos.*" %>
<%@page import="java.util.List"%>
<%@page import="webservice.Departamento"%>
<%@page import="Modelo.DepartamentoService"%>
<!DOCTYPE html>
<%
    //obtenemos la sesion del usuario
    HttpSession sesion = request.getSession();
    //preguntamo por la variable de sesion creada en el servlet
    if ((sesion.getAttribute("logeado") == null
            || (Boolean) sesion.getAttribute("logeado") != true) && sesion.getAttribute("tipo") != "Funcionario") {
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

        <title>Lista de departamentos</title>
    </head>
    <body>
        <%@include file="Menus/Menu_operador.jsp" %>
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
                <div class="panel-heading">Departamentos</div>
                <table  class="table table-bordered responsive" id="dataTable">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID DEPTO</th>
                            <th>Fecha Publicación</th>
                            <th>Locación</th>
                            <th>Valor Arriendo</th>                          
                            <th>Reservas</th>
                            <th>Inventarios</th>
                            
                        </tr>
                    </thead>
                    <tbody id="myTable">
                        <%
                            DepartamentoService depto = new DepartamentoService();
                            List<Departamento> datos = depto.listar();
                            for (Departamento d : datos) {
                        %>

                        <tr>
                            <td><%= d.getId()%></td>
                            <td><%= d.getFecha()%></td>
                            <td><%= d.getUbicacion()%></td>
                            <td><%= d.getValorarriendo()%></td>
                            <td><a href='reservas1.jsp'class='btn btn-blue btn-xs' role='button'>Reservas <span class='glyphicon glyphicon-pencil'></span></a></td>
                            <td>
                                <a href='Inventario_depto1.jsp'class='btn btn-warning btn-xs' role='button'>Inventarios <span class='glyphicon glyphicon-pencil'></span></a>
                                <a href='Servdeptoadmin?accion=inventarios1&id=<%= d.getId()%>'class='btn btn-blue btn-xs' role='button'>Nuevo <span class='glyphicon glyphicon-pencil'></span></a></td>
                            

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
