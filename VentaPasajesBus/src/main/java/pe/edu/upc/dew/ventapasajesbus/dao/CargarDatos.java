package pe.edu.upc.dew.ventapasajesbus.dao;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public final class CargarDatos implements ServletContextListener {
    ServletContext contexto;


    public void contextInitialized(ServletContextEvent sce) {
        
    }

    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet.");
    }


}
