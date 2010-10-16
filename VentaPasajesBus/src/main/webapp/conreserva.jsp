<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Modular Business | Style Demo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
<body id="top">
<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
  <div id="container">
    <div id="content">

        <h2>CONSULTA DE RESERVAS POR EMPRESA DE TRANSPORTE</h2>
      <div id="respond">
        <form action="#" method="post">
          <p>
	    <label for="name"><small>Empresa de Transporte</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
          </p>

          <p>
	    <label for="name"><small>Rango de Fechas</small></label>
            <label for="name"><small>Del</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
            <label for="name"><small>Al</small></label>
            <input type="text" name="name" id="name" value="" size="22" />
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
      	<td><strong>Llegada</strong></td>
        <td><strong>Capacidad</strong></td>
      	<td><strong>Disponibilidad</strong></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
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