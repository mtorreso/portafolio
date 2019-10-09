<%@page import="webservice.Departamento"%>
<%@page import="Modelo.DepartamentoService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
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
                        <li class="nav-item active"><a href="index.jsp" class="nav-link pl-0">Home</a></li>
                        <li class="nav-item"><a href="buscarreserva.jsp" class="nav-link">Buscar reservas</a></li>                    
                    </ul>
                </div> 
            </div>
        </nav>
        <%
            int id = Integer.parseInt((String) request.getAttribute("id"));
            DepartamentoService depto = new DepartamentoService();
            Departamento d = depto.listarID(id);
        %>
        <c:if test="${requestScope.error!=null}">
            <script>alert('<c:out value="${requestScope.error}"/>');</script>
        </c:if>
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!--  Product Details -->
                    <div class="product product-details clearfix">
                        <div class="col-md-6">
                            <div id="product-main-view">
                                <h3>Formulario de Reserva</h3>
                                <form id= "Formulario" class="form-horizontal" role="form" action="NuevaReserva" method="POST">
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="fecha_reserva" >Fecha Reserva</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" name="fecha_reserva" id="fecha_reserva" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="rut">Rut</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control"  name="rut" id="rut" placeholder="Ingrese Rut sin puntos (11111111-2)" onblur="onRutBlur(this);">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="cantidad_personas">N° de Personas</label>
                                        <div class="col-sm-10">
                                            <input type="number" class="form-control" name="cantidad_personas" id="cantidad_personas">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="fecha_salida">Fecha Salida</label>
                                        <div class="col-sm-10">
                                            <input type="date" class="form-control" name="fecha_salida" id="fecha_salida">
                                        </div>
                                        <input type="hidden" class="form-control" name="id_departamento" id="id_departamento" value="<%=d.getId()%>">
                                    </div>                                                   
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-blue">Registrar</button>
                                        <button type="reset" class="btn btn-warning"> Limpiar</button>                        
                                        <a href="index.jsp" class="btn btn-danger">Volver</a>
                                    </div>
                                    <div class="form-group">        

                                    </div>
                                </form>
                            </div>				
                        </div>
                        <div class="col-md-6">
                            <div class="product-body">
                                <div class="product-label">

                                </div>
                                <h2 class="product-name"><%=d.getNombre()%></h2>
                                <h3 class="product-name"><%=d.getUbicacion()%> </h3>
                                <h3 class="product-price">$<%=d.getValorarriendo()%></h3>
                                <div>
                                    <div class="product-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o empty"></i>
                                    </div>
                                    <a href="#"></a>
                                </div>
                                <p><strong>Disponibilidad</strong>
                                    <%
                                        if (d.getId() != 0) {
                                            out.print("En Stock");
                                        } else {
                                            out.print("Sin Stock");
                                        }
                                    %></p>                              
                                <p><%=d.getDescripcion()%></p>
                                <div class="product-options">
                                    <strong><%=d.getHabitaciones()%> Dormitorios / <%=d.getBanos()%> Baños </strong>
                                    <br>
                                    <br>
                                    <ul class="size-option">
                                        <li><span class="text-uppercase">Nivel</span></li>

                                        <%
                                            if (d.getHabitaciones().equalsIgnoreCase("1")) {

                                                out.print(" <li class='active'>"
                                                        + "<a href='#'>S</a></li>");
                                            }
                                            if (d.getHabitaciones().equalsIgnoreCase("2")) {

                                                out.print(" <li class='active'>"
                                                        + "<a href='#'>SL</a></li>");
                                            }
                                            if (d.getHabitaciones().equalsIgnoreCase("3")) {

                                                out.print(" <li class='active'>"
                                                        + "<a href='#'>XL</a></li>");
                                            }
                                        %>                              
                                    </ul>
                                </div>
                                <div class="product-btns">
                                    <div class="qty-input">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="product-tab">
                                <ul class="tab-nav">
                                    <li class="active"><a data-toggle="tab" href="#tab1">Mapa</a></li>							
                                </ul>
                                <div class="tab-content">
                                    <div id="tab1" class="tab-pane fade in active">
                                        <div class="mapouter"><div class="gmap_canvas"><iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=<%=d.getUbicacion()%>&t=k&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>Google Maps Generator by <a href="https://www.embedgooglemap.net">embedgooglemap.net</a></div><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div>						
                                    </div>							
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /Product Details -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>

        <%@include file="common/footer.jsp" %>
        <!--JQuery-->
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
        <script language="JavaScript" src="js/validarCampos.js"></script>
    </body>
</html>
