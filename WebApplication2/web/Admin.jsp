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
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link href="estilos/perfilnavbar.css" rel="stylesheet">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

        <!---->

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.0/font/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
        <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
        <link href='https://fonts.googleapis.com/css?family=Hind:400,300,500,600%7cMontserrat:400,700' rel='stylesheet'>
        <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="multimedia/css/nouislider.min.css" />
        <link rel="stylesheet" href="multimedia/css/font-awesome.min.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


        <title>Turismo Real - Portafolio de Título</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${requestScope.msg =='1'}">
                <script>swal("Bienvenido!", "Administrador!", "success");</script>
            </c:when>
            <c:when test="${requestScope.msg !=null}">
                <script>alert('<c:out value="${requestScope.msg}"/>');</script>
            </c:when>
        </c:choose>

        <div class="bg-top navbar-light">
            <div class="container">
                <div class="row no-gutters d-flex align-items-center align-items-stretch">
                    <div class="col-md-4 d-flex align-items-center py-4">
                        <a class="navbar-brand" href="Admin.jsp">Turismo<span>Real</span></a>
                    </div>

                    <div class="col-lg-8 d-block">
                        <div class="row d-flex">
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">

                                <div class="text">
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                            <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                                <div class="icon d-flex justify-content-center align-items-center"></div>

                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar" role="navigation">
            <div class="container d-flex align-items-center px-4">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav"  aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a href="Admin.jsp" class="nav-link pl-0">Home</a></li>
                        <li class="nav-item"><a href="VerLista.jsp" class="nav-link"><span class="glyphicon glyphicon-cog"></span>Usuarios</a></li>
                        <li class="nav-item"><a href="departamentos.jsp" class="nav-link">Departamentos</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Reportes</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown nav-item">
                            <a href="#" class="nav-link" data-toggle="dropdown">
                                <span class="glyphicon glyphicon-user"></span> 
                                <%
                                    //preguntamo por la variable de sesion creada en el servlet
                                    if (sesion.getAttribute("nombre") != null) {
                                        out.print(sesion.getAttribute("nombre"));
                                    }
                                %>
                                <span class="glyphicon glyphicon-chevron-down"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <div class="navbar-login">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <p class="text-center">
                                                    <span class="glyphicon glyphicon-user icon-size"></span>
                                                </p>
                                            </div>
                                            <div class="col-lg-8">
                                                <p class="text-left"><strong> <%
                                                    //preguntamo por la variable de sesion creada en el servlet
                                                    if (sesion.getAttribute("nombre") != null) {
                                                        out.print(sesion.getAttribute("nombre"));
                                                    }
                                                        %></strong></p>
                                                <p class="text-left small"><%
                                                    //preguntamo por la variable de sesion creada en el servlet
                                                    if (sesion.getAttribute("email") != null) {
                                                        out.print(sesion.getAttribute("email"));
                                                    }
                                                    %></p>
                                                <p class="text-left">                                                  
                                                    <a href="MisDatosAdmin.jsp" class="btn btn-success btn-block btn-sm">Perfil</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="navbar-login navbar-login-session">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <p>
                                                    <a href="Logout" class="btn btn-danger btn-block">Cerrar Sesion</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            </div>
                            </div>
                            </nav>


                            <div class="container">
                                <section class="row">
                                    <article class="col-xs-12 text-center">
                                        <h2>Bienvenido Administrador</h2>
                                        <img class="img-responsive center-block" src="img/admin.png" width="250px" height="auto"/>
                                    </article>
                                </section>
                            </div>
                            <%@include file="common/footer.jsp" %>
                            <script src="content/jq/jquery-1.11.3.min.js"></script>
                            <script src="content/bootstrap/js/bootstrap.js"></script>
                            </body>
                            </html>
