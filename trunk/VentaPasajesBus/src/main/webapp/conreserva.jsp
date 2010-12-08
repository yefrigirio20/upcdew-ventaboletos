<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">
        <div id="content">

            <h2>CONSULTA DE RESERVAS POR EMPRESA DE TRANSPORTE</h2>
            <div id="respond">
                <form action="conreserva" method="post">
                    <table>
                        <tr>
                            <td><label for="name"><small>Rango de Fechas</small></label></td>
                            <td><label for="name"><small>Del</small></label>
                                <input type="text" name="fechasalida" id="fechasalida" size="22" readonly="readonly" />
                                    <img alt="Calendario"  src='/calendar/cal.gif' align='absmiddle' onmouseover="fnInitCalendar(this, 'fechasalida', 'style=calendar_blue.css,instance=single')">
                                <label for="name"><small>Al</small></label>
                                <input type="text" name="fechallegada" id="fechallegada" size="22" readonly="readonly" />
                                    <img alt="calendario"  src='/calendar/cal.gif' align='absmiddle' onmouseover="fnInitCalendar(this, 'fechallegada', 'style=calendar_blue.css,instance=single')">
                            </td>
                        </tr>
                    </table>
                    <p>
                        <input type="submit" value="Consultar" name="consultar" />
                    </p>

                    <table border="1" style="width: 100%">
                        
                        <thead>
                            <tr>
                                <th><strong>Ticket</strong></th>
                                <th><strong>Origen</strong></th>
                                <th><strong>Destino</strong></th>
                                <th><strong>Nombre Cliente</strong></th>
                                <th><strong>Tarifa</strong></th>
                                <th><strong>Asiento</strong></th>
                                <th><strong>Fecha y hora de salida</strong></th>
                                <th><strong>Fecha y hora de llegada</strong></th>
                            </tr>
                        </thead>
                        <tbody>
                            
                                <c:forEach var="reserva" items="${filtroReservas}">
                                <tr>
                                    <td align="center">${reserva.coTicket}</td>
                                    <td>${reserva.ruta.ciudadByNoCiudadOrigen.noCiudad}</td>
                                    <td>${reserva.ruta.ciudadByNoCiudadDestino.noCiudad}</td>
                                    <td>${reserva.cliente.noCliente}</td>
                                    <td align="right">${reserva.ruta.ssTarifa}</td>
                                    <td align="center">${reserva.nuAsiento}</td>
                                    <td>${reserva.ruta.feHoraSalida}</td>
                                    <td>${reserva.ruta.feHoraLlegada}</td>
                                </tr>
                            </c:forEach>
                            
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