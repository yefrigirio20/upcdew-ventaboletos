<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Modular Business | Full Width</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
<body id="top">
<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">

<h2>CONFIRMACION DE ELIMINACION DE LAS RESERVAS DE PASAJES</h2>
      <div id="respond">
        <form action="modreserva.jsp" method="post">
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
	    <label for="name"><small>Nombre Pasajero: </small></label>
            ${cliente[0]}
          </p>
          <p>
	    <label for="name"><small>DNI: </small></label>
            ${cliente[1]}
          </p>
          <p>
	    <label for="name"><small>Telefono: </small></label>
            ${cliente[2]}
          </p>
          <p>
	    <label for="name"><small>Direccion</small></label>
            ${cliente[3]}
          </p>
            
            
            <br></br>
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
          <input type="submit" value="Borrar Reservas" name="borrar" />
          <input type="submit" value="Cancelar" name="cancelar" />
          
          </p>



        </form>
      </div>
    </div>



  </div>
<!-- ####################################################################################################### -->
<%@include  file="footer.jsp" %>
</body>
</html>
