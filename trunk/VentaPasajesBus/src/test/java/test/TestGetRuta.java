package test;

import java.util.List;
import java.util.Set;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

public class TestGetRuta {
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
    public void seleccionarRutaPorEmpresa() {
        List<Ruta> rutas = session.createQuery("from Ruta where Co_EmpresaTransporte=:Co_EmpresaTransporte")
                .setInteger("Co_EmpresaTransporte", 1).list();
        int numrutas = rutas.size();
        Assert.assertEquals(2, numrutas);
        //Assert.assertNotNull(reservas);
    }
    @Test
    public void seleccionarReservasPorRutaPorEmpresa() {
        List<Ruta> rutas = session.createQuery("from Ruta where Co_EmpresaTransporte=:Co_EmpresaTransporte")
                .setInteger("Co_EmpresaTransporte", 1).list();
        Set reservas = rutas.get(0).getReservas();
        int numreservas = reservas.size();
        Assert.assertEquals(1, numreservas);
        //Assert.assertNull(reservas);
    }
    @Test
    public void seleccionarAsientosDisponiblesPorReservasPorRutaPorEmpresa() {
        List<Ruta> rutas = session.createQuery("from Ruta where Co_EmpresaTransporte=:Co_EmpresaTransporte")
                .setInteger("Co_EmpresaTransporte", 1).list();
        Set reservas = rutas.get(0).getReservas();
        int numreservas = reservas.size();
        Assert.assertEquals(1, numreservas);
        //Assert.assertNull(reservas);
    }

}
