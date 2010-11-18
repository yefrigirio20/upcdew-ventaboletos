<%@include file="header.jsp" %>
<script type="text/javascript" language="javascript">

    $(document).ready(function(){
        
        $('#trutas').dataTable();


        $("#frmrutas").validate({
            rules: {
                fechasalida: {
                    required: true
                },
                fechallegada: {
                    required: true
                },
                tarifa: {
                    required: true,
                    minlength: 2
                }

            },
            messages: {
                fechasalida: {
                    required: "* Ingrese la fecha y hora de salida"
                },
                fechallegada: {
                    required: "* Ingrese la fecha y hora de llegada"
                },
                tarifa: {
                    required: "* Ingrese la tarifa correcta"
            
                }
            }
        });
    });

</script>

<!-- ####################################################################################################### -->
<div class="wrapper col5">
    <div id="container">
        <div id="content">

            <h2>INGRESO DE RUTAS</h2>
            <div id="respond">
                <form id="frmrutas" action="TransporteServlet" method="post">
                    <table>
                        <tr>
                            <td><label for="name"><small>Empresa de Transporte:</small></label></td>
                            <td><input type="text" name="empresa" id="name" value="${usuario.empresaTransporte.nombre}" size="22" disabled/></td>
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
                            <td><input type="text" name="fechasalida" id="fechasalida" value="" size="22" /></td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Fecha y Hora de Llegada:</small></label></td>
                            <td><input type="text" name="fechallegada" id="fechallegada" value="" size="22" /></td>

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
                            <td><input type="text" name="tarifa" id="tarifa" value="" size="22" /></td>
                        </tr>
                        <tr>
                            <td></td><td><input type="submit" value="Nuevo" name="Nuevo" />
                                <input type="submit" value="Grabar" name="Grabar" /></td>
                        </tr>
                    </table>
                    <table id="trutas" class="ligth"  cellspacing=1 >

                        <thead>
                            <tr>
                                <th><strong>Empresa de Transporte</strong></th>
                                <th><strong>Origen</strong></th>
                                <th><strong>Destino</strong></th>
                                <th><strong>Salida</strong></th>
                                <th><strong>HoraSalida</strong></th>
                                <th><strong>Llegada</strong></th>
                                <th><strong>HoraLlegada</strong></th>
                                <th><strong>Tarifa</strong></th>
                                <th><strong>Bus Placa</strong></th>
                                <th><strong></strong></th>
                            </tr>
                    </thead>
                        <tbody>

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
                                <td><input type="button" value="Quitar" /></td>
                            </tr>
                            </tbody>
                        </c:forEach>
                        

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
