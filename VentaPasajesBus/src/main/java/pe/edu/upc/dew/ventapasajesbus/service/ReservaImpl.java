package pe.edu.upc.dew.ventapasajesbus.service;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import pe.edu.upc.dew.ventapasajesbus.dao.Cliente;
import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

public class ReservaImpl implements ReservaService {
    private Cliente cliente;
    private Reserva reserva;
    private List<Reserva> reservas;
    Session session;

    public void setReserva(Ruta ruta, String asiento, String nombre, String dni, String telefono, String direccion){

        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();
        Transaction tx;

        cliente = (Cliente) session.get(Cliente.class, dni);
        if (cliente == null) {
            cliente = new Cliente();
            cliente.setCoDni(dni);
            cliente.setEmpresatransporte(ruta.getEmpresatransporte());
            cliente.setNoCliente(nombre);
            cliente.setNoDireccion(direccion);
            cliente.setNoEmail(nombre);
            cliente.setNuTelefono(telefono);
            tx = session.beginTransaction();
            session.save(cliente);
            tx.commit();
        }

        reserva = new Reserva();
        reserva.setCliente(cliente);
        reserva.setEmpresatransporte(ruta.getEmpresatransporte());
        reserva.setRuta(ruta);
        reserva.setFlPagado(false);
        reserva.setNuAsiento(Integer.parseInt(asiento));

        // Reduce la capacidad del bus asociado a la ruta elegida
/*      int c = reserva.getRuta().getQtCapacidadDisp();
        if (c > 0) {
            c = c - 1;
        }

        //reserva.getRuta().setQtCapacidadDisp(c); */
        tx = session.beginTransaction();
        session.save(reserva);
        tx.commit();

        //session.close();


/*        cliente = new Cliente();
            cliente.setNombre(nombre);
            cliente.setIdCliente(dni);
            cliente.setTelefono(telefono);
            cliente.setDireccion(direccion);

            reserva = new Reserva();
            reserva.setCliente(cliente);
            reserva.setEmpresaTransporte(ruta.getEmpresaTransporte());
            reserva.setRuta(ruta);
            reserva.setPagado(false);
            reserva.setTicket(1);
            reserva.setAsiento(Integer.parseInt(asiento));

            // Reduce la capacidad del bus asociado a la ruta elegida
            int c = reserva.getRuta().getCapacidadDisp();
            if (c > 0) {
                c = c - 1;
            }
            reserva.getRuta().setCapacidadDisp(c);
  */

    }
    public Reserva getReserva(){
        return reserva;
    }

    public List<Reserva> getReservas() {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();
        GregorianCalendar fecha = new GregorianCalendar();
        Date date = fecha.getTime();
        

        reservas = session.createQuery("from Reserva").list();
        /*reservas = session.createQuery("from Reserva where Ruta.feHoraSalida >=:feHoraSalida")
                .setDate("feHoraSalida", date).list();*/
        return reservas;
    }

    public List<Reserva> getReservasPorCancelar() {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();

        reservas = session.createQuery("from Reserva where flPagado=:pagado")
                .setBoolean("pagado", false).list();
        return reservas;
    }

    public Reserva cancelarReserva(Integer coTicket) {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();
        Transaction tx;

        reserva =
                (Reserva) session.createQuery("from Reserva where coTicket=:coTicket")
                    .setInteger("coTicket", coTicket).uniqueResult();
        tx = session.beginTransaction();
        reserva.setFlPagado(true);
        tx.commit();
        //session.close();
        return reserva;
    }

    public List<Reserva> getReservasByEmpresaDeTransporte(Integer emp, Date fechaSalida, Date fechaLlegada) {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();

        reservas = session.createQuery("from Reserva where Co_EmpresaTransporte=:Co_EmpresaTransporte")
                .setInteger("Co_EmpresaTransporte", emp).list();
        return reservas;
    }

    public Reserva getReservasPorIdReserva(Integer id) {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();

        Reserva r = (Reserva) session.get(Reserva.class, id);
        return r;
    }

    public Reserva eliminarReserva(Integer coTicket) {
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();
        Transaction tx;

        reserva =
                (Reserva) session.createQuery("from Reserva where coTicket=:coTicket")
                    .setInteger("coTicket", coTicket).uniqueResult();
        tx = session.beginTransaction();
        session.delete(reserva);
        tx.commit();
        //session.close();
        return reserva;
    }

}
