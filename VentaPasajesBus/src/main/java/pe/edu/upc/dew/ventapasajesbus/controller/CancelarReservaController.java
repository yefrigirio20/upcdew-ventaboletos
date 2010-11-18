package pe.edu.upc.dew.ventapasajesbus.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

public class CancelarReservaController extends AbstractController{

    @Override
    protected ModelAndView handleRequestInternal(HttpServletRequest req, HttpServletResponse res) throws Exception {
        HttpSession session = req.getSession();

        return new ModelAndView("cancelareserva");
    }

}
