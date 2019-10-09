<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                        <li class="nav-item active"><a href="buscarreserva.jsp" class="nav-link">Buscar reservas</a></li>
                        <li class="nav-item"><a href="contacto.jsp" class="nav-link">Contacto</a></li> 
                    </ul>
                </div> 
            </div>
        </nav>
        <section class="ftco-section bg-light">
            <div class="container"> 
                <div class="panel panel-blue" style="background:#FFF center;">
                    <div class="panel-heading">Consultar Reservas</div>
                    <form action="BuscarReserva" method="post">
                        <div class="card-body center-block">
                            <div class="row">
                                <div class="form-group col-2">
                                    <label for="rut">Rut</label>
                                    <input id="" type="text" class="form-control"  name="rut" value="" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="BUSCAR" class="btn btn-blue" >
                            </div>
                        </div>
                    </form>
                </div>


            </div>

        </section>
        <section class="ftco-section bg-light">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-2">

                </div>	
            </div>
        </section>
        <footer class="ftco-footer ftco-bg-dark ftco-section">
            <div class="container">
                <div class="row mb-5">

                    <div class="col-md-6 col-lg-3">

                        <div class="ftco-footer-widget mb-5">
                            <h2 class="ftco-heading-2 mb-0">Conecta con nosotros</h2>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>

