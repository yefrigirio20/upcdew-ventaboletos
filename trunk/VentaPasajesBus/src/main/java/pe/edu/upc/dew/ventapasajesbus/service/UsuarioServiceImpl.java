/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.dew.ventapasajesbus.service;

import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import pe.edu.upc.dew.ventapasajesbus.model.EmpresaTransporte;
import pe.edu.upc.dew.ventapasajesbus.dao.Usuario;
import pe.edu.upc.dew.ventapasajesbus.utils.NewHibernateUtil;

/**
 *
 * @author u814830
 */
public class UsuarioServiceImpl implements UsuarioService{

    public Usuario login(String username, String password) {

        SessionFactory sessionFactory = NewHibernateUtil.getSessionFactory();
        Session session = sessionFactory.openSession();

        Usuario usuario = (Usuario) session.get(Usuario.class, username);

        System.out.println("creando usuario");
        if(usuario == null){
            System.out.println("usuario es nulo");
            return null;
        }

        if(usuario.getNoPassword().equals(password)){
            return usuario;
        }else{
            return null;
        }

        /*
        usuario.setUsername(username);
        usuario.setPassword(password);

        if(username.equals("ejecutiva")){
            usuario.setRol("E");
        }else if(username.equals("transporte")){
            usuario.setRol("T");
        }

        // Añadimos empresas de transporte
        EmpresaTransporte empresaTransporte1 = new EmpresaTransporte();
        empresaTransporte1.setNombre("Turismo Barranca S.A.");

        EmpresaTransporte empresaTransporte2 = new EmpresaTransporte();
        empresaTransporte2.setNombre("Sagal S.A.C");

        EmpresaTransporte empresaTransporte3 = new EmpresaTransporte();
        empresaTransporte3.setNombre("Rapido y Furioso EIRL.");

        // Añadimos a la lista de Empresas de transporte cada empresa de transporte
        ArrayList<EmpresaTransporte> empresasTransporte = new ArrayList<EmpresaTransporte>();
        empresasTransporte.add(empresaTransporte1);
        empresasTransporte.add(empresaTransporte2);
        empresasTransporte.add(empresaTransporte3);

        // Asocia una empresa de transporte al usuario
        usuario.setEmpresaTransporte(empresaTransporte1);


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
        usuario.getRoles().add(new Rol("supervisor", "Rol supervisor")); 
        return usuario;*/
    }

}
