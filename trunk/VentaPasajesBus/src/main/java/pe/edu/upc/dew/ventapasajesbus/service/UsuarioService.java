/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.service;

import java.util.List;
import pe.edu.upc.dew.ventapasajesbus.dao.Usuario;

/**
 *
 * @author u814830
 */
public interface UsuarioService {

    public Usuario login(String usuario, String password);
}
