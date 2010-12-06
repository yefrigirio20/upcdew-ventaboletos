<%@include file="header.jsp" %>
<script type="text/javascript" language="javascript">

    $(document).ready(function(){
       
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
                    minlength: 2,
                    number: true
                }
            },
            messages: {
                fechasalida: {
                    required: "* Ingrese la fecha y hora en formato dd/mm/aaaa hh:mm:ss"
                },
                fechallegada: {
                    required: "* Ingrese la fecha y hora en formato dd/mm/aaaa hh:mm:ss"
                },
                tarifa: {
                    required: "* Ingrese la tarifa correcta",
                    number: "Ingrese un número válido"
                }
            }
        });
    });

</script>
<script language="javascript">

//***** Function formating the Date for inputbox *****

function fnSetDateFormat(oDateFormat)
{
	oDateFormat['FullYear'];		//Example = 2007
	oDateFormat['Year'];			//Example = 07
	oDateFormat['FullMonthName'];	//Example = January
	oDateFormat['MonthName'];		//Example = Jan
	oDateFormat['Month'];			//Example = 01
	oDateFormat['Date'];			//Example = 01
	oDateFormat['FullDay'];			//Example = Sunday
	oDateFormat['Day'];				//Example = Sun
	oDateFormat['Hours'];			//Example = 01
	oDateFormat['Minutes'];			//Example = 01
	oDateFormat['Seconds'];			//Example = 01

	var sDateString;

	//Example = 01/01/00  dd/mm/yy
	//sDateString = oDateFormat['Date'] +"/"+ oDateFormat['Month'] +"/"+ oDateFormat['Year'];

	//Example = 01/01/0000  dd/mm/yyyy
	sDateString = oDateFormat['Date'] +"/"+ oDateFormat['Month'] +"/"+ oDateFormat['FullYear'];

	//Example = 0000-01-01 yyyy/mm/dd
	//sDateString = oDateFormat['FullYear'] +"-"+ oDateFormat['Month'] +"-"+ oDateFormat['Date'];

	//Example = Jan-01-0000 Mmm/dd/yyyy
	//sDateString = oDateFormat['MonthName'] +"-"+ oDateFormat['Date'] +"-"+ oDateFormat['FullYear'];

	return sDateString;
}

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
                            <td><input type="text" name="empresa" id="name" value="${usuario.empresatransporte.noEmpresaTransporte}" size="22"/></td>
                        </tr>

                        <tr>
                            <td><label for="name"><small>Origen:</small></label></td>
                            <td><select name="origen">
                                    <option>Lima</option>
                                    <option>Cuzco</option>
                                    <option>Arequipa</option>
                                    <option>Trujillo</option>
                                    <option>Ica</option>
                                    <option>Tumbes</option>
                                </select></td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Destino:</small></label></td>
                            <td><select name="destino">
                                    <option>Lima</option>
                                    <option>Cuzco</option>
                                    <option>Arequipa</option>
                                    <option>Trujillo</option>
                                    <option>Ica</option>
                                    <option>Tumbes</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Fecha y Hora de Salida:</small></label></td>
                            <td><input type="text" name="fechasalida" id="fechasalida1" value="" size="22" />
                            <img src='/calendar/cal.gif' align='absmiddle' onmouseover="fnInitCalendar(this, 'fechasalida1', 'style=calendar_blue.css,instance=single')">
                            </td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Fecha y Hora de Llegada:</small></label></td>
                            <td><input type="text" name="fechallegada" id="fechallegada1" value="" size="22" />
                            <img src='/calendar/cal.gif' align='absmiddle' onmouseover="fnInitCalendar(this, 'fechallegada1', 'style=calendar_blue.css,instance=single')">
                            </td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Bus:</small></label></td>
                            <td><select name="bus">
                                    <option>WMX-0001</option>
                                    <option>WMX-0002</option>
                                    <option>WMX-0003</option>
                                    <option>WMX-0004</option>
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
                                <!-- <th><strong></strong></th> -->
                            </tr>
                    </thead>
                        <tbody>

                                <c:forEach var="ruta" items="${rutasPorEmpresa}">
                            <tr>
                                <td>${ruta.empresatransporte.noEmpresaTransporte}</td>
                                <td>${ruta.ciudadByNoCiudadOrigen.noCiudad}</td>
                                <td>${ruta.ciudadByNoCiudadDestino.noCiudad}</td>
                                <td>${ruta.feHoraSalida}</td>
                                <td></td>
                                <td>${ruta.feHoraLlegada}</td>
                                <td></td>
                                <td>${ruta.ssTarifa}</td>
                                <td>${ruta.bus.coPlaca}</td>
                                <!-- <td><input type="button" value="Quitar" /></td> -->
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
