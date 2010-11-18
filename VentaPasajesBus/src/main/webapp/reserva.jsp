<%@include file="header.jsp" %>
<script type="text/javascript" language="javascript">
    $(document).ready(function(){
        $("#frmconfirmareserva").validate({
            rules: {
                asiento: {
                    required: true
                },
                nombre: {
                    required: true
                },
                dni: {
                    required: true
                },
                telefono: {
                    required: true
                },
                direccion: {
                    required: true
                }

            },
            messages: {
                asiento: {
                    required: "* Ingrese el número de asiento"
                },
                nombre: {
                    required: "* Ingrese el nombre del cliente"
                },
                dni: {
                    required: "* Ingrese el DNI del cliente"
                },
                telefono: {
                    required: "* Ingrese el telefono del cliente"
                },
                direccion: {
                    required: "* Ingrese la direccion del cliente"
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
                <table border="0" style="width: 100%">
                    <caption></caption>
                    <col />
                    <col />
                    <col />
                    <col />
                    <col />
                    <tbody>
                        <tr>
                            <td><strong>Seleccionar</strong></td>
                            <td><strong>Empresa de Transporte</strong></td>
                            <td><strong>Origen</strong></td>
                            <td><strong>Destino</strong></td>
                            <td><strong>Tarifa (S/.)</strong></td>
                            <td><strong>Salida</strong></td>
                            <td><strong>Llegada</strong></td>
                            <td><strong>Capacidad</strong></td>
                            <td><strong>Disponibilidad</strong></td>
                        </tr>
                        <tr>
                            <c:forEach var="ruta" items="${rutas}">
                            <tr>
                                <td><input type="checkbox" name="select"  /></td>
                                <td>${ruta.empresaTransporte.nombre}</td>
                                <td>${ruta.ciudadOrigen.nombre}</td>
                                <td>${ruta.ciudadDestino.nombre}</td>
                                <td>${ruta.tarifa}</td>
                                <td>${ruta.fechaHoraSalida}</td>
                                <td>${ruta.fechaHoraLlegada}</td>
                                <td>${ruta.capacidadTotal}</td>
                                <td>${ruta.capacidadDisp} <a href="#">Elegir</a></td>
                            </tr>
                        </c:forEach>
                        </tr>
                    </tbody>
                </table>
                <table>
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
