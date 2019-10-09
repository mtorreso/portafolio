<%@page import="java.util.List"%>
<%@page import="webservice.Departamento"%>
<%@page import="Modelo.DepartamentoService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

        <link rel="shortcut icon" href="images/favicon.ico"/>

        <!-- GOOGLE FONT -->
        <link href='https://fonts.googleapis.com/css?family=Hind:400,300,500,600%7cMontserrat:400,700' rel='stylesheet'
              type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">

        <!-- CSS LIBRARY -->
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/fontawesome-all.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/lib/bootstrap-select.min.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/custom.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/responsive.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <!-- MAIN STYLE -->
        <link rel="stylesheet" type="text/css" href="estilosdep/css/style.css">
        <link rel="stylesheet" type="text/css" href="estilosdep/css/fonts.css">
        <!--Multimedia-->

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="multimedia/css/bootstrap.min.css" />

        <!-- Slick -->
        <link type="text/css" rel="stylesheet" href="multimedia/css/slick.css" />
        <link type="text/css" rel="stylesheet" href="multimedia/css/slick-theme.css" />

        <!-- nouislider -->
        <link type="text/css" rel="stylesheet" href="multimedia/css/nouislider.min.css" />

        <!-- Font Awesome Icon -->
        <link rel="stylesheet" href="multimedia/css/font-awesome.min.css">

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="multimedia/css/style.css" />
        <title>Turismo Real | Portafolio de Titulo</title>
    </head>
    <body>
        <div class="bg-top navbar-light">
            <div class="container">
                <div class="row no-gutters d-flex align-items-center align-items-stretch">
                    <div class="col-md-4 d-flex align-items-center py-4">
                        <a class="navbar-brand" href="Cliente.jsp">Turismo<span>Real</span></a>
                    </div>
                    <div class="row">
                        
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container d-flex align-items-center px-4">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>  
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active"><a href="Cliente.jsp" class="nav-link pl-0">Home</a></li>
                        <li class="nav-item"><a href="buscarreserva.jsp" class="nav-link">Buscar reservas</a></li>                    
                    </ul>
                </div> 
            </div>
        </nav>

        <c:if test="${requestScope.error!=null}">
            <script>alert('<c:out value="${requestScope.error}"/>');</script>
        </c:if>
        <c:if test="${requestScope.detalle!=null}">
            <script>alert('<c:out value="${requestScope.detalle}"/>');</script>
        </c:if>
        <c:if test="${requestScope.msg!=null and requestScope.msg !='0'}">
            <script>alert('<c:out value="${requestScope.msg}"/>');</script>
        </c:if>

        <div class="container">
            <div class="row">
               <section class="ot-accomd-modations">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-lg-6 col-lg-offset-3">
                                <div class="ot-heading pt80 pb30 text-center row-20">
                                    <h2 class="mb15">DEPARTAMENTOS</h2>                           
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-12">
                                <div class="ot-accomd-modations-content owl-single" data-single_item="false" data-desktop="1"
                                     data-small_desktop="1"
                                     data-tablet="2" data-mobile="1"
                                     data-nav="true"
                                     data-pagination="true">
                                    <%                                        
                                        DepartamentoService depto = new DepartamentoService();
                                        List<Departamento> datos = depto.listar();
                                        for (Departamento d : datos) {


                                    %>
                                    <div class="col-md-3 col-sm-3 col-xs-3">
                                        <div class="product product-single product-hot">
                                            <div class="product-thumb">
                                                <div class="product-label">

                                                </div>
                                                <ul class="product-countdown">
                                                    <li><span><%= d.getHabitaciones()%>   D</span></li>
                                                    <li><span><%= d.getBanos()%> B</span></li>
                                                </ul>

                                                <img class="img-responsive img-full" src="./images/room/santiago_1_index.jpg"
                                                     alt="">
                                            </div>
                                            <div class="product-body">
                                                <h3 class="product-price">$<%= d.getValorarriendo()%></h3>

                                                <h2 class="product-name"><a href="#"><%= d.getUbicacion()%></a></h2>
                                                <div class="product-btns">                                                   
                                                    <a class="btn btn-blue" href="Servdepto?accion=editar&id=<%=d.getId()%>"><i class="fa fa-bitcoin"></i> Ver Detalle</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <%}%>  
                                </div>
                            </div>
                            </div>

                            </section>
            </div>

        </div>
        <%@include file="common/footer.jsp" %>
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
    </body>
</html>
