<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">
        <div id="content">

            <h2>MODIFICACION RESERVA</h2>
            <div id="respond">
                <form name="form0" action="buscarreserva" method="post">
                    <table>
                        <tr>
                            <td><label for="name"><small>Ticket:</small></label></td>
                            <td><input type="text" name="name" id="name" value="" size="22" /></td>
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
                <form name="frmmodreserva" action="modreserva" method="post">

                    <table border="1" style="width: 100%">

                        <thead>
                            <tr>
                                <th><strong>Seleccionar</strong></th>
                                <th><strong>Numero de Ticket</strong></th>
                                <th><strong>Nombre de Empresa</strong></th>
                                <th><strong>Origen</strong></th>
                                <th><strong>Destino</strong></th>
                                <th><strong>Tarifa S/.</strong></th>
                                <th><strong>Salida</strong></th>
                                <th><strong>Llegada</strong></th>
                                <th><strong>Capacidad</strong></th>
                                <th><strong>Numero de Asiento</strong></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="select" value="ON" /></td>
                                <td>${datos[0]}</td>
                                <td>${datos[1]}</td>
                                <td>${datos[2]}</td>
                                <td>${datos[3]}</td>
                                <td>${datos[4]}</td>
                                <td>${datos[5]}</td>
                                <td>${datos[6]}</td>
                                <td>${datos[7]}</td>
                                <td>${datos[8]}</td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="select" value="ON" /></td>
                                <td></td>
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
                    <input type="submit" value="Pagar" name="pagar" />
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
