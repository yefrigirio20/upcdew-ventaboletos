package pe.edu.upc.dew.ventapasajesbus.service;

import pe.edu.upc.dew.ventapasajesbus.model.Cliente;
import pe.edu.upc.dew.ventapasajesbus.model.Reserva;
import pe.edu.upc.dew.ventapasajesbus.model.Ruta;

public class ReservaImpl implements ReservaService {
    private Cliente cliente;
    private Ruta ruta;
    private Reserva reserva;

    public void setReserva(Ruta ruta, String asiento, String nombre, String dni, String telefono, String direccion){
        cliente = new Cliente();
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
    }
    public Reserva getReserva(){
        return reserva;
    }


}
