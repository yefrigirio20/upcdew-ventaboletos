<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">
    <div id="content">

        <h2>MODIFICACION RESERVA</h2>
      <div id="respond">
          <form name="form0" action="buscarreserva" method="post">
          <p>
	    <label for="name"><small>Ticket</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>

          <p>
	    <label for="name"><small>Empresa de Transportes</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>
          <p>
	    <label for="name"><small>Nombre Pasajero</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>
          <p>
	    <label for="name"><small>Origen</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>
          <p>
	    <label for="name"><small>Destino</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>
          <p>
	    <label for="name"><small>Salida</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>
          <p>
	    <label for="name"><small>Llegada</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>
            <p>
          <input type="submit" value="Buscar" name="buscar" />
          <input type="submit" value="Limpiar Campos" name="limpiar" />
            </p><br></br>
          </form>
          <form name="form1" action="modreserva" method="post">

<table border="1" style="width: 100%">
  	<caption></caption>
  	<col />
  	<col />
  	<col />
  	<col />
  	<col />
  	<tbody>
    	<tr>
      	<td><strong>Seleccionar</strong></td>
        <td><strong>Numero de Ticket</strong></td>
      	<td><strong>Nombre de Empresa</strong></td>
      	<td><strong>Origen</strong></td>
      	<td><strong>Destino</strong></td>
        <td><strong>Tarifa S/.</strong></td>
      	<td><strong>Salida</strong></td>
      	<td><strong>Llegada</strong></td>
      	<td><strong>Capacidad</strong></td>
      	<td><strong>Numero de Asiento</strong></td>
    </tr>
    <tr>
      <td><input type="checkbox" name="select" value="ON" /></td>
      <td>${datos[0]}</td>
      <td>${datos[1]}</td>
      <td>${datos[2]}</td>
      <td>${datos[3]}</td>
      <td>${datos[4]}</td>
      <td>${datos[5]}</td>
      <td>${datos[6]}</td>
      <td>${datos[7]}</td>
      <td>${datos[8]}</td>
    </tr>
    <tr>
      <td><input type="checkbox" name="select" value="ON" /></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

        

          <!--<input type="submit" value="Modificar" name="modificar" />-->
          <input type="submit" value="Borrar Reserva" name="borrar" />
            <br></br>
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
