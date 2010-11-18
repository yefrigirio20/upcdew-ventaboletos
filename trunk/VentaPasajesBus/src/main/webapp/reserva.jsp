<%@include file="header.jsp" %>
<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">

        <h2>RESERVAS</h2>
        <div id="respond">
            <form action="reserva" method="post">
                <table>
                    <tr>
                        <td><label for="name"><small>Origen:</small></label></td>
                        <td><select name="origen">
                                <option>Lima</option>
                                <option>Cuzco</option>
                                <option>Arequipa</option>
                                <option>Trujillo</option>
                            </select>
                        </td>

                    </tr>
                    <tr>
                        <td><label for="name"><small>Destino:</small></label></td>
                        <td><select name="destino">
                                <option>Trujillo</option>
                                <option>Cuzco</option>
                                <option>Arequipa</option>
                                <option>Lima</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td><label for="name"><small>Fecha:</small></label></td>
                        <td><input type="text" name="fecha" id="name" value="" size="22" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Consultar" name="Consultar" /></td>
                    </tr>
                </table>
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
                            <td><strong>Tarifa S/.</strong></td>
                            <td><strong>Salida</strong></td>
                            <td><strong>Llegada</strong></td>
                            <td><strong>Capacidad</strong></td>
                            <td><strong>Disponibles</strong></td>
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
                                <td>${ruta.capacidadDisp} <a href="#">Seleccionar Asiento</a></td>
                            </tr>
                        </c:forEach>
                        </tr>
                        <tr>
                            <td><input type="checkbox" name="select" value="ON" /></td>
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
                            <td><input type="checkbox" name="select" value="ON" /></td>
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
                            <td><input type="checkbox" name="select" value="ON" /></td>
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
                            <td><input type="checkbox" name="select" value="ON" /></td>
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
                            <td><input type="checkbox" name="select" value="ON" /></td>
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
                <p>
                    <label for="name"><small>Asiento: </small></label>
                    <input type="text" name="asiento" id="name" value="" size="10" />
                </p>
                <p>
                    <label for="name"><small>Nombre Pasajero: </small></label>
                    <input type="text" name="nombre" id="name" value="" size="22" />
                </p>
                <p>
                    <label for="name"><small>DNI: </small></label>
                    <input type="text" name="dni" id="name" value="" size="22" />
                </p>
                <p>
                    <label for="name"><small>Telefono: </small></label>
                    <input type="text" name="telefono" id="name" value="" size="22" />
                </p>
                <p>
                    <label for="name"><small>Direccion</small></label>
                    <input type="text" name="direccion" id="name" value="" size="22" />
                </p>
                <!-- <p>
	    <label for="name"><small>Salida</small></label>
                  <input type="text" name="name" id="name" value="" size="22" />
                </p>
                <p>
	    <label for="name"><small>Llegada</small></label>
                  <input type="text" name="name" id="name" value="" size="22" />
                </p>-->
                <p>
                    <input type="submit" value="Reservar" name="reservar" />
                    <input type="submit" value="Borrar Datos" name="borrar" />
                </p>



            </form>
        </div>
    </div>



</div>
<!-- ####################################################################################################### -->
<%@include  file="footer.jsp" %>
</body>
</html>
