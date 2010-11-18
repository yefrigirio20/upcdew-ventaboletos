package pe.edu.upc.dew.ventapasajesbus.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import pe.edu.upc.dew.ventapasajesbus.controller.TransporteServlet;
import pe.edu.upc.dew.ventapasajesbus.model.Bus;
import pe.edu.upc.dew.ventapasajesbus.model.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.model.EmpresaTransporte;
import pe.edu.upc.dew.ventapasajesbus.model.Ruta;

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
                String horallegada, String tarifa, String bus) {
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

    }

    public Ruta getRuta() {
        return ruta;
    }

}
