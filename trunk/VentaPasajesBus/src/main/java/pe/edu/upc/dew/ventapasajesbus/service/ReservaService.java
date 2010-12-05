package pe.edu.upc.dew.ventapasajesbus.service;

import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;

public interface ReservaService {

    Reserva getReserva();

    void setReserva(Ruta ruta, String asiento, String nombre, String dni, String telefono, String direccion);

}
