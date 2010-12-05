package pe.edu.upc.dew.ventapasajesbus.dao;
// Generated 04/12/2010 07:30:12 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Bus generated by hbm2java
 */
public class Bus  implements java.io.Serializable {


     private String coPlaca;
     private int qtCapacidad;
     private Set empresatransportes = new HashSet(0);
     private Set rutas = new HashSet(0);

    public Bus() {
    }

	
    public Bus(String coPlaca, int qtCapacidad) {
        this.coPlaca = coPlaca;
        this.qtCapacidad = qtCapacidad;
    }
    public Bus(String coPlaca, int qtCapacidad, Set empresatransportes, Set rutas) {
       this.coPlaca = coPlaca;
       this.qtCapacidad = qtCapacidad;
       this.empresatransportes = empresatransportes;
       this.rutas = rutas;
    }
   
    public String getCoPlaca() {
        return this.coPlaca;
    }
    
    public void setCoPlaca(String coPlaca) {
        this.coPlaca = coPlaca;
    }
    public int getQtCapacidad() {
        return this.qtCapacidad;
    }
    
    public void setQtCapacidad(int qtCapacidad) {
        this.qtCapacidad = qtCapacidad;
    }
    public Set getEmpresatransportes() {
        return this.empresatransportes;
    }
    
    public void setEmpresatransportes(Set empresatransportes) {
        this.empresatransportes = empresatransportes;
    }
    public Set getRutas() {
        return this.rutas;
    }
    
    public void setRutas(Set rutas) {
        this.rutas = rutas;
    }




}


