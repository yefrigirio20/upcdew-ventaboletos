/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.model;

/**
 *
 * @author u814830
 */
public class Usuario {
    private String username;
    private String password;
    private String rol;
    private EmpresaTransporte empresaTransporte;

    public EmpresaTransporte getEmpresaTransporte() {
        return empresaTransporte;
    }

    public void setEmpresaTransporte(EmpresaTransporte empresaTransporte) {
        this.empresaTransporte = empresaTransporte;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
