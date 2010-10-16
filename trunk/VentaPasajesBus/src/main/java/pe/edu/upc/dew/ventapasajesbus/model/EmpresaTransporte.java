package pe.edu.upc.dew.ventapasajesbus.model;

import java.util.ArrayList;

public class EmpresaTransporte {
    private Integer idEmpresaTransporte;
    private String nombre;
    private ArrayList<Bus> buses;

    public ArrayList<Bus> getBuses() {
        return buses;
    }

    public void setBuses(ArrayList<Bus> buses) {
        this.buses = buses;
    }

    public Integer getIdEmpresaTransporte() {
        return idEmpresaTransporte;
    }

    public void setIdEmpresaTransporte(Integer idEmpresaTransporte) {
        this.idEmpresaTransporte = idEmpresaTransporte;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


}
