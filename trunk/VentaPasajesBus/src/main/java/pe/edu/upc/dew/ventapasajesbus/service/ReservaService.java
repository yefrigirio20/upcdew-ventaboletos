package pe.edu.upc.dew.ventapasajesbus.service;

import pe.edu.upc.dew.ventapasajesbus.model.Reserva;
import pe.edu.upc.dew.ventapasajesbus.model.Ruta;

public interface ReservaService {

    Reserva getReserva();

    void setReserva(Ruta ruta, String asiento, String nombre, String dni, String telefono, String direccion);

}
