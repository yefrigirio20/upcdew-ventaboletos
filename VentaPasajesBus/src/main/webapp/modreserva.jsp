<%@include file="header.jsp" %>

<script type="text/javascript" language="javascript">

    $(document).ready(function(){
        $("#frmmodifica").validate({
            rules: {
                ticket: {
                    required: true,
                    number: true
                }
            },
            messages: {
                ticket: {
                    required: "* Ingrese un número de ticket válido",
                    number: "* Ingrese un número de ticket válido"
                }
            }
        });
    });

</script>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">
        <div id="content">

            <h2>MODIFICACION RESERVA</h2>
            <div id="respond">
                <form id="frmmodifica" name="frmmodifica" action="buscarreserva" method="post">
                    <table>
                        <tr>
                            <td><label for="name"><small>Ticket:</small></label></td>
                            <td><input type="text" name="ticket" id="ticket" value="" size="22" /></td>
                        </tr>

                        <tr>
                            <td><label for="name"><small>Empresa de Transportes:</small></label></td>
                            <td><select name="empresaTransporte">
                                    <option>Todos</option>
                                    <option>Buses Unidos</option>
                                    <option>Mi Bus</option>
                                    <option>Transporte Veloz</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Nombre Pasajero:</small></label></td>
                            <td><input type="text" name="name" id="name" value="" size="22" /></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Origen:</small></label></td>
                            <td><input type="text" name="name" id="name" value="" size="22" /></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Destino:</small></label></td>
                            <td><input type="text" name="name" id="name" value="" size="22" /></td>
                        </tr>
                        <!-- <tr>
                            <td><label for="name"><small>Salida:</small></label></td>
                            <td><input type="text" name="name" id="name" value="" size="22" /></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Llegada:</small></label></td>
                            <td><input type="text" name="name" id="name" value="" size="22" /></td>
                        </tr>-->
                    </table>
                    <p>
                        <input type="submit" value="Buscar" name="buscar" />
                        <input type="submit" value="Limpiar Campos" name="limpiar" />
                    </p><br />
                </form>
                <form name="frmmodreserva" action="cancelar.reserva" method="post">

                    <table border="1" style="width: 100%">

                        <thead>
                            <tr>
                                <th><strong>Seleccionar</strong></th>
                                <th><strong>Numero de Ticket</strong></th>
                                <th><strong>Cliente</strong></th>
                                <th><strong>DNI Cliente</strong></th>
                                <th><strong>Nombre de Empresa</strong></th>
                                <th><strong>Origen</strong></th>
                                <th><strong>Destino</strong></th>
                                <th><strong>Tarifa S/.</strong></th>
                                <th><strong>Salida</strong></th>
                                <th><strong>Llegada</strong></th>
                                <th><strong>Numero de Asiento</strong></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="select" value="ON" /></td>
                                <td>${reserva.ticket}</td>
                                <td>${reserva.cliente.nombre}</td>
                                <td>${reserva.cliente.idCliente}</td>
                                <td>${reserva.empresaTransporte.nombre}</td>
                                <td>${reserva.ruta.ciudadOrigen.nombre}</td>
                                <td>${reserva.ruta.ciudadDestino.nombre}</td>
                                <td>${reserva.ruta.tarifa}</td>
                                <td></td>
                                <td></td>
                                <td>${reserva.asiento}</td>
                            </tr>
                        </tbody>

                    </table>
                    <input type="submit" value="Pagar e Imprimir Ticket" name="pagar" />
                    <input type="submit" value="Borrar Reserva" name="borrar" />
                    <br />
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
