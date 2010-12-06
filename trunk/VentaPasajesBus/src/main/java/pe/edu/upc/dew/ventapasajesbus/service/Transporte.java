package pe.edu.upc.dew.ventapasajesbus.service;

import java.util.List;
import pe.edu.upc.dew.ventapasajesbus.dao.Bus;
import pe.edu.upc.dew.ventapasajesbus.dao.Ciudad;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;

public interface Transporte {

    public void setRuta(String empresa, String origen, String destino, String fechasalida, String horasalida, String fechallegada,
                String horallegada, String tarifa, String bus);
    public Ruta getRuta();
    public List<Ruta> getRutas();
    public List<Ruta> getRutasByEmpresaDeTransporte(Integer emp);
    public String getMensaje();
    public List<Ciudad> getCiudad();
    public List<Bus> getBus(Integer emp);


}
