<%@page import="Modelo.LocalidadService"%>
<%@page import="webservice.Localidad"%>
<%@page import="java.util.List"%>
<%@page import="webservice.Departamento"%>
<%@page import="Modelo.DepartamentoService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.0/font/css/open-iconic-bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/style.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!--Loading bootstrap css-->
<link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
<link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
<link type="text/css" rel="stylesheet" href="css/jquery-ui-1.10.4.custom.min.css">
<link type="text/css" rel="stylesheet" href="css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="css/animate.css">
<link type="text/css" rel="stylesheet" href="css/all.css">
<link type="text/css" rel="stylesheet" href="css/main.css">
<link type="text/css" rel="stylesheet" href="styles/pace.css">
<link type="text/css" rel="stylesheet" href="styles/jquery.news-ticker.css">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


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
<!------ Include the above in your HEAD tag ---------->

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<style>
    #scroll{
        border:0px solid;
        height:300px;
        width:300px;
        overflow-y:scroll;
        overflow-x:hidden;
    }
</style>
<div class="bg-top navbar-light">
    <div class="container">
        <div class="row no-gutters d-flex align-items-center align-items-stretch">
            <div class="col-md-4 d-flex align-items-center py-4">
                <a class="navbar-brand" href="index.jsp">Turismo<span>Real</span></a>
            </div>
            <div class="row">
                <form action="ValidarUser" method="POST">
                    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
                        <div class="text align-content-md-around">
                            <span>
                                <input  type="email" name="correo" placeholder="correo@mail.com" required>
                            </span>
                        </div>
                        <div class="text align-content-md-around">
                            <span>
                                <input  type="password" name="pass" placeholder="Contraseña">
                            </span>
                        </div>
                        <br>
                        <div class="text align-content-md-around">
                            <span>
                                <input type="submit" name="login" class="btn btn-blue" value="Entrar" required>
                            </span>
                            <span>
                                <a href="rCliente.jsp" class="btn btn-warning">Registrarse</a>
                            </span>
                        </div>
                    </div>
                </form>
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
                <li class="nav-item "><a href="index.jsp" class="nav-link pl-0">Home</a></li>
                <li class="nav-item"><a href="buscarreserva.jsp" class="nav-link">Buscar reservas</a></li> 
                <li class="nav-item active"><a href="contacto.jsp" class="nav-link">Contacto</a></li> 
            </ul>
        </div> 
    </div>
</nav>
<br>
<div class="container">
    <div class="row">
        <div class="col">
             <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Contacto</a></li>
                </ol>
            </nav>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header bg bg-blue text-white"><i class="fa fa-envelope"></i> Contactenos
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label for="name">Nombre</label>
                            <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                           
                        </div>
                        <div class="form-group">
                            <label for="message">Mensaje</label>
                            <textarea class="form-control" id="message" rows="6" required></textarea>
                        </div>
                        <div class="mx-auto">
                            <button type="submit" class="btn btn-blue text-right">Enviar</button></div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-4">
            <div class="card bg-light mb-3">
                <div class="card-header bg-info text-white text-uppercase"><i class="fa fa-home"></i> Dirección</div>
                <div class="card-body">
                    <p>Santiago Centro</p>
                    <p>Chile</p>
                    <p>Email : contacto@turismoreal.cl</p>
                </div>

            </div>
        </div>
    </div>
</div>

<%@include file="common/footer.jsp" %>
