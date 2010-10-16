package pe.edu.upc.dew.ventapasajesbus.dao;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import pe.edu.upc.dew.ventapasajesbus.model.Usuario;

public final class CargarDatos implements ServletContextListener {

    ServletContext contexto;
    List<Usuario> usuarios;

    public void contextInitialized(ServletContextEvent sce) {
        contexto = sce.getServletContext();

        // Lista de usuarios
        usuarios = new ArrayList<Usuario>();

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
        usuarios.add(user1);
        usuarios.add(user2);

        contexto.setAttribute("test", "mensaje de prueba" + usuarios.size());
        contexto.setAttribute("usuarios", usuarios);
    }

    public void contextDestroyed(ServletContextEvent sce) {
        contexto = sce.getServletContext();
    }
}
