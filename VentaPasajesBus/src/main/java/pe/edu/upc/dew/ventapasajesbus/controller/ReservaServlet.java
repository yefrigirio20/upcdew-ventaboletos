/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upc.dew.ventapasajesbus.model.Bus;
import pe.edu.upc.dew.ventapasajesbus.model.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.model.Cliente;
import pe.edu.upc.dew.ventapasajesbus.model.EmpresaTransporte;
import pe.edu.upc.dew.ventapasajesbus.model.Reserva;
import pe.edu.upc.dew.ventapasajesbus.model.Ruta;

/**
 *
 * @author jdamian
 */
public class ReservaServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        String cliente[] = {request.getParameter("nombre"),
                            request.getParameter("dni"),
                            request.getParameter("telefono"),
                            request.getParameter("direccion")};
        session.setAttribute("cliente", cliente);

        request.getRequestDispatcher("confirmareserva.jsp").forward(request, response);
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        HttpSession session = request.getSession();
        //ArrayList<Ruta> rutas = (ArrayList<Ruta>) session.getAttribute("rutas");

        Cliente cliente = new Cliente();
        cliente.setNombre(request.getParameter("nombre"));
        cliente.setIdCliente(request.getParameter("dni"));
        cliente.setTelefono(request.getParameter("telefono"));
        cliente.setDireccion(request.getParameter("direccion"));

        Reserva reserva = new Reserva();
        reserva.setCliente(cliente);
        //reserva.setEmpresaTransporte(rutas.get(0).getEmpresaTransporte());
        //reserva.setRuta(rutas.get(0));
        reserva.setPagado(false);
        reserva.setTicket(1);
        reserva.setAsiento(Integer.parseInt(request.getParameter("asiento")));

        session.setAttribute("reserva", reserva);
        request.getRequestDispatcher("confirmareserva.jsp").forward(request, response);


/*



        // A�adimos empresas de transporte
        EmpresaTransporte empresaTransporte1 = new EmpresaTransporte();
        empresaTransporte1.setNombre("Buses Unidos");

        EmpresaTransporte empresaTransporte2 = new EmpresaTransporte();
        empresaTransporte2.setNombre("Mi Bus");

        EmpresaTransporte empresaTransporte3 = new EmpresaTransporte();
        empresaTransporte3.setNombre("Transporte Veloz");

        // A�adimos a la lista de Empresas de transporte cada empresa de transporte
        ArrayList<EmpresaTransporte> empresasTransporte = new ArrayList<EmpresaTransporte>();
        empresasTransporte.add(empresaTransporte1);
        empresasTransporte.add(empresaTransporte2);
        empresasTransporte.add(empresaTransporte3);

        // A�adimos buses nuevos
        Bus bus1= new Bus();
        bus1.setPlaca("AAA-9898");
        Bus bus2= new Bus();
        bus2.setPlaca("BBB-6565");
        Bus bus3= new Bus();
        bus3.setPlaca("CCC-3232");
        Bus bus4= new Bus();
        bus4.setPlaca("KXT-1254");

        // Agregamos a la lista de buses cada bus creado
        ArrayList<Bus> buses = new ArrayList<Bus>();
        buses.add(bus1);
        buses.add(bus2);
        buses.add(bus3);
        buses.add(bus4);

        // A�adimos ciudades nuevas
        Ciudad ciudad = new Ciudad();
        ciudad.setNombre("Lima");

        Ciudad ciudad1= new Ciudad();
        ciudad1.setNombre("Cuzco");

        Ciudad ciudad2 = new Ciudad();
        ciudad2.setNombre("Arequipa");

        Ciudad ciudad3 = new Ciudad();
        ciudad3.setNombre("Trujillo");

        // Agregamos a la lista de ciudades cada ciudad creada
        ArrayList<Ciudad> ciudades = new ArrayList<Ciudad>();
        ciudades.add(ciudad);
        ciudades.add(ciudad1);
        ciudades.add(ciudad2);
        ciudades.add(ciudad3);

        // Creamos rutas pre-existentes temporalmente
        ArrayList<Ruta> rutasExistentes = new ArrayList<Ruta>();

        // Creamos una ruta pre-existente
        Ruta ruta1 = new Ruta();
        ruta1.setEmpresaTransporte(empresaTransporte1);
        ruta1.setCiudadOrigen(ciudad1);
        ruta1.setCiudadDestino(ciudad2);
        ruta1.setBus(bus1);
        ruta1.setTarifa(55.00);

        SimpleDateFormat df = new SimpleDateFormat ("dd/mm/yyyy hh:mm");
        Date fecha1;
        try {
            fecha1 = df.parse("16/10/2010 02:00");
            ruta1.setFechaHoraSalida(fecha1);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        Date fecha2;
        try {
            fecha2 = df.parse("16/10/2010 05:00");
            ruta1.setFechaHoraLlegada(fecha2);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Agregamos la primera ruta pre-existente
        rutasExistentes.add(ruta1);

        // Creamos una ruta pre-existente
        Ruta ruta2 = new Ruta();
        ruta2.setEmpresaTransporte(empresaTransporte2);
        ruta2.setCiudadOrigen(ciudad2);
        ruta2.setCiudadDestino(ciudad3);
        ruta2.setBus(bus2);
        ruta2.setTarifa(61.00);

        try {
            fecha1 = df.parse("18/10/2010 10:00");
            ruta2.setFechaHoraSalida(fecha1);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            fecha2 = df.parse("18/10/2010 12:00");
            ruta2.setFechaHoraLlegada(fecha2);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Agregamos la primera ruta pre-existente
        rutasExistentes.add(ruta2);

        // Creamos una ruta pre-existente
        Ruta ruta3 = new Ruta();
        ruta3.setEmpresaTransporte(empresaTransporte3);
        ruta3.setCiudadOrigen(ciudad3);
        ruta3.setCiudadDestino(ciudad2);
        ruta3.setBus(bus3);
        ruta3.setTarifa(25.00);

        try {
            fecha1 = df.parse("20/10/2010 16:00");
            ruta3.setFechaHoraSalida(fecha1);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            fecha2 = df.parse("20/10/2010 18:00");
            ruta3.setFechaHoraLlegada(fecha2);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Agregamos la primera ruta pre-existente
        rutasExistentes.add(ruta3);

        // Creamos el array de rutas que ser�n obtenidas en la consulta
        ArrayList<Ruta> rutasFiltro = new ArrayList<Ruta>();

        // Obtenemos los par�metros enviados en la pantalla de ruta
        String origen = request.getParameter("origen");
        String destino = request.getParameter("destino");
        String fechaTexto = request.getParameter("fecha");

        // Obtenemos las fechas a consultar pero antes inicializa las variables
        // fecha1 y fecha2 con la hora actual (temporalmente)
        Calendar cal = Calendar.getInstance();
        Date fecha = cal.getTime();
        try {
            fecha = df.parse(fechaTexto);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Buscamos las rutas coincidentes seg�n la fecha desde y hasta consultadas
        for (int i=0; i<rutasExistentes.size(); i++) {
            if ((rutasExistentes.get(i).getFechaHoraSalida().before(fecha)) && (rutasExistentes.get(i).getFechaHoraLlegada().after(fecha))) {
                // Agregamos la ruta si coincide en las fechas desde y hasta
                rutasFiltro.add(rutasExistentes.get(i));
            }
        }

       // Enviamos el atributo a la sesi�n
       session = request.getSession();
       session.setAttribute("rutas", rutasExistentes);

       // request.getRequestDispatcher("ruta.jsp").forward(request, response);
       request.getRequestDispatcher("confirmareserva.jsp").forward(request, response);

       // processRequest(request, response); */
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
