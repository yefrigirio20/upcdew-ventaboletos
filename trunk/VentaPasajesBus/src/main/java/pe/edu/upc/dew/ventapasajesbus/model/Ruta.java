package pe.edu.upc.dew.ventapasajesbus.model;

import java.util.ArrayList;
import java.util.Date;

public class Ruta {
    private Integer idRuta;
    private EmpresaTransporte empresaTransporte;
    private String nombre;
    private Bus bus;
    private ArrayList<Asiento> asientos;
    private Ciudad ciudadOrigen;
    private Ciudad ciudadDestino;
    private Date fechaHoraSalida;
    private Date fechaHoraLlegada;
    private Double tarifa;
}
