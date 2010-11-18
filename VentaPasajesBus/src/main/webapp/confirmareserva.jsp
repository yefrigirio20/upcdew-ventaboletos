<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">

<h2>CONFIRMACION DE LAS RESERVAS DE PASAJES</h2>
      <div id="respond">
        <form action="confirmareserva" method="post">
          <!-- <p>
	    <label for="name"><small>Empresa de Transporte</small></label>
            <select name="empresa">
                <option>Empresa1</option>
                <option>Empresa2</option>
                <option>Empresa3</option>
                <option>Empresa4</option>
            </select>
          </p> -->
          <p>
	    <label for="name"><small>Nro. de Ticket:</small></label>
            ${reserva.ticket}
          </p>
          <p>
	    <label for="name"><small>Ciudad origen:</small></label>
            ${reserva.ruta.ciudadOrigen.nombre}
          </p>
          <p>
	    <label for="name"><small>Ciudad destino:</small></label>
            ${reserva.ruta.ciudadDestino.nombre}
          </p>
          <p>
	    <label for="name"><small>Empresa de Transporte:</small></label>
            ${reserva.empresaTransporte.nombre}
          </p>
          <p>
	    <label for="name"><small>Asiento:</small></label>
            ${reserva.asiento}
          </p>
          <p>
	    <label for="name"><small>Tarifa a pagar:</small></label>
            ${reserva.ruta.tarifa}
          </p>
          <br>
          <p> </p>
          <p>
	    <label for="name"><small>Nombre del pasajero:</small></label>
            ${reserva.cliente.nombre}
          </p>
          <p>
	    <label for="name"><small>DNI:</small></label>
            ${reserva.cliente.idCliente}
          </p>
          <p>
	    <label for="name"><small>Teléfono:</small></label>
            ${reserva.cliente.telefono}
          </p>
          <p>
	    <label for="name"><small>Dirección:</small></label>
            ${reserva.cliente.direccion}
          </p>
          <p> </p>
          <tr>
            <td></td>
            <td><input type="submit" value="Cancelar e Imprimir Ticket" name="Imprimir" /></td>
          </tr>
          
            <br>
            <p>
	    Reservas realizadas:
          </p>
	  
          <!-- <p>
	    <label for="name"><small>Salida</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>
          <p>
	    <label for="name"><small>Llegada</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>-->
            <p>
          <input type="submit" value="Aceptar" name="aceptar" />
          
          </p>



        </form>
      </div>
    </div>



  </div>
<!-- ####################################################################################################### -->
<%@include  file="footer.jsp" %>
</body>
</html>
