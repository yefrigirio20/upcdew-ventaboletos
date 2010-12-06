/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.controller;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upc.dew.ventapasajesbus.model.EmpresaTransporte;
import pe.edu.upc.dew.ventapasajesbus.dao.Usuario;
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

        System.out.println("logeando");
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