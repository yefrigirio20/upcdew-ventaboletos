package pe.edu.upc.dew.ventapasajesbus.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import pe.edu.upc.dew.ventapasajesbus.dao.Cliente;
import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

public class ReservaImpl implements ReservaService {
    private Cliente cliente;
    private Ruta ruta;
    private Reserva reserva;

    public void setReserva(Ruta ruta, String asiento, String nombre, String dni, String telefono, String direccion){

        Session session;
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();

        cliente = (Cliente) session.get(Cliente.class, dni);
        if (cliente == null) {
            cliente.setCoDni(dni);
            cliente.setNoCliente(nombre);
            cliente.setNoDireccion(direccion);
            cliente.setNoEmail(nombre);
            cliente.setNuTelefono(telefono);
            session.save(cliente);
        }

        reserva = new Reserva();
        reserva.setCliente(cliente);
        reserva.setEmpresatransporte(ruta.getEmpresatransporte());
        reserva.setRuta(ruta);
        reserva.setFlPagado(false);
        reserva.setNuAsiento(Integer.parseInt(asiento));

        // Reduce la capacidad del bus asociado a la ruta elegida
        int c = reserva.getRuta().getQtCapacidadDisp();
        if (c > 0) {
            c = c - 1;
        }
        reserva.getRuta().setQtCapacidadDisp(c);
        session.save(reserva);
        session.close();


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


}
