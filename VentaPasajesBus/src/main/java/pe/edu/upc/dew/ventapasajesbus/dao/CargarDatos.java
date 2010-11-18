package pe.edu.upc.dew.ventapasajesbus.dao;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import pe.edu.upc.dew.ventapasajesbus.model.EmpresaTransporte;
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

        //
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

        // Asocia una empresa de transporte al usuario
        user2.setEmpresaTransporte(empresaTransporte1);
        user1.setEmpresaTransporte(empresaTransporte1);

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
