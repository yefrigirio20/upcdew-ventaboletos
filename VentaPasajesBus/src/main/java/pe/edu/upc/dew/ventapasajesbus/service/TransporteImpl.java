package pe.edu.upc.dew.ventapasajesbus.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import pe.edu.upc.dew.ventapasajesbus.controller.TransporteServlet;
import pe.edu.upc.dew.ventapasajesbus.dao.Bus;
import pe.edu.upc.dew.ventapasajesbus.dao.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.dao.Empresatransporte;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

public class TransporteImpl implements Transporte{

    List<Ruta> rutas;
    String mensaje;
    Ruta ruta;

    public List<Ruta> getRutas() {
        return rutas;
    }

    public String getMensaje() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void setRuta(String empresa, String origen, String destino, String fechasalida, String horasalida, String fechallegada,
                String horallegada, String tarifa, String placaBus) {

        Session session;
        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        session = sessionFactory.openSession();

/*        Empresatransporte empresaTransporte =
                (Empresatransporte) session.createQuery("from Empresatransporte").list().get(0);

        Ciudad ciudadOrigen =
                (Ciudad) session.createQuery("from Ciudad").list().get(0);

        Ciudad ciudadDestino =
                (Ciudad) session.createQuery("from Ciudad").list().get(0);
*/

        Empresatransporte empresaTransporte =
                (Empresatransporte) session.createQuery("from Empresatransporte where No_EmpresaTransporte=:No_EmpresaTransporte")
                    .setString("No_EmpresaTransporte", empresa).uniqueResult();

        Ciudad ciudadOrigen =
                (Ciudad) session.createQuery("from Ciudad where No_Ciudad=:No_Ciudad")
                    .setString("No_Ciudad", origen).uniqueResult();

        Ciudad ciudadDestino =
                (Ciudad) session.createQuery("from Ciudad where No_Ciudad=:No_Ciudad")
                    .setString("No_Ciudad", destino).uniqueResult();


        Bus bus = (Bus) session.get(Bus.class, placaBus);

        ruta = new Ruta();
        ruta.setCiudadByNoCiudadOrigen(ciudadOrigen);
        ruta.setCiudadByNoCiudadDestino(ciudadDestino);
        ruta.setEmpresatransporte(empresaTransporte);

        SimpleDateFormat df = new SimpleDateFormat ("dd/mm/yyyy hh:mm");
        Date fecha;
        try {
            fecha = df.parse(fechasalida);
            ruta.setFeHoraSalida(fecha);
        } catch (ParseException ex) {
        }

        df = new SimpleDateFormat ("dd/mm/yyyy hh:mm");
        try {
            fecha = df.parse(fechallegada);
            ruta.setFeHoraLlegada(fecha);
        } catch (ParseException ex) {
        }

        ruta.setQtCapacidadTotal(bus.getQtCapacidad());
        ruta.setQtCapacidadDisp(bus.getQtCapacidad());
        ruta.setSsTarifa(Double.parseDouble(tarifa));
        ruta.setBus(bus);

        Transaction tx = session.beginTransaction();
        session.save(ruta);
        tx.commit();


/*
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



        // Añadimos buses nuevos
        Bus bus1= new Bus();
        bus1.setPlaca("AAA-9898");
        Bus bus2= new Bus();
        bus2.setPlaca("BBB-6565");
        Bus bus3= new Bus();
        bus3.setPlaca("CCC-3232");
        Bus bus4= new Bus();
        bus4.setPlaca("KXT-1254");

        // Agregamos a la lista de buses cada bus creado
        ArrayList<Bus> buses = new ArrayList<Bus>();
        buses.add(bus1);
        buses.add(bus2);
        buses.add(bus3);
        buses.add(bus4);



        // Añadimos ciudades nuevas
        Ciudad ciudad = new Ciudad();
        ciudad.setNombre("Lima");

        Ciudad ciudad1= new Ciudad();
        ciudad1.setNombre("Cuzco");

        Ciudad ciudad2 = new Ciudad();
        ciudad2.setNombre("Arequipa");

        Ciudad ciudad3 = new Ciudad();
        ciudad3.setNombre("Trujillo");

        // Agregamos a la lista de ciudades cada ciudad creada
        ArrayList<Ciudad> ciudades = new ArrayList<Ciudad>();
        ciudades.add(ciudad);
        ciudades.add(ciudad1);
        ciudades.add(ciudad2);
        ciudades.add(ciudad3);

        // Añadimos una nueva ruta
        ruta = new Ruta();



        // Buscamos la empresa de transporte
        for (int i=0; i<empresasTransporte.size(); i++) {
            if (empresasTransporte.get(i).getNombre().equals(empresa)) {
                ruta.setEmpresaTransporte(empresasTransporte.get(i));
            }
        }

        // Buscamos la ciudad origen
        for (int i=0; i<ciudades.size(); i++) {
            if (ciudades.get(i).getNombre().equals(origen)) {
                ruta.setCiudadOrigen(ciudades.get(i));

            }
        }

        // Buscamos la ciudad destino
        for (int i=0; i<ciudades.size(); i++) {
            if (ciudades.get(i).getNombre().equals(destino)) {
                ruta.setCiudadDestino(ciudades.get(i));

            }
        }

        // Buscamos el bus elegido
        for (int i=0; i<buses.size(); i++) {
            if (buses.get(i).getPlaca().equals(bus)) {
                ruta.setBus(buses.get(i));

            }
        }

        // Grabamos la fecha y hora origen
        SimpleDateFormat df = new SimpleDateFormat ("dd/mm/yyyy hh:mm");
        Date fecha1;
        try {
            fecha1 = df.parse(fechasalida);
            ruta.setFechaHoraSalida(fecha1);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Grabamos la fecha y hora destino
        Date fecha2;
        try {
            fecha2 = df.parse(fechallegada);
            ruta.setFechaHoraLlegada(fecha2);
        } catch (ParseException ex) {
            Logger.getLogger(TransporteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Grabamos la tarifa
        ruta.setTarifa(Double.parseDouble(tarifa));

        // Agregamos la capacidad
        ruta.setCapacidadTotal(40);
        ruta.setCapacidadDisp(40);
*/


    }

    public Ruta getRuta() {
        return ruta;
    }

}
