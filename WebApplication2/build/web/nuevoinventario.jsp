<%@page import="webservice.Departamento"%>
<%@page import="Modelo.DepartamentoService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Turismo Real | Portafolio de Titulo</title>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.0/font/css/open-iconic-bootstrap.min.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">

        <!--Loading bootstrap css-->
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <link rel="shortcut icon" href="images/favicon.ico"/>

        <!-- GOOGLE FONT -->
        <link href='https://fonts.googleapis.com/css?family=Hind:400,300,500,600%7cMontserrat:400,700' rel='stylesheet'
              type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">

        <!-- CSS LIBRARY -->
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/bootstrap-select.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/custom.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/responsive.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <script type="text/javascript" src="js/validarut.js"></script>
        <!--Bootstrap-->
    </head>

    <body>

       <%@include file="Menus/Menu_admin.jsp" %>
        <section class="ftco-section bg-light">
            <c:if test="${requestScope.error!=null}">
                <script> alert('<c:out value="${requestScope.error}"/>')</script>
            </c:if>
            <c:if test="${requestScope.msg!=null}">
                <script> alert('<c:out value="${requestScope.msg}"/>')</script>
            </c:if>
            <%
                int id = Integer.parseInt((String) request.getAttribute("id"));
                DepartamentoService depto = new DepartamentoService();
                Departamento d = depto.listarID(id);
            %>
            <div class="container">
                <div class="panel panel-blue" style="background:#FFF;">
                    <div class="panel-heading">Nueva Inventario</div>
                    <div class="card-body">
                        <form action="Srvinventario" class="form-horizontal">                      
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="producto" >Producto</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="txtproducto" id="producto">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="cantidad">Cantidad</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control"  name="txtcantidad" id="cantidad">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="estado">Estado</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="txtestado" id="estado">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-2" for="descripcion">Descripción</label>
                                <div class="col-sm-10">
                                    <textarea name="txtdescripcion"></textarea>
                                </div>
                            </div>
                                <input type="hidden" class="form-control" name="txtiddepartamento" id="id_departamento" value="<%=d.getId()%>">

                            <div class="modal-footer">
                                <input  class="btn btn-blue" type="submit" name="accion" value="Guardar">
                                <button type="reset" class="btn btn-warning"> Limpiar</button>                        
                                <a href="Admin.jsp" class="btn btn-danger">Volver</a>
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <%@include file="common/footer.jsp" %>
        
        <script language="JavaScript" src="js/validarCampos.js"></script>
        <!--JQuery-->
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
