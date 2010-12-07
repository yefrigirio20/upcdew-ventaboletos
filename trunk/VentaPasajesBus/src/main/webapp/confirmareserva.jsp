<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">
<h2>CONFIRMACION DE LAS RESERVAS DE PASAJES</h2>
      <div id="respond">
        <form action="cancelar.reserva" method="post">
            <table>
          <tr>
              <td><label for="name"><small>Nro. de Ticket:</small></label>
            <td>${reserva.coTicket}
          </tr>
          <tr>
	    <td><label for="name"><small>Ciudad origen:</small></label>
            <td>${reserva.ruta.ciudadByNoCiudadOrigen.noCiudad}
          </tr>
          <tr>
	    <td><label for="name"><small>Ciudad destino:</small></label>
            <td>${reserva.ruta.ciudadByNoCiudadDestino.noCiudad}
          </tr>
          <tr>
	    <td><label for="name"><small>Empresa de Transporte:</small></label>
            <td>${reserva.empresatransporte.noEmpresaTransporte}
          </tr>
          <tr>
	    <td><label for="name"><small>Asiento:</small></label>
            <td>${reserva.nuAsiento}
          </tr>
          <tr>
	    <td><label for="name"><small>Tarifa a pagar:</small></label>
            <td>${reserva.ruta.ssTarifa}
          </tr>
          
          <tr> </tr>
          <tr>
	    <td><label for="name"><small>Nombre del pasajero:</small></label>
            <td>${reserva.cliente.noCliente}
          </tr>
          <tr>
	    <td><label for="name"><small>DNI:</small></label>
            <td>${reserva.cliente.coDni}
          </tr>
          <tr>
	    <td><label for="name"><small>Teléfono:</small></label>
            <td>${reserva.cliente.nuTelefono}
          </tr>
          <tr>
	    <td><label for="name"><small>Dirección:</small></label>
            <td>${reserva.cliente.noDireccion}
          </tr>
          <tr> </tr>
          <tr>
            <td></td>
            <td><input type="submit" value="Pagar e Imprimir Ticket" name="Imprimir" /><input type="submit" value="Aceptar" name="aceptar" /></td>
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