<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">
<h2>LA RESERVA HA SIDO PAGADA</h2>
      <div id="respond">
        <form action="reservar.reserva" method="post">
            <table>
          <tr>
              <td><label for="name"><small>Nro. de Ticket:</small></label>
            <td>${reserva.ticket}
          </tr>
          <tr>
	    <td><label for="name"><small>Ciudad origen:</small></label>
            <td>${reserva.ruta.ciudadOrigen.nombre}
          </tr>
          <tr>
	    <td><label for="name"><small>Ciudad destino:</small></label>
            <td>${reserva.ruta.ciudadDestino.nombre}
          </tr>
          <tr>
	    <td><label for="name"><small>Empresa de Transporte:</small></label>
            <td>${reserva.empresaTransporte.nombre}
          </tr>
          <tr>
	    <td><label for="name"><small>Asiento:</small></label>
            <td>${reserva.asiento}
          </tr>
          <tr>
	    <td><label for="name"><small>Tarifa a pagar:</small></label>
            <td>${reserva.ruta.tarifa}
          </tr>

          <tr> </tr>
          <tr>
	    <td><label for="name"><small>Nombre del pasajero:</small></label>
            <td>${reserva.cliente.nombre}
          </tr>
          <tr>
	    <td><label for="name"><small>DNI:</small></label>
            <td>${reserva.cliente.idCliente}
          </tr>
          <tr>
	    <td><label for="name"><small>Teléfono:</small></label>
            <td>${reserva.cliente.telefono}
          </tr>
          <tr>
	    <td><label for="name"><small>Dirección:</small></label>
            <td>${reserva.cliente.direccion}
          </tr>
          <tr> </tr>
          <tr>
            <td></td>
            <td><input type="submit" value="Aceptar" name="aceptar" /></td>
          </tr>
            </table>
            <!--<br>
            <p>
	    Reservas realizadas:
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
          <input type="submit" value="Aceptar" name="aceptar" />
          </p>-->
        </form>
      </div>
    </div>
  </div>
<!-- ####################################################################################################### -->
<%@include  file="footer.jsp" %>
</body>
</html>