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
<script type="text/javascript"  language="javascript">

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
                            <td><input type="text" name="empresa" id="name" value="${usuario.empresatransporte.noEmpresaTransporte}" size="22" readonly="readonly" /></td>
                        </tr>

                        <tr>
                            <td><label for="name"><small>Origen:</small></label></td>
                            <td><select name="origen">
                                    <c:forEach var="ciudad" items="${ciudadesPorEmpresa}">
                                        <option value="${ciudad.noCiudad}">${ciudad.noCiudad}</option>
                                    </c:forEach>
                                </select></td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Destino:</small></label></td>
                            <td><select name="destino">
                                    <c:forEach var="ciudad" items="${ciudadesPorEmpresa}">
                                        <option value="${ciudad.noCiudad}" >${ciudad.noCiudad}</option>
                                    </c:forEach>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Fecha y Hora de Salida:</small></label></td>
                            <td>Día: <input type="text" name="fechasalida" id="fechasalida" size="22" readonly="readonly" />
                                <img alt="Calendario"  src='/calendar/cal.gif' align='absmiddle' onmouseover="fnInitCalendar(this, 'fechasalida', 'style=calendar_blue.css,instance=single')">  
                                Hora:
                                <select name="horasalida">
                                    <option value="00">00</option>
                                    <option value="01">01</option>
                                    <option value="02">02</option>
                                    <option value="03">03</option>
                                    <option value="04">04</option>
                                    <option value="05">05</option>
                                    <option value="06">06</option>
                                    <option value="07">07</option>
                                    <option value="08">08</option>
                                    <option value="09">09</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                    <option value="13">13</option>
                                    <option value="14">14</option>
                                    <option value="15">15</option>
                                    <option value="16">16</option>
                                    <option value="17">17</option>
                                    <option value="18">18</option>
                                    <option value="19">19</option>
                                    <option value="20">20</option>
                                    <option value="21">21</option>
                                    <option value="22">22</option>
                                    <option value="23">23</option>
                                </select>
                                Minutos:
                                <select name="minutosalida">
                                    <option value="00">00</option>
                                    <option value="10">10</option>
                                    <option value="20">20</option>
                                    <option value="30">30</option>
                                    <option value="40">40</option>
                                    <option value="50">50</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Fecha y Hora de Llegada:</small></label></td>
                            <td>Día: <input type="text" name="fechallegada" id="fechallegada" size="22" readonly="readonly" />
                                <img alt="calendario"  src='/calendar/cal.gif' align='absmiddle' onmouseover="fnInitCalendar(this, 'fechallegada', 'style=calendar_blue.css,instance=single')">
                                Hora:
                                <select name="horallegada">
                                    <option>00</option>
                                    <option>01</option>
                                    <option>02</option>
                                    <option>03</option>
                                    <option>04</option>
                                    <option>05</option>
                                    <option>06</option>
                                    <option>07</option>
                                    <option>08</option>
                                    <option>09</option>
                                    <option>10</option>
                                    <option>11</option>
                                    <option>12</option>
                                    <option>13</option>
                                    <option>14</option>
                                    <option>15</option>
                                    <option>16</option>
                                    <option>17</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                    <option>22</option>
                                    <option>23</option>
                                </select>
                                Minutos:
                                <select name="minutollegada">
                                    <option>00</option>
                                    <option>10</option>
                                    <option>20</option>
                                    <option>30</option>
                                    <option>40</option>
                                    <option>50</option>
                                </select>
                            </td>

                        </tr>
                        <tr>
                            <td><label for="name"><small>Bus:</small></label></td>
                            <td><select name="bus">
                                    <c:forEach var="bus" items="${usuario.empresatransporte.buses}">
                                        <option>${bus.coPlaca}</option>
                                    </c:forEach>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label for="name"><small>Tarifa:</small></label></td>
                            <td><input type="text" name="tarifa" id="tarifa" value="" size="22" /></td>
                        </tr>
                        <tr>
                            <td></td><td><!-- <input type="submit" value="Nuevo" name="Nuevo" /> -->
                                <input type="submit" value="Grabar" name="Grabar" /></td>
                        </tr>
                    </table>
                    <table id="trutas" class="ligth"  cellspacing=1 >

                        <thead>
                            <tr>
                                <!--<th><strong>Empresa de Transporte</strong></th>-->
                                <th><strong>Origen</strong></th>
                                <th><strong>Destino</strong></th>
                                <th><strong>Fecha y Hora de Salida</strong></th>
                                <!-- <th><strong>HoraSalida</strong></th> -->
                                <th><strong>Fecha y Hora de Llegada</strong></th>
                                <!-- <th><strong>HoraLlegada</strong></th>-->
                                <th><strong>Tarifa</strong></th>
                                <th><strong>Bus Placa</strong></th>
                                <!-- <th><strong></strong></th> -->
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach var="ruta" items="${rutasPorEmpresa}">
                                <tr>
                                    <!--<td>${ruta.empresatransporte.noEmpresaTransporte}</td>-->
                                    <td>${ruta.ciudadByNoCiudadOrigen.noCiudad}</td>
                                    <td>${ruta.ciudadByNoCiudadDestino.noCiudad}</td>
                                    <td>${ruta.feHoraSalida}</td>
                                    <!-- <td></td> -->
                                    <td>${ruta.feHoraLlegada}</td>
                                    <!-- <td></td> -->
                                    <td align="right">${ruta.ssTarifa}</td>
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
