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

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<script type="text/javascript" src="js/validarut.js"></script>

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
                <li class="nav-item"><a href="contacto.jsp" class="nav-link">Contacto</a></li> 
            </ul>
        </div> 
    </div>
</nav>
<section class="ftco-section bg-light">
    <c:if test="${requestScope.error!=null}">
        <script> alert('<c:out value="${requestScope.error}"/>')</script>
    </c:if>
    <c:if test="${requestScope.msg!=null}">
        <script> alert('<c:out value="${requestScope.msg}"/>')</script>
    </c:if>
    <div class="container">
        <br><br>
        <div class="panel panel-blue" style="background:#FFF;">
            <div class="panel-heading">Nueva Cuenta</div>
            <div class="card-body">
                <form id= "Formulario" class="form-horizontal" role="form" action="RegistraCliente" method="POST">
                    <div class="col-md-8 col-md-offset-2">   	
                         <div class="progress">
                             <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                         </div>
                        <div class="step well">
                            <div class="form-group">
                                <label for="rut">Rut:</label>
                                <input type="text" class="form-control" name="rut" id="rut" placeholder="Ingrese Rut sin puntos"onblur="onRutBlur(this);">
                            </div>                         
                        </div>
                        <div class="step well">
                            <div class="form-group">
                                <label for="nombre">Nombres:</label>

                                <input type="text" class="form-control"  name="nombre"id="nombre">

                            </div>
                            <div class="form-group">
                                <label for="apellido">Apellidos</label>
                                <input type="text" class="form-control" name="apellido" id="apellido">
                            </div>

                        </div>                       
                        <div class="step well">
                            <div class="form-group">
                                <label for="email">Email</label>

                                <input type="email" class="form-control" name="correo" id="email" placeholder="ejemplo@email.com">

                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" name="pass" id="pwd">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-blue">Registrar</button>
                            <button class="action back btn btn-danger">Anterior</button>
                            <button class="action next btn btn-warning">Siguiente</button>
                        </div>
                    </div> 
                </form>
            </div>
        </div>
    </div>




</section>

<%@include file="common/footer.jsp" %>
<script type="text/javascript">
    $(document).ready(function () {
        var current = 1;

        widget = $(".step");
        btnnext = $(".next");
        btnback = $(".back");
        // Init buttons and UI
        widget.not(':eq(0)').hide();
        hideButtons(current);
        setProgress(current);

        // Next button click action
        btnnext.click(function () {
            if (current < widget.length) {
                widget.show();
                widget.not(':eq(' + (current++) + ')').hide();
                setProgress(current);
            }
            hideButtons(current);
        })

        // Back button click action
        btnback.click(function () {
            if (current > 1) {
                current = current - 2;
                btnnext.trigger('click');
            }
            hideButtons(current);
        })
    });

    // Change progress bar action
    setProgress = function (currstep) {
        var percent = parseFloat(100 / widget.length) * currstep;
        percent = percent.toFixed();
        $(".progress-bar").css("width", percent + "%").html(percent + "%");
    }


    // Hide buttons according to the current step
    hideButtons = function (current) {
        var limit = parseInt(widget.length);
        $(".action").hide();
        if (current < limit)
            btnnext.show();
        if (current > 1)
            btnback.show();
        if (current == limit) {
            btnnext.hide();
        }
    }


</script>

<script type="text/javascript">
    function onRutBlur(obj) {
        if (VerificaRut(obj.value))
            return true;
        else {
            alert("Rut incorrecto");
            var textbox = document.getElementById("rut");
            textbox.blur()();
        }
    }
</script>

<script language="JavaScript" src="js/validarCampos.js"></script>
<!--JQuery-->
<script src="content/jq/jquery-1.11.3.min.js"></script>
<script src="content/bootstrap/js/bootstrap.js"></script>
</body>
</html>
