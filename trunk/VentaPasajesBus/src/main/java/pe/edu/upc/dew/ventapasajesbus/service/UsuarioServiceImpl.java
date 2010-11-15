/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.service;

import java.util.ArrayList;
import javax.servlet.ServletContext;
import pe.edu.upc.dew.ventapasajesbus.model.Usuario;

/**
 *
 * @author u814830
 */
public class UsuarioServiceImpl implements UsuarioService{

    public Usuario login(String username, String password) {


        Usuario usuario = new Usuario();
        usuario.setUsername(username);
        usuario.setPassword(password);

        if(username.equals("ejecutiva")){
            usuario.setRol("E");
        }else if(username.equals("transporte")){
            usuario.setRol("T");
        }


        /*
        for(Usuario user: usuarios){
            if(user.getUsername().equals(username) && user.getPassword().equals(password)){
                //System.out.println("usuario correcto");
                return usuario;
            }
        }
        //System.out.println("usuario incorrecto");

       /*
        usuario.getRoles().add(new Rol("admin","Rol administrador"));
        usuario.getRoles().add(new Rol("operador","Rol operador"));
        usuario.getRoles().add(new Rol("supervisor", "Rol supervisor")); */
        return usuario;
    }

}
