/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package test;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

/**
 *
 * @author jdamian
 */
public class TestGetAsientos {
    private Session session;

    @Before // Se ejecuta antes de ejecutar el Test
    public void inicializarHibernate() {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        this.session = sessionFactory.openSession();
    }

    @After // Se ejecuta después de ejecutar el Test
    public void finalizarHibernate() {
        this.session.close();
    }

    @Test
    public void consultaAsientosOcupadosPorRuta() {
        List<Ruta> rutas = session.createQuery("from Ruta").list();
        //Assert.assertEquals(1, rutas.size());
        Assert.assertNotNull(rutas);
    }


}