/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.controller;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upc.dew.ventapasajesbus.dao.Bus;
import pe.edu.upc.dew.ventapasajesbus.dao.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.dao.Usuario;
import pe.edu.upc.dew.ventapasajesbus.service.Transporte;
import pe.edu.upc.dew.ventapasajesbus.service.TransporteImpl;
import pe.edu.upc.dew.ventapasajesbus.service.UsuarioService;
import pe.edu.upc.dew.ventapasajesbus.service.UsuarioServiceImpl;


/**
 *
 * @author u814354
 */
public class LoginServlet extends HttpServlet{
    @Override
    protected void  doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        
        // Obtenemos los parámetros enviados en la pantalla de login
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // Llamar al model
        UsuarioService usuarioService = new UsuarioServiceImpl();
        Usuario usuario = usuarioService.login(username, password);
        
        if (usuario == null) {
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {

        HttpSession session = req.getSession();
        session.setAttribute("usuario", usuario);

        if(usuario.getNoRol().equals("Vendedor")){
            req.getRequestDispatcher("reservar.reserva").forward(req, resp);
        }else if(usuario.getNoRol().equals("Administrador")){
            Transporte transporte = new TransporteImpl();
            List<Ruta> rutas = transporte.
                    getRutasByEmpresaDeTransporte(usuario.getEmpresatransporte().getCoEmpresaTransporte());
            List<Ciudad> ciudades = transporte.getCiudad();
            List<Bus> buses = transporte.getBus(usuario.getEmpresatransporte().getCoEmpresaTransporte());

            session.setAttribute("rutasPorEmpresa", rutas);
            session.setAttribute("ciudadesPorEmpresa", ciudades);
            session.setAttribute("busesPorEmpresa", buses);
            req.getRequestDispatcher("ruta.jsp").forward(req, resp);
        }else{
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }

        /*for (int i=0; i<usuarios.size(); i++) {
            if (usuarios.get(i).getUsername().equals(username)) {
                 // Setear el model en el sesion
                HttpSession session = req.getSession();
                session.setAttribute("usuario", usuarios.get(i));
                if (usuarios.get(i).getRol().equals("E")) {
                    req.getRequestDispatcher("reserva.jsp").forward(req, resp);
                } else {
                    req.getRequestDispatcher("ruta.jsp").forward(req, resp);
                }
            }
        }*/
        }

    }
}