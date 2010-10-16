<div class="wrapper col1">
  <div id="topbar">
    <p>Tel: 615-4000 | Mail: info@busesdelperu.pe</p>
    <ul>
      <li><a href="login.jsp">Login</a></li>
      <li><a href="#">Nuestros Buses</a></li>
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
      <li><c:if test="${usuario != null}"><a href="reserva.jsp"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>RESERVAS</a><span>Reservas en línea</span></li>
      <li><c:if test="${usuario != null}"><a href="modreserva.jsp"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>MODIFICAR RESERVA</a><span>Modificar reservas</span></li>
      <li><c:if test="${usuario != null}"><a href="conventa.jsp"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>CONSULTA VENTAS</a><span>Consultar ventas</span></li>
      <li><c:if test="${usuario != null}"><a href="conreserva.jsp"></c:if><c:if test="${usuario == null}"><a href="login.jsp"></c:if>CONSULTA RERSERVAS</a><span>consultar reservas</span></li>

    </ul>
    <br class="clear" />
  </div>
</div>
