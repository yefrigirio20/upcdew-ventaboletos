<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">
    <div id="content">

        <h2>CONFIRMACION DE INGRESO DE RUTAS</h2>
      <div id="respond">
        <form action="TransporteServlet" method="post">
          <p>
	    <label for="name"><small>Empresa de Transporte </small></label>
            <input type="text" name="name" id="name" value="${usuario.username}" size="22" />
          </p>

          <p>
	    <label for="name"><small>Origen</small></label>
             <select name="origen">
                <option>Lima</option>
                <option>Cuzco</option>
                <option>Arequipa</option>
                <option>Trujillo</option>
            </select>

          </p>
          <p>
	    <label for="name"><small>Destino</small></label>
            <select name="destino">
                <option>Trujillo</option>
                <option>Cuzco</option>
                <option>Arequipa</option>
                <option>Lima</option>
            </select>
          </p>
          <p>
	    <label for="name"><small>Fecha y Hora de Salida</small></label>
            <input type="text" name="fechasalida" id="name" value="" size="22" />
            <input type="text" name="horasalida" id="name" value="" size="5" />
          </p>
          <p>
	    <label for="name"><small>Fecha y Hora de Llegada</small></label>
            <input type="text" name="fechallegada" id="name" value="" size="22" />
            <input type="text" name="horallegada" id="name" value="" size="5" />
          </p>
          <p>
	    <label for="name"><small>Buses Asignados</small></label>
            <select name="buses">
                <option>KXT-1254</option>
                <option>AAA-9898</option>
                <option>BBB-6565</option>
                <option>CCC-3232</option>
            </select>
          </p>
          <p>
	    <label for="name"><small>Tarifa</small></label>
            <input type="text" name="tarifa" id="name" value="" size="22" />
          </p>
          <p>
          <input type="submit" value="Nuevo" name="nuevo" />
          <input type="submit" value="Grabar" name="grabar" />
          </p>
	<table border="1" style="width: 100%">
  	<caption></caption>
  	<col />
  	<col />
  	<col />
  	<col />
  	<col />
  	<tbody>
    	<tr>
      	<td><strong>Empresa de Transporte</strong></td>
      	<td><strong>Origen</strong></td>
      	<td><strong>Destino</strong></td>
      	<td><strong>Salida</strong></td>
        <td><strong>HoraSalida</strong></td>
      	<td><strong>Llegada</strong></td>
        <td><strong>HoraLlegada</strong></td>
        <td><strong>Tarifa</strong></td>
        <td><strong>Bus Placa</strong></td>
    </tr>
    <tr>
      <td>
     <c:forEach var="ruta" items="${rutas}">
        <tr>
            <td></td>
            <td>${ruta.ciudadOrigen.nombre}</td>
            <td>${ruta.ciudadDestino.nombre}</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>${ruta.tarifa}</td>
            <td>${ruta.bus.placa}</td>
        </tr>
    </c:forEach>
 </td>
    </tr>
  </tbody>
</table>

        </form>
      </div>
    </div>

    </div>
    <div class="clear"></div>
  </div>
<!-- ####################################################################################################### -->
<%@include  file="footer.jsp" %>
</body>
</html>
