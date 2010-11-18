<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">
        <div id="content">

            <h2>INGRESO DE RUTAS</h2>
            <div id="respond">
                <form action="TransporteServlet" method="post">
                    <table>
                        <tr>
                            <td><label for="name"><small>Empresa de Transporte:</small></label></td>
                            <td><input type="text" name="empresa" id="name" value="${usuario.empresaTransporte.nombre}" size="22" /></td>
                        </tr>

                        <tr>
                            <td><label for="name"><small>Origen:</small></label></td>
                            <td><select name="origen">
                                    <option>Lima</option>
                                    <option>Cuzco</option>
                                    <option>Arequipa</option>
                                    <option>Trujillo</option>
                                </select></td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Destino:</small></label></td>
                            <td><select name="destino">
                                    <option>Trujillo</option>
                                    <option>Cuzco</option>
                                    <option>Arequipa</option>
                                    <option>Lima</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Fecha y Hora de Salida:</small></label></td>
                            <td><input type="text" name="fechasalida" id="name" value="" size="22" /></td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Fecha y Hora de Llegada:</small></label></td>
                            <td><input type="text" name="fechallegada" id="name" value="" size="22" /></td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Bus:</small></label></td>
                            <td><select name="bus">
                                    <option>KXT-1254</option>
                                    <option>AAA-9898</option>
                                    <option>BBB-6565</option>
                                    <option>CCC-3232</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Tarifa:</small></label></td>
                            <td><input type="text" name="tarifa" id="name" value="" size="22" /></td>
                        </tr>
                        <tr>
                            <td></td><td><input type="submit" value="Nuevo" name="Nuevo" />
                                <input type="submit" value="Grabar" name="Grabar" /></td>
                        </tr>
                    </table>
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
                                <td><strong>HoraSalida</strong></td>
                                <td><strong>Llegada</strong></td>
                                <td><strong>HoraLlegada</strong></td>
                                <td><strong>Tarifa</strong></td>
                                <td><strong>Bus Placa</strong></td>
                            </tr>
                            <tr>
                                <td>
                                    <c:forEach var="ruta" items="${rutas}">
                                <tr>
                                    <td>${ruta.empresaTransporte.nombre}</td>
                                    <td>${ruta.ciudadOrigen.nombre}</td>
                                    <td>${ruta.ciudadDestino.nombre}</td>
                                    <td>${ruta.fechaHoraSalida}</td>
                                    <td></td>
                                    <td>${ruta.fechaHoraLlegada}</td>
                                    <td></td>
                                    <td>${ruta.tarifa}</td>
                                    <td>${ruta.bus.placa}</td>
                                </tr>
                            </c:forEach>
                            </td>
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
