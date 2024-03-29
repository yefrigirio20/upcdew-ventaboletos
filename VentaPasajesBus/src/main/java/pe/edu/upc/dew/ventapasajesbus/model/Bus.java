package pe.edu.upc.dew.ventapasajesbus.model;

public class Bus {
    private String placa;
    private EmpresaTransporte empresaTransporte;
    private Integer capacidad;

    public Bus() {
    }

    public Bus(String placa, EmpresaTransporte empresaTransporte, Integer capacidad) {
        this.placa = placa;
        this.empresaTransporte = empresaTransporte;
        this.capacidad = capacidad;
    }

    public Integer getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(Integer capacidad) {
        this.capacidad = capacidad;
    }

    public EmpresaTransporte getEmpresaTransporte() {
        return empresaTransporte;
    }

    public void setEmpresaTransporte(EmpresaTransporte empresaTransporte) {
        this.empresaTransporte = empresaTransporte;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

}
