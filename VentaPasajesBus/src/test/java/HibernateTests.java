/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */



import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

/**
 *
 * @author u814830
 */
public class HibernateTests {

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
    public void testGetRuta() {
        Ruta ruta = (Ruta) session.get(Ruta.class, "1");
        Assert.assertEquals("1", ruta.getCoRuta());
    }

    @Test
    public void testGetRutas() {
        List<Ruta> rutas = session.createQuery("from Ruta").list();
        Assert.assertEquals(5, rutas.size());
    }

    /*@Test
    public void testGetUsuariosConWhere() {
        List<Usuario> usuarios =
                session.createQuery("from Usuario where username=:nombre")
                    .setString("nombre", "nico").list();
        Assert.assertEquals(1, usuarios.size());
    }

    @Test
    public void testSaveDeleteUsuario() {
        Usuario usuario = new Usuario("nuevo", "xxx");
        Transaction tx = session.beginTransaction();
        session.save(usuario);

        Usuario select = (Usuario) session.get(Usuario.class, usuario.getUsername());
        Assert.assertEquals(usuario.getUsername(), select.getUsername());

        session.delete(usuario);
        Usuario delete = (Usuario) session.get(Usuario.class, usuario.getUsername());
        Assert.assertNull(delete);
        tx.commit();
    }
*/



}
