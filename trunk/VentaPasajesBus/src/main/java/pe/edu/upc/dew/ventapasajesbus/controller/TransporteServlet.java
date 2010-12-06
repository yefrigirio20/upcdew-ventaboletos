/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.service.Transporte;
import pe.edu.upc.dew.ventapasajesbus.service.TransporteImpl;

/**
 *
 * @author u814354
 */
public class TransporteServlet extends HttpServlet {
    List<Ruta> rutas;
    String mensaje;
    Ruta ruta;
    Transporte transporte;

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

        HttpSession session = request.getSession();
        if(request.getSession().getAttribute("rutas") == null){
            rutas = new ArrayList<Ruta>();
            mensaje = "nulo";
        } else{
            rutas=(List<Ruta>) session.getAttribute("rutas");
            mensaje = "con datos "+rutas.size();
        }

        // Creamos el transporte
        transporte = new TransporteImpl();
        transporte.setRuta(empresa, origen, destino,
                fechasalida, horasalida, fechallegada, horallegada, tarifa, bus);
        //obtenemos la ruta
        ruta = new Ruta();
        ruta = transporte.getRuta();
        rutas.add(ruta);

       //Almacena en sesion
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
