<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">

<h2>CONFIRMACION DE LAS RESERVAS DE PASAJES</h2>
      <div id="respond">
        <form action="reserva.jsp" method="post">
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
            <td><input type="submit" value="Imprimir Ticket" name="Imprimir" /></td>
          </tr>
          
            <br>
            <p>
	    Reservas realizadas:
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
        
      <td>12345</td>
      <td>Empresa1</td>
      <td>Lima</td>
      <td>Trujillo</td>
      <td>50</td>
      <td>Lunes 29</td>
      <td>Martes 30</td>
      <td>44 pasajeros</td>
      <td>10</td>
    </tr>
    <tr>
        <td>12345</td>
      <td>Empresa2</td>
      <td>Lima</td>
      <td>Trujillo</td>
      <td>50</td>
      <td>Lunes 29</td>
      <td>Martes 30</td>
      <td>44 pasajeros</td>
      <td>10</td>
    </tr>
    <tr>
        <td>12345</td>
      <td>Empresa2</td>
      <td>Lima</td>
      <td>Trujillo</td>
      <td>50</td>
      <td>Lunes 29</td>
      <td>Martes 30</td>
      <td>44 pasajeros</td>
      <td>10</td>
    </tr>
    <tr>
        <td>12345</td>
      <td>Empresa2</td>
      <td>Lima</td>
      <td>Trujillo</td>
      <td>50</td>
      <td>Lunes 29</td>
      <td>Martes 30</td>
      <td>44 pasajeros</td>
      <td>10</td>
    </tr>
    <tr>
        
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
