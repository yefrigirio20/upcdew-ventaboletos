import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import pe.edu.upc.dew.ventapasajesbus.dao.Bus;
import pe.edu.upc.dew.ventapasajesbus.dao.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.dao.Empresatransporte;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

public class TestRuta {

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
    public void testInsertar() {
        Empresatransporte empresaTransporte =
                (Empresatransporte) session.createQuery("from Empresatransporte where No_EmpresaTransporte=:No_EmpresaTransporte")
                    .setString("No_EmpresaTransporte", "Speedy S.A").uniqueResult();

        Ciudad ciudadOrigen =
                (Ciudad) session.createQuery("from Ciudad where No_Ciudad=:No_Ciudad")
                    .setString("No_Ciudad", "Barranca").uniqueResult();

        Ciudad ciudadDestino =
                (Ciudad) session.createQuery("from Ciudad where No_Ciudad=:No_Ciudad")
                    .setString("No_Ciudad", "Lima").uniqueResult();

        Bus bus = (Bus) session.get(Bus.class, "WMX-0003");

        Assert.assertNotNull(empresaTransporte);
        Assert.assertNotNull(ciudadOrigen);
        Assert.assertNotNull(ciudadDestino);
        Assert.assertNotNull(bus);

        Ruta ruta = new Ruta();
        ruta.setCiudadByNoCiudadOrigen(ciudadOrigen);
        ruta.setCiudadByNoCiudadDestino(ciudadDestino);
        ruta.setEmpresatransporte(empresaTransporte);

        SimpleDateFormat df = new SimpleDateFormat ("dd/mm/yyyy hh:mm");
        Date fecha;
        try {
            fecha = df.parse("16/10/2010 02:00");
            ruta.setFeHoraSalida(fecha);
        } catch (ParseException ex) {
        }

        df = new SimpleDateFormat ("dd/mm/yyyy hh:mm");
        try {
            fecha = df.parse("16/10/2010 05:00");
            ruta.setFeHoraLlegada(fecha);
        } catch (ParseException ex) {
        }

        ruta.setQtCapacidadTotal(40);
        ruta.setQtCapacidadDisp(40);
        ruta.setSsTarifa(80.50);
        ruta.setBus(bus);

        Transaction tx = session.beginTransaction();
        session.save(ruta);
        //session.delete(ruta);
        tx.commit();

    }

}
