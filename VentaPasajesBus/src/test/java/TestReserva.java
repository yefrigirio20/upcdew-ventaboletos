import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import pe.edu.upc.dew.ventapasajesbus.dao.Bus;
import pe.edu.upc.dew.ventapasajesbus.dao.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.dao.Cliente;
import pe.edu.upc.dew.ventapasajesbus.dao.Empresatransporte;
import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;


public class TestReserva {

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

        Cliente cliente = (Cliente) session.get(Cliente.class, "cl0004");
        Ruta ruta = (Ruta) session.get(Ruta.class, 3);
        
        Reserva reserva = new Reserva();
        reserva.setCliente(cliente);
        reserva.setEmpresatransporte(empresaTransporte);
        reserva.setFlPagado(false);
        reserva.setNuAsiento(10);
        reserva.setRuta(ruta);

        Transaction tx = session.beginTransaction();
        session.save(reserva);
        tx.commit();
    }

}
