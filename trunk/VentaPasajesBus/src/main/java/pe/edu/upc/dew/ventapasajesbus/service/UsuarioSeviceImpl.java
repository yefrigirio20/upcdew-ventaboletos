/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.service;

import pe.edu.upc.dew.ventapasajesbus.model.Usuario;

/**
 *
 * @author u814830
 */
public class UsuarioSeviceImpl implements UsuarioService{

    public Usuario login(String username, String password) {


        Usuario usuario = new Usuario();
        usuario.setUsername(username);
        usuario.setPassword(password);
        if(username.equals("transportista")){
            usuario.setRol("T");
        }else if(username.equals("ejecutiva")){
            usuario.setRol("E");
        }

       /*
        usuario.getRoles().add(new Rol("admin","Rol administrador"));
        usuario.getRoles().add(new Rol("operador","Rol operador"));
        usuario.getRoles().add(new Rol("supervisor", "Rol supervisor")); */
        return usuario;
    }

}
