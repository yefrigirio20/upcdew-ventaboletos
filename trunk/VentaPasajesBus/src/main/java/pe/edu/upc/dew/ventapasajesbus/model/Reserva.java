package pe.edu.upc.dew.ventapasajesbus.model;

public class Reserva {
    private Integer ticket;
    private EmpresaTransporte empresaTransporte;
    private Cliente cliente;
    private Ruta ruta;
    private Integer asiento;
    private Boolean pagado;

    public Integer getAsiento() {
        return asiento;
    }

    public void setAsiento(Integer asiento) {
        this.asiento = asiento;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public EmpresaTransporte getEmpresaTransporte() {
        return empresaTransporte;
    }

    public void setEmpresaTransporte(EmpresaTransporte empresaTransporte) {
        this.empresaTransporte = empresaTransporte;
    }

    public Boolean getPagado() {
        return pagado;
    }

    public void setPagado(Boolean pagado) {
        this.pagado = pagado;
    }

    public Ruta getRuta() {
        return ruta;
    }

    public void setRuta(Ruta ruta) {
        this.ruta = ruta;
    }

    public Integer getTicket() {
        return ticket;
    }

    public void setTicket(Integer ticket) {
        this.ticket = ticket;
    }


}
