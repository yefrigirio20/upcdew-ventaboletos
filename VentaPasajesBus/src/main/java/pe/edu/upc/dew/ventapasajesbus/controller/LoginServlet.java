/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upc.dew.ventapasajesbus.model.Usuario;
import pe.edu.upc.dew.ventapasajesbus.service.UsuarioService;
import pe.edu.upc.dew.ventapasajesbus.service.UsuarioServiceImpl;


/**
 *
 * @author u814354
 */
public class LoginServlet extends HttpServlet{
    @Override
    protected void  doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        // A�adimos usuarios nuevos
        /*Usuario user1 = new Usuario();
        user1.setUsername("ejecutiva");
        user1.setPassword("111");
        user1.setRol("E");
        
        Usuario user2 = new Usuario();
        user2.setUsername("transporte");
        user2.setPassword("111");
        user2.setRol("T");
        
        // Agregamos a la lista de usuarios cada usuario creado
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        usuarios.add(user1);
        usuarios.add(user2);*/

        // Obtenemos los par�metros enviados en la pantalla de login
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // Llamar al model
        UsuarioService usuarioService = new UsuarioServiceImpl();
        Usuario usuario = usuarioService.login(username, password);
        if(usuario == null){
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }

        if(usuario.getRol().equals("E")){
            req.getRequestDispatcher("reserva.jsp").forward(req, resp);
        }else if(usuario.getRol().equals("T")){
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