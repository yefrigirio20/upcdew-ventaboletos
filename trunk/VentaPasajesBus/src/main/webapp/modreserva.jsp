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
<script type="text/javascript" language="javascript" >
    function valida(){
        opciones = document.getElementsByName("reservaSeleccion");

        var seleccionado = false;
        for(var i=0; i<opciones.length; i++) {
            if(opciones[i].checked) {
                seleccionado = true;
                break;
            }
        }

        if(!seleccionado) {
            alert("Debe seleccionar una ruta");
            return false;
        }
    }
</script>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">
        <div id="content">

            <h2>PAGAR O ELIMINAR RESERVA</h2>
            <div id="respond">
                <!-- <form id="frmmodifica" name="frmmodifica" action="buscarreserva" method="post">
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
                <!-- </table>
                <p>
                    <input type="submit" value="Buscar" name="buscar" />
                    <input type="submit" value="Limpiar Campos" name="limpiar" />
                </p><br />
            </form>-->
                <form name="frmmodreserva" action="cancelar.mod.reserva" method="post">

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
                            <c:forEach var="reserva" items="${reservasPorCancelar}">
                                <tr>
                                    <td><input type="radio" name="reservaSeleccion" id="reservaSeleccion" value="${reserva.coTicket}" /></td>
                                    <td>${reserva.coTicket}</td>
                                    <td>${reserva.cliente.noCliente}</td>
                                    <td>${reserva.cliente.coDni}</td>
                                    <td>${reserva.empresatransporte.noEmpresaTransporte}</td>
                                    <td>${reserva.ruta.ciudadByNoCiudadOrigen.noCiudad}</td>
                                    <td>${reserva.ruta.ciudadByNoCiudadDestino.noCiudad}</td>
                                    <td>${reserva.ruta.ssTarifa}</td>
                                    <td>${reserva.ruta.feHoraSalida}</td>
                                    <td>${reserva.ruta.feHoraLlegada}</td>
                                    <td>${reserva.nuAsiento}</td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                    <input type="submit" value="Pagar Ticket" name="pagar" onClick="return valida()"/>
                    <input type="submit" value="Borrar Reserva" name="borrar" onClick="return valida()"/>
                    <p />

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
