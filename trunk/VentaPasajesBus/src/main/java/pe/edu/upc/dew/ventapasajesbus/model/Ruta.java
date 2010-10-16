package pe.edu.upc.dew.ventapasajesbus.model;

import java.util.ArrayList;
import java.util.Date;

public class Ruta {
    private Integer idRuta;
    private EmpresaTransporte empresaTransporte;
    private Bus bus;
    private Ciudad ciudadOrigen;
    private Ciudad ciudadDestino;
    private Date fechaHoraSalida;
    private Date fechaHoraLlegada;
    private Double tarifa;

    public Bus getBus() {
        return bus;
    }

    public void setBus(Bus bus) {
        this.bus = bus;
    }

    public Ciudad getCiudadDestino() {
        return ciudadDestino;
    }

    public void setCiudadDestino(Ciudad ciudadDestino) {
        this.ciudadDestino = ciudadDestino;
    }

    public Ciudad getCiudadOrigen() {
        return ciudadOrigen;
    }

    public void setCiudadOrigen(Ciudad ciudadOrigen) {
        this.ciudadOrigen = ciudadOrigen;
    }

    public EmpresaTransporte getEmpresaTransporte() {
        return empresaTransporte;
    }

    public void setEmpresaTransporte(EmpresaTransporte empresaTransporte) {
        this.empresaTransporte = empresaTransporte;
    }

    public Date getFechaHoraLlegada() {
        return fechaHoraLlegada;
    }

    public void setFechaHoraLlegada(Date fechaHoraLlegada) {
        this.fechaHoraLlegada = fechaHoraLlegada;
    }

    public Date getFechaHoraSalida() {
        return fechaHoraSalida;
    }

    public void setFechaHoraSalida(Date fechaHoraSalida) {
        this.fechaHoraSalida = fechaHoraSalida;
    }

    public Integer getIdRuta() {
        return idRuta;
    }

    public void setIdRuta(Integer idRuta) {
        this.idRuta = idRuta;
    }

    public Double getTarifa() {
        return tarifa;
    }

    public void setTarifa(Double tarifa) {
        this.tarifa = tarifa;
    }



}
