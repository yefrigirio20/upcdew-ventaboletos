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
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upc.dew.ventapasajesbus.model.Bus;
import pe.edu.upc.dew.ventapasajesbus.model.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.model.EmpresaTransporte;
import pe.edu.upc.dew.ventapasajesbus.model.Ruta;

/**
 *
 * @author u814354
 */
public class TransporteServlet extends HttpServlet {
    List<Ruta> rutas;
    String mensaje;
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TransporteServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TransporteServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
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
        // Obtenemos los parámetros enviados en la pantalla de ruta
        String empresa = request.getParameter("empresa");
        String origen = request.getParameter("origen");
        String destino = request.getParameter("destino");
        String fechasalida = request.getParameter("fechasalida");
        String horasalida = request.getParameter("horasalida");
        String fechallegada = request.getParameter("fechallegada");
        String horallegada = request.getParameter("horallegada");
        String tarifa = request.getParameter("tarifa");
        String bus = request.getParameter("bus");

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

        // Añadimos una nueva ruta
        Ruta ruta = new Ruta();

        // Buscamos la empresa de transporte
        for (int i=0; i<empresasTransporte.size(); i++) {
            if (empresasTransporte.get(i).getNombre().equals(empresa)) {
                ruta.setEmpresaTransporte(empresasTransporte.get(i));
            }
        }

        // Buscamos la ciudad origen
        for (int i=0; i<ciudades.size(); i++) {
            if (ciudades.get(i).getNombre().equals(origen)) {
                ruta.setCiudadOrigen(ciudades.get(i));
                
            }
        }

        // Buscamos la ciudad destino
        for (int i=0; i<ciudades.size(); i++) {
            if (ciudades.get(i).getNombre().equals(destino)) {
                ruta.setCiudadDestino(ciudades.get(i));

            }
        }

        // Buscamos el bus elegido
        for (int i=0; i<buses.size(); i++) {
            if (buses.get(i).getPlaca().equals(bus)) {
                ruta.setBus(buses.get(i));

            }
        }

        // Grabamos la fecha y hora origen
        SimpleDateFormat df = new SimpleDateFormat ("dd/mm/yyyy hh:mm");
        Date fecha1;
        try {
            fecha1 = df.parse(fechasalida);
            ruta.setFechaHoraSalida(fecha1);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Grabamos la fecha y hora destino
        Date fecha2;
        try {
            fecha2 = df.parse(fechallegada);
            ruta.setFechaHoraLlegada(fecha2);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Grabamos la tarifa
        ruta.setTarifa(Double.parseDouble(tarifa));

        HttpSession session = request.getSession();
        if(request.getSession().getAttribute("rutas") == null){
            rutas = new ArrayList<Ruta>();
            mensaje = "nulo";
        } else{
            rutas=(List<Ruta>) session.getAttribute("rutas");
            mensaje = "con datos "+rutas.size();
        }

        // Agregamos a la lista de usuarios cada usuario creado

        rutas.add(ruta);

       //Pintando la grilla
     
       session.setAttribute("rutas", rutas);
       session.setAttribute("mensaje", mensaje);
       
       

       request.getRequestDispatcher("ruta.jsp").forward(request, response);

   //     processRequest(request, response);
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
