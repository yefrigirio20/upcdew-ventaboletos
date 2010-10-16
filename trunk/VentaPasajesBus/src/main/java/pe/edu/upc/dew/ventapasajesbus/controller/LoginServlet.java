/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upc.dew.ventapasajesbus.model.Usuario;


/**
 *
 * @author u814354
 */
public class LoginServlet extends HttpServlet{
    @Override
    protected void  doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException {
        // Añadimos usuarios nuevos
        Usuario user1 = new Usuario();
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
        usuarios.add(user2);

        // Obtenemos los parámetros enviados en la pantalla de login
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        for (int i=0; i<usuarios.size(); i++) {
            if (usuarios.get(i).getUsername().equals(username)) {
                if (usuarios.get(i).getRol().equals("E")) {
                    req.getRequestDispatcher("reserva.jsp").forward(req, resp);
                } else {
                    req.getRequestDispatcher("ruta.jsp").forward(req, resp);
                }
            }
        }

    }
}