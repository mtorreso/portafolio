<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
        <link rel="stylesheet" href="content/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="estilos/estilo.css" media="screen">
        <title>Modificar Material</title>
    </head>
    <body>
        <%@include file="Menus/Menu_admin.jsp" %>
        <%
           // if (request.getParameter("nombre") != null && request.getParameter("descripcion")!=null
             //       && request.getParameter("valor_unitario")!=null) {
               
                out.print("<div class='container'>");
                         out.print("<h2>Modificar Producto</h2><br><br>");
                         out.print("<form class='form-horizontal' id='Formulario' role='form' action='ModificaMaterial' method='POST'>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='id_tmaterial2' >Identificador del Material</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type=text class='form-control' name='id_tmaterial' id='id_tmaterial' value='"+request.getParameter("id")+"' readonly='readonly'>");
                out.print("</div>");
                out.print("</div>");            
                         
                         out.print("<div class='form-group'>");
                                     out.print("<label class='control-label col-sm-2' for='nombre2' >Nombre</label>");
                                     out.print("<div class='col-sm-10'>");
                                        out.print("<input type=text class='form-control' name='nombre' id='nombre' value='"+request.getParameter("nombre")+"'>");
                                     out.print("</div>");
                            out.print("</div>");
                            
                             out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='descripcion2'>Descripcion</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='text' class='form-control' name='descripcion' id='descripcion' value='"+request.getParameter("descripcion")+"'>");
                out.print("</div>");
                out.print("</div>");
                out.print("<div class='form-group'>");
                out.print("<label class='control-label col-sm-2' for='valor_unitario2'>Valor Unitario</label>");
                out.print("<div class='col-sm-10'>");
                out.print("<input type='text' class='form-control' name='valor_unitario' id='valor_unitario' value='"+request.getParameter("valor_unitario")+"'>");
                out.print("</div>");
                out.print("</div>");
                
                    
                out.print("<div class='form-group'> ");
                out.print("<div class='col-sm-offset-2 col-sm-10'>");
                out.print("<input  type='submit' value='Modificar' class='btn btn-primary'>&nbsp;<a href='listaProducto.jsp' class='btn btn-danger' role='button'>Cancelar</a>");
                out.print("</div>");
                out.print("</div>");
                out.print("</form>");
                out.print("</div>");
                //out.print("<script language='JavaScript' src='js/validarCampos.js'></script>");
            
           // }else{
           //     out.print("<h1>Ha ocurrido un error cargando los datos</h1>");
            //    out.print("<br><br><br><br><a href='listaPaquete.jsp'>Regresar</a>");
            
        %>
        
        
        <!--JQuery-->
        <%@include file="common/footer.jsp" %>
        <script src="content/jq/jquery-1.11.3.min.js"></script>
        <script src="content/bootstrap/js/bootstrap.js"></script>
        <script language="JavaScript" src="js/validarCampos.js"></script>
    </body>
</html>
