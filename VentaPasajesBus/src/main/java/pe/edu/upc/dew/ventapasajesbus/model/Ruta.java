package pe.edu.upc.dew.ventapasajesbus.model;

import java.util.Date;
import java.util.HashMap;

public class Ruta {
    private Integer idRuta;
    private String nombre;
    private HashMap<Integer,Bus> buses;
    private String origen;
    private String destino;
    private Date fechaInicio;
    private Date fechaFin;
    private Double tarifa;

}
