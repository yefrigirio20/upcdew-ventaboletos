/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.dao.Usuario;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaImpl;
import pe.edu.upc.dew.ventapasajesbus.service.ReservaService;

/**
 *
 * @author jdamian
 */
public class ConsultaReservaServlet extends HttpServlet {
    List<Reserva> filtroReservas;
    ReservaService rs;
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        /*HttpSession session = request.getSession();
        String datos[]= {"Empresa1","Lima","Chiclayo","50.00","29 Octubre","30 Octubre","44","23"};
        session.setAttribute("datos", datos);


        request.getRequestDispatcher("conreserva.jsp").forward(request, response);
    */
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
        processRequest(request, response);
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
        // Obtiene sesión
        HttpSession session = request.getSession();

        if (request.getSession().getAttribute("filtroReservas") == null) {
            filtroReservas = new ArrayList<Reserva>();
        } else {
            filtroReservas = (List<Reserva>) session.getAttribute("filtroReservas");
        }

        SimpleDateFormat df = new SimpleDateFormat ("yyyy-mm-dd");
        Date fecha1;
        try {
            fecha1 = df.parse(session.getAttribute("fechasalida").toString());
        } catch (ParseException ex) {
        }

        df = new SimpleDateFormat ("yyyy-mm-dd");
        Date fecha2;
        try {
            fecha2 = df.parse(session.getAttribute("fechallegada").toString());
        } catch (ParseException ex) {
        }

        Usuario usuario = (Usuario) session.getAttribute("usuario");
        rs = new ReservaImpl();
        filtroReservas = rs.getReservasByEmpresaDeTransporte(
                usuario.getEmpresatransporte().getCoEmpresaTransporte(),
                fecha1, fecha2);

        //Almacena en sesión
        session.setAttribute("filtroReservas", filtroReservas);

/*
        // Añadimos empresas de transporte
        EmpresaTransporte empresaTransporte1 = new EmpresaTransporte();
        empresaTransporte1.setNombre("Buses Unidos");

        EmpresaTransporte empresaTransporte2 = new EmpresaTransporte();
        empresaTransporte2.setNombre("Mi Bus");

        EmpresaTransporte empresaTransporte3 = new EmpresaTransporte();
        empresaTransporte3.setNombre("Transporte Veloz");

        // Añadimos a la lista de Empresas de transporte cada empresa de transporte
        ArrayList<EmpresaTransporte> empresasTransporte = new ArrayList<EmpresaTransporte>();
        empresasTransporte.add(empresaTransporte1);
        empresasTransporte.add(empresaTransporte2);
        empresasTransporte.add(empresaTransporte3);

        // Añadimos buses nuevos
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

        // Añadimos ciudades nuevas
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

        // Creamos el array de rutas que serán obtenidas en la consulta
        ArrayList<Ruta> rutasFiltro = new ArrayList<Ruta>();

        // Obtenemos los parámetros enviados en la pantalla de ruta
        String desde = request.getParameter("desde");
        String hasta = request.getParameter("hasta");
        String empresaTransporte = request.getParameter("empresaTransporte");

        // Obtenemos las fechas a consultar pero antes inicializa las variables
        // fecha1 y fecha2 con la hora actual (temporalmente)
        Calendar cal = Calendar.getInstance();
        fecha1 = cal.getTime();
        fecha2 = cal.getTime();

        try {
            fecha1 = df.parse(desde);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            fecha2 = df.parse(hasta);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Buscamos las rutas coincidentes según la fecha desde y hasta consultadas
        for (int i=0; i<rutasExistentes.size(); i++) {
            if ((rutasExistentes.get(i).getFechaHoraSalida().after(fecha1)) && (rutasExistentes.get(i).getFechaHoraLlegada().before(fecha2))) {
                // Agregamos la ruta si coincide en las fechas desde y hasta
                rutasFiltro.add(rutasExistentes.get(i));
            }
        }

       // Enviamos el atributo a la sesión
       HttpSession session = request.getSession();
       session.setAttribute("rutasFiltro", rutasFiltro);
       session.setAttribute("desde_", desde);
*/




       // request.getRequestDispatcher("ruta.jsp").forward(request, response);
       request.getRequestDispatcher("conreserva.jsp").forward(request, response);

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
