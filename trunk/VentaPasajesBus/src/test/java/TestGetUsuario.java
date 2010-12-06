
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import pe.edu.upc.dew.ventapasajesbus.dao.Usuario;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Juan Carlos
 */
public class TestGetUsuario {
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
    public void seleccionarUsuario(){
        Usuario usuario = (Usuario) session.get(Usuario.class, "transpor");
        
        Assert.assertNull(usuario);
        
    }

}
