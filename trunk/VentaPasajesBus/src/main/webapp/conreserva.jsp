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
                            <td><label for="name"><small>Empresa de Transporte:</small></label>
                            <td><select name="empresaTransporte">
                                    <option>Todos</option>
                                    <option>Buses Unidos</option>
                                    <option>Mi Bus</option>
                                    <option>Transporte Veloz</option>
                                </select>
                        </tr>

                        <tr>
                            <td><label for="name"><small>Rango de Fechas</small></label></td>
                            <td><label for="name"><small>Del</small></label>
                                <input type="text" name="desde" id="name" value="" size="22" />
                                <label for="name"><small>Al</small></label>
                                <input type="text" name="hasta" id="name" value="" size="22" /></td>
                        </tr>
                    </table>
                    <p>
                        <input type="submit" value="Consultar" name="consultar" />
                    </p>

                    <table border="1" style="width: 100%">
                        
                        <thead>
                            <tr>
                                <th><strong>Item</strong></th>
                                <th><strong>Empresa de Transporte</strong></th>
                                <th><strong>Origen</strong></th>
                                <th><strong>Destino</strong></th>
                                <th><strong>Tarifa</strong></th>
                                <th><strong>Salida</strong></th>
                                <th><strong>Llegada</strong></th>
                                <th><strong>Capacidad</strong></th>
                                <th><strong>Disponibilidad</strong></th>
                            </tr>
                        </thead>
                        <tbody>
                            
                                <c:forEach var="ruta" items="${rutasFiltro}">
                                <tr>
                                    <td></td>
                                    <td>${ruta.empresaTransporte.nombre}</td>
                                    <td>${ruta.ciudadOrigen.nombre}</td>
                                    <td>${ruta.ciudadDestino.nombre}</td>
                                    <td>${ruta.tarifa}</td>
                                    <td>${ruta.fechaHoraSalida}</td>
                                    <td>${ruta.fechaHoraLlegada}</td>
                                    <td>40</td>
                                    <td></td>
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