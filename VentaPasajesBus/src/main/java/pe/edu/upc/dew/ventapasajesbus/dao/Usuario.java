package pe.edu.upc.dew.ventapasajesbus.dao;
// Generated 05/12/2010 12:44:53 AM by Hibernate Tools 3.2.1.GA



/**
 * Usuario generated by hbm2java
 */
public class Usuario  implements java.io.Serializable {


     private String noUsername;
     private Empresatransporte empresatransporte;
     private String noPassword;
     private String noRol;

    public Usuario() {
    }

    public Usuario(String noUsername, Empresatransporte empresatransporte, String noPassword, String noRol) {
       this.noUsername = noUsername;
       this.empresatransporte = empresatransporte;
       this.noPassword = noPassword;
       this.noRol = noRol;
    }
   
    public String getNoUsername() {
        return this.noUsername;
    }
    
    public void setNoUsername(String noUsername) {
        this.noUsername = noUsername;
    }
    public Empresatransporte getEmpresatransporte() {
        return this.empresatransporte;
    }
    
    public void setEmpresatransporte(Empresatransporte empresatransporte) {
        this.empresatransporte = empresatransporte;
    }
    public String getNoPassword() {
        return this.noPassword;
    }
    
    public void setNoPassword(String noPassword) {
        this.noPassword = noPassword;
    }
    public String getNoRol() {
        return this.noRol;
    }
    
    public void setNoRol(String noRol) {
        this.noRol = noRol;
    }




}


