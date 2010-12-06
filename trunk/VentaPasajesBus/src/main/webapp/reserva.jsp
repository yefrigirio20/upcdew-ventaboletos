<%@include file="header.jsp" %>
<script type="text/javascript" language="javascript">
    $(document).ready(function(){
        $("#frmconfirmareserva").validate({
            rules: {
                asiento: {
                    required: true,
                    number: true,
                    range: [1,44]
                    
                },
                nombre: {
                    required: true
                },
                dni: {
                    required: true,
                    number: true,
                    minlength: 8,
                    maxlength: 8
                },
                telefono: {
                    required: true,
                    number: true
                },
                direccion: {
                    required: true
                }

            },
            messages: {
                asiento: {
                    required: "* Ingrese el número de asiento",
                    minlength: "Ingrese un número de asiento de 1 a 44",
                    maxlength: "Ingrese un número de asiento de 1 a 44"
                },
                nombre: {
                    required: "* Ingrese el nombre del cliente"
                },
                dni: {
                    required: "* Ingrese el DNI del cliente",
                    number: "Ingrese un número válido",
                    minlength: "Ingrese los 8 digitos de su dni"
                },
                telefono: {
                    required: "* Ingrese el teléfono del cliente",
                    number: "Ingrese un número válido"
                },
                direccion: {
                    required: "* Ingrese la dirección del cliente"
                }
            }
        });
    });

</script>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">

        <h2>RESERVAS</h2>
        <div id="respond">
            <form id="frmconfirmareserva" action="confirmar.reserva" method="post">
                <table >
                    <thead>
                        <tr>
                            <th><strong>Seleccionar</strong></th>
                            <th><strong>Empresa de Transporte</strong></th>
                            <th><strong>Origen</strong></th>
                            <th><strong>Destino</strong></th>
                            <th><strong>Tarifa (S/.)</strong></th>
                            <th><strong>Salida</strong></th>
                            <th><strong>Llegada</strong></th>
                            <th><strong>Capacidad</strong></th>
                            <th><strong>Disponibilidad</strong></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <c:forEach var="ruta" items="${rutas}">
                            <tr>
                                <td><input type="checkbox" name="select"  /></td>
                                <td>${ruta.empresatransporte.noEmpresaTransporte}</td>
                                <td>${ruta.ciudadByNoCiudadOrigen.noCiudad}</td>
                                <td>${ruta.ciudadByNoCiudadDestino.noCiudad}</td>
                                <td>${ruta.ssTarifa}</td>
                                <td>${ruta.feHoraSalida}</td>
                                <td>${ruta.feHoraLlegada}</td>
                                <td>${ruta.qtCapacidadTotal}</td>
                                <td>${ruta.qtCapacidadDisp} <a href="#">Elegir</a></td>
                            </tr>
                        </c:forEach>
                        </tr>
                    </tbody>
                </table>
                <table>
                    <tbody>
                    <tr>
                        <td><label for="name"><small>Asiento:</small></label></td>
                        <td><input type="text" name="asiento" id="asiento" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td><label for="name"><small>Nombre Pasajero:</small></label></td>
                        <td><input type="text" name="nombre" id="nombre" value="" size="22" /></td>
                    </tr>
                    <tr>
                        <td><label for="name"><small>DNI:</small></label></td>
                        <td><input type="text" name="dni" id="dni" value="" size="22" /></td>
                    </tr>
                    <tr>
                        <td><label for="name"><small>Teléfono:</small></label></td>
                        <td><input type="text" name="telefono" id="telefono" value="" size="22" /></td>
                    </tr>
                    <tr>
                        <td><label for="name"><small>Dirección:</small></label></td>
                        <td><input type="text" name="direccion" id="direccion" value="" size="22" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Crear reserva" name="reservar" /></td>
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

            </form>
        </div>
    </div>



</div>
<!-- ####################################################################################################### -->
<%@include  file="footer.jsp" %>
</body>
</html>
