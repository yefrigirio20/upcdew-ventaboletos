package pe.edu.upc.dew.ventapasajesbus.service;

import java.util.List;
import pe.edu.upc.dew.ventapasajesbus.dao.Reserva;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;

public interface ReservaService {

    public Reserva getReserva();

    public void setReserva(Ruta ruta, String asiento, String nombre, String dni, String telefono, String direccion);

    public List<Reserva> getReservas();
    public List<Reserva> getReservasPorCancelar();

    public void cancelarReserva(Integer coTicket);

    public List<Reserva> getReservasByEmpresaDeTransporte(Integer emp);

}
