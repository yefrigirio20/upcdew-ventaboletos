package pe.edu.upc.dew.ventapasajesbus.service;

import java.util.List;
import pe.edu.upc.dew.ventapasajesbus.model.Ruta;

public interface Transporte {

    public void setRuta(String empresa, String origen, String destino, String fechasalida, String horasalida, String fechallegada,
                String horallegada, String tarifa, String bus);
    public Ruta getRuta();
    public List<Ruta> getRutas();
    public String getMensaje();

}
