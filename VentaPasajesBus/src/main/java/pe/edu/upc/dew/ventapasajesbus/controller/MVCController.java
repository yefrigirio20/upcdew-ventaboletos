package pe.edu.upc.dew.ventapasajesbus.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import pe.edu.upc.dew.ventapasajesbus.dao.Ruta;
import pe.edu.upc.dew.ventapasajesbus.service.Transporte;
import pe.edu.upc.dew.ventapasajesbus.service.TransporteImpl;

public class MVCController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res) throws Exception {
        HttpSession session = req.getSession();

        List<Ruta> rutas;
        Transporte emp = new TransporteImpl();

        rutas = emp.getRutas();

        session.setAttribute("rutas", rutas);
        
        return new ModelAndView("reserva");
    }

}
