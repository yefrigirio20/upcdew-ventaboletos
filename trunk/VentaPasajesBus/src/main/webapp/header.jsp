<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
    <head profile="http://gmpg.org/xfn/11">
        <title>Buses del Perú</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <meta http-equiv="imagetoolbar" content="no" />
        <link rel="stylesheet" href="/styles/layout.css" type="text/css" />
        <link rel="stylesheet" href="/styles/validate/screen.css" type="text/css" />
        <script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="/scripts/jquery.jcarousel.pack.js"></script>
        <script type="text/javascript" src="/scripts/jquery.easing.1.3.js"></script>
        <!-- <script type="text/javascript" src="/scripts/jquery.jcarousel.setup.js"></script> -->
        <script type="text/javascript" src="/js/jquery-ui-1.8.6.custom.min.js"></script>
        <script type="text/javascript" src="/js/jquery-1.4.4.js"></script>
        <script type="text/javascript" src="/js/jquery.validate.js"></script>
    </head>
    <body id="top">
        <div class="wrapper col1">
            <div id="topbar">
                <p>Tel: 615-4000 | Mail: info@busesdelperu.pe</p>
                <ul>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="/logout">Logout</a></li>
                    <li><a href="#">Nuestros Destinos</a></li>
                    <li class="last"><a href="#">Escribanos</a></li>
                </ul>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="header">
                <div class="fl_left">
                    <h1><a href="#">Buses del Peru</a></h1>
                    <p>La Red de Buses Modernos y Rápidos</p>
                </div>
                <div class="fl_right">
                    <a href="#"><img src="images/demo/ima0012.jpg" alt="" /></a>
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="topnav">
                <ul>
                    <li class="active"><a href="index.jsp">INICIO</a><span>página principal</span></li>
                    <li><c:if test="${usuario != null}"><a href="ruta.jsp"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>RUTAS</a><span>Ingreso rutas </span></li>
                    <li><c:if test="${usuario != null}"><a href="reservar.reserva"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>RESERVAS</a><span>Reservas en línea</span></li>
                    <li><c:if test="${usuario != null}"><a href="modificar.reserva"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>MODIFICAR RESERVA</a><span>Modificar reservas</span></li>
                    <!-- <li>CONSULTA VENTAS</a><span>Consultar ventas</span></li> -->
                    <li><c:if test="${usuario != null}"><a href="conreserva.jsp"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>CONSULTAR RESERVAS</a><span>consultar reservas</span></li>

                </ul>
                <br class="clear" />
            </div>
        </div>
